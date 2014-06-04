/* ====================================================================
*
* Use of this software is controlled by the terms and conditions found
* in the license agreement under which this software has been supplied.

* Author: y00226912
* Date:    18.03.2013
*
* ==================================================================== */

#include <dlfcn.h>   /* For dynamic loading */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <pthread.h>

#include "OMX_Component.h"
#include "OMX_Core.h"
#include <dirent.h>

#ifdef ANDROID
#include<utils/Log.h>
#else
#define ALOGD printf  
#define ALOGE printf
#endif

#undef LOG_TAG
#define LOG_TAG "HIOMX_CORE"

#define DEBUG 1

#ifdef DEBUG
#define DEBUG_PRINT			          ALOGD
#else
#define DEBUG_PRINT
#endif

#define DEBUG_PRINT_ERROR	          ALOGE


#define DYNAMIC_LOAD
#define COUNTOF(x) (sizeof(x)/sizeof(x[0]))

/* macros */
#define MAX_ROLES				              5
#define MAX_TABLE_SIZE				       10
#define MAX_CONCURRENT_INSTANCES		1
#define MAXCOMP					              10
#define MAXNAMESIZE			         	130
#define EMPTY_STRING			       	"\0"

/* limit the number of max occuring instances of same component,
   tune this if you like */
typedef struct _ComponentTable {

	OMX_STRING name;
	OMX_U16 nRoles;
	OMX_STRING pRoleArray[MAX_ROLES];
	OMX_HANDLETYPE* pHandle[MAX_CONCURRENT_INSTANCES];
	OMX_S32 refCount;

}ComponentTable;


/******************************vars******************************/
static OMX_PTR pModules[MAXCOMP] = {0};
static OMX_PTR pComponents[COUNTOF(pModules)] = {0};
static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

static OMX_U32 count = 0;
static OMX_U32 tableCount = 0;

static ComponentTable componentTable[MAX_TABLE_SIZE];
static OMX_STRING sRoleArray[60][20];
static char compName[60][200];

static char *tComponentName[MAXCOMP][2] = {
    
	/*video and image components */
	{"OMX.hisi.video.decoder", "video_decoder.avc"},
	{"OMX.hisi.video.decoder", "video_decoder.mpeg4"},
	{"OMX.hisi.video.decoder", "video_decoder.mpeg2"},
	{"OMX.hisi.video.decoder", "video_decoder.avs"},
	{"OMX.hisi.video.decoder", "video_decoder.divx3"},
	{"OMX.hisi.video.decoder", "video_decoder.h263"},

    {"OMX.hisi.video.encoder", "video_encoder.avc"},
	/* terminate the table */
	{NULL, NULL},
	
};


/******************************functions******************************/

static OMX_ERRORTYPE OMX_BuildComponentTable()
{
	OMX_U32 i = 0;
	OMX_U32 j = 0;
	OMX_U32 numFiles = 0;
	OMX_CALLBACKTYPE sCallbacks;
	OMX_ERRORTYPE eError = OMX_ErrorNone;

	for (i = 0, numFiles = 0; i < MAXCOMP; i ++)
	{
		if (tComponentName[i][0] == NULL)
              {      
		    break;
              }

		if (numFiles <= MAX_TABLE_SIZE)
		{
		    for (j = 0; j < numFiles; j ++)
		    {
		        if (!strcmp(componentTable[j].name, tComponentName[i][0]))
			 {
		            /* insert the role */
		            if (tComponentName[i][1] != NULL)
		            {
		                componentTable[j].pRoleArray[componentTable[j].nRoles] = tComponentName[i][1];
		                componentTable[j].pHandle[componentTable[j].nRoles] = NULL; //initilize the pHandle element
		                componentTable[j].nRoles++;
		            }
		            break;
		        }
		    }

		    if (j == numFiles)
		    {
			    /* new component */
		        if (tComponentName[i][1] != NULL)
			    {
		            componentTable[numFiles].pRoleArray[0] = tComponentName[i][1];
		            componentTable[numFiles].nRoles = 1;
		        }

		        strncpy(compName[numFiles], tComponentName[i][0], sizeof(compName[numFiles]));
                compName[numFiles][sizeof(compName[numFiles])-1] = '\0';
		        componentTable[numFiles].name = compName[numFiles];
		        componentTable[numFiles].refCount = 0; //initialize reference counter.
		        numFiles++;
		    }
		}
	}

	tableCount = numFiles;

	return eError;
}


/******************************Public*Routine******************************\
* OMX_Init()
*
* Description:This method will initialize the OMX Core.  It is the
* responsibility of the application to call OMX_Init to ensure the proper
* set up of core resources.
*
* Returns:    OMX_NOERROR          Successful
*
* Note
*
\************************************************************************/
OMX_ERRORTYPE OMX_Init()
{
	OMX_ERRORTYPE eError = OMX_ErrorNone;

	DEBUG_PRINT("%s :: enter!\n", __func__);

	if(pthread_mutex_lock(&mutex) != 0)
	{
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex lock\n",__func__);
		return OMX_ErrorUndefined;
	}

	count++;

	if (count == 1)
	{
		eError = OMX_BuildComponentTable();
	}

	if(pthread_mutex_unlock(&mutex) != 0)
	{
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex unlock\n",__func__);
		return OMX_ErrorUndefined;
	}

	DEBUG_PRINT("%s :: exit!\n", __func__);
	return eError;
}


/******************************Public*Routine******************************\
* OMX_GetHandle
*
* Description: This method will create the handle of the COMPONENTTYPE
* If the component is currently loaded, this method will reutrn the
* hadle of existingcomponent or create a new instance of the component.
* It will call the OMX_ComponentInit function and then the setcallback
* method to initialize the callback functions
* Parameters:
* @param[out] pHandle            Handle of the loaded components
* @param[in] cComponentName     Name of the component to load
* @param[in] pAppData           Used to identify the callbacks of component
* @param[in] pCallBacks         Application callbacks
*
* @retval OMX_ErrorUndefined
* @retval OMX_ErrorInvalidComponentName
* @retval OMX_ErrorInvalidComponent
* @retval OMX_ErrorInsufficientResources
* @retval OMX_NOERROR                      Successful
*
* Note
*
\**************************************************************************/

OMX_ERRORTYPE OMX_GetHandle( 
           OMX_HANDLETYPE* pHandle, 
           OMX_STRING cComponentName, 
           OMX_PTR pAppData, 
           OMX_CALLBACKTYPE* pCallBacks)
{
	static const char prefix[] = "lib";
	static const char postfix[] = ".so";

	OMX_ERRORTYPE (*pComponentInit)(OMX_HANDLETYPE, OMX_STRING);
	OMX_ERRORTYPE err = OMX_ErrorNone;
	OMX_COMPONENTTYPE *componentType;

#ifdef DYNAMIC_LOAD
	const char *pErr = dlerror();
#endif
	OMX_U32 refIndex = 0;

	OMX_U32 i = 0;

	DEBUG_PRINT("%s :: enter!\n", __func__);
	DEBUG_PRINT("%s :: component name:%s !\n", __func__, cComponentName);

	if(pthread_mutex_lock(&mutex) != 0)
	{
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex lock\n",__func__);
		return OMX_ErrorUndefined;
	}

	if ((NULL == cComponentName) || (NULL == pHandle) || (NULL == pCallBacks))
	{
		err = OMX_ErrorBadParameter;
		DEBUG_PRINT_ERROR("%s :: invalid param!\n", __func__);
		goto UNLOCK_MUTEX;
	}

	/* Verify that the name is not too long and could cause a crash.  Notice
	* that the comparison is a greater than or equals.  This is to make
	* sure that there is room for the terminating NULL at the end of the
	* name. */

	if(strlen(cComponentName) >= MAXNAMESIZE)
	{
		err = OMX_ErrorInvalidComponentName;
		DEBUG_PRINT_ERROR("%s :: invalid component name!\n", __func__);
		goto UNLOCK_MUTEX;
	}

	/* Locate the first empty slot for a component.  If no slots
	* are available, error out */
	for(i = 0; i < COUNTOF(pModules); i++)
	{
		if(pModules[i] == NULL)
              {      
			break;
              }
	}

	if(i == COUNTOF(pModules))
	{
		err = OMX_ErrorInsufficientResources;
		DEBUG_PRINT_ERROR("%s :: modules load too much!\n", __func__);
		goto UNLOCK_MUTEX;
	}

	for (refIndex = 0; refIndex < MAX_TABLE_SIZE; refIndex++)
	{
		char buf[sizeof(prefix) + MAXNAMESIZE + sizeof(postfix)];

		//get the index for the component in the table
		if (strcmp(componentTable[refIndex].name, cComponentName) != 0)
              {      
			continue;
              }

		/* check if the component is already loaded */
		if (componentTable[refIndex].refCount >= MAX_CONCURRENT_INSTANCES)
		{
			err = OMX_ErrorInsufficientResources;
			DEBUG_PRINT_ERROR("%s :: Max instances of component %s already created.\n", __func__, cComponentName);
			goto UNLOCK_MUTEX;
		}

		/* load the component and check for an error.  If filename is not an
		* absolute path (i.e., it does not  begin with a "/"), then the
		* file is searched for in the following locations:
		*
		*     The LD_LIBRARY_PATH environment variable locations
		*     The library cache, /etc/ld.so.cache.
		*     /lib
		*     /usr/lib
		*
		* If there is an error, we can't go on, so set the error code and exit */

		/* the lengths are defined herein or have been
		* checked already, so strcpy and strcat are
		* are safe to use in this context. */
		strncpy(buf, prefix, sizeof(prefix));
		strncat(buf, cComponentName, strlen(cComponentName));
		strncat(buf, postfix, sizeof(postfix));

		DEBUG_PRINT("%s :: prepare to load  %s\n", __func__, buf);

#ifdef DYNAMIC_LOAD
		pModules[i] = dlopen(buf, RTLD_LAZY | RTLD_GLOBAL);
		if( pModules[i] == NULL )
		{
			DEBUG_PRINT_ERROR("%s :: dlopen %s failed because %s\n", __func__, buf, dlerror());
			err = OMX_ErrorComponentNotFound;
			goto UNLOCK_MUTEX;
		}

		/* Get a function pointer to the "OMX_ComponentInit" function.  If
		* there is an error, we can't go on, so set the error code and exit */
		pComponentInit = dlsym(pModules[i], "component_init");
		pErr = dlerror();

		if( (pErr != NULL) || (pComponentInit == NULL) )
		{
			DEBUG_PRINT_ERROR("%s:: dlsym failed for module %p\n", __func__, pModules[i]);
			err = OMX_ErrorInvalidComponent;
			goto CLEAN_UP;
		}
#else
		extern OMX_ERRORTYPE component_init(OMX_HANDLETYPE, OMX_STRING);
		pComponentInit = OMX_ComponentInit;
#endif

		DEBUG_PRINT("%s :: load  %s ok\n", __func__, buf);

		*pHandle = malloc(sizeof(OMX_COMPONENTTYPE));
		if(*pHandle == NULL)
		{
			err = OMX_ErrorInsufficientResources;
			DEBUG_PRINT_ERROR("%s:: malloc of pHandle* failed\n", __func__);
			goto CLEAN_UP;
		}

		/* We now can access the dll.  So, we need to call the "OMX_ComponentInit"
		 * method to load up the "handle" (which is just a list of functions to
		 * call) and we should be all set.*/
		pComponents[i] = *pHandle;
		componentType = (OMX_COMPONENTTYPE*) *pHandle;
		componentType->nSize = sizeof(OMX_COMPONENTTYPE);
		err = (*pComponentInit)(*pHandle, cComponentName);
		if (err != OMX_ErrorNone)
		{
			DEBUG_PRINT_ERROR("%s :: OMX_ComponentInit failed 0x%08x\n", __func__, err);
			goto CLEAN_UP;
		}

		err = (componentType->SetCallbacks)(*pHandle, pCallBacks, pAppData);
		if (err != OMX_ErrorNone)
		{
			DEBUG_PRINT_ERROR("%s :: Core: SetCallBack failed %d\n", __func__, err);
			goto CLEAN_UP;
		}

		/* finally, OMX_ComponentInit() was successful and
		   SetCallbacks was successful, we have a valid instance,
		   so now we increase refCount */
		componentTable[refIndex].pHandle[componentTable[refIndex].refCount] = *pHandle;
		componentTable[refIndex].refCount += 1;
		goto UNLOCK_MUTEX;  // Component is found, and thus we are done

	}

	// If we are here, we have not found the component
	err = OMX_ErrorComponentNotFound;
	goto UNLOCK_MUTEX;

CLEAN_UP:
	if(*pHandle != NULL)
	{
		free(*pHandle);
		*pHandle = NULL;
	}

	pComponents[i] = NULL;

#ifdef DYNAMIC_LOAD
	dlclose(pModules[i]);
#endif

	pModules[i] = NULL;

UNLOCK_MUTEX:
	if(pthread_mutex_unlock(&mutex) != 0)
	{
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex unlock\n", __func__);
		err = OMX_ErrorUndefined;
	}

	return (err);
}


/******************************Public*Routine******************************\
* OMX_FreeHandle()
*
* Description:This method will unload the OMX component pointed by
* OMX_HANDLETYPE. It is the responsibility of the calling method to ensure that
* the Deinit method of the component has been called prior to unloading component
*
* Parameters:
* @param[in] hComponent the component to unload
*
* Returns:    OMX_NOERROR          Successful
*
* Note
*
\**************************************************************************/
OMX_ERRORTYPE OMX_FreeHandle (OMX_HANDLETYPE hComponent)
{
	OMX_ERRORTYPE retVal = OMX_ErrorUndefined;
	OMX_COMPONENTTYPE *pHandle = (OMX_COMPONENTTYPE *)hComponent;
	OMX_U32 refIndex = 0;
	OMX_S32 handleIndex = 0;
	OMX_U32 i = 0;

	if(pthread_mutex_lock(&mutex) != 0)
	{
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex lock\n", __func__);
		return OMX_ErrorUndefined;
	}

	/* Locate the component handle in the array of handles */
	for(i = 0; i < COUNTOF(pModules); i++)
	{
		if(pComponents[i] == hComponent)
              {      
			break;
              }
	}

	if(i == COUNTOF(pModules))
	{
		DEBUG_PRINT_ERROR("%s :: Core: component %p is not found\n", __func__, hComponent);
		retVal = OMX_ErrorBadParameter;
		goto EXIT;
	}

	/* call component deinit method */
	retVal = pHandle->ComponentDeInit(hComponent);
	if (retVal != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("%s :: ComponentDeInit failed %d\n", __func__, retVal);
		goto EXIT;
	}

	for (refIndex=0; refIndex < MAX_TABLE_SIZE; refIndex++)
	{
		for (handleIndex=0; handleIndex < componentTable[refIndex].refCount; handleIndex++)
		{
			/* get the position for the component in the table */
			if (componentTable[refIndex].pHandle[handleIndex] == hComponent)
			{
				if (componentTable[refIndex].refCount)
				{
					componentTable[refIndex].refCount -= 1;
				}
				componentTable[refIndex].pHandle[handleIndex] = NULL;

#ifdef DYNAMIC_LOAD
				dlclose(pModules[i]);
#endif
				pModules[i] = NULL;
				free(pComponents[i]);
				pComponents[i] = NULL;
				retVal = OMX_ErrorNone;

				goto EXIT;
			}
		}
	}

	// If we are here, we have not found the matching component
	retVal = OMX_ErrorComponentNotFound;

EXIT:
	/* The unload is now complete, so set the error code to pass and exit */
	if(pthread_mutex_unlock(&mutex) != 0)
	{
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex unlock\n", __func__);
		return OMX_ErrorUndefined;
	}

	return retVal;
}


/******************************Public*Routine******************************\
* OMX_DeInit()
*
* Description:This method will release the resources of the OMX Core.  It is the
* responsibility of the application to call OMX_DeInit to ensure the clean up of these
* resources.
*
* Returns:    OMX_NOERROR          Successful
*
* Note
*
\**************************************************************************/
OMX_ERRORTYPE OMX_Deinit()
{
	if(pthread_mutex_lock(&mutex) != 0) 
       {
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex lock\n", __func__);
		return OMX_ErrorUndefined;
	}

	if (count)
       {
		count--;
	}

	if(pthread_mutex_unlock(&mutex) != 0) 
       {
		DEBUG_PRINT_ERROR("%s :: Core: Error in Mutex unlock\n", __func__);
		return OMX_ErrorUndefined;
	}

	return OMX_ErrorNone;
}


/*************************************************************************
* OMX_SetupTunnel()
*
* Description: Setup the specified tunnel the two components
*
* Parameters:
* @param[in] hOutput     Handle of the component to be accessed
* @param[in] nPortOutput Source port used in the tunnel
* @param[in] hInput      Component to setup the tunnel with.
* @param[in] nPortInput  Destination port used in the tunnel
*
* Returns:    OMX_NOERROR          Successful
*
* Note
*
**************************************************************************/
/* OMX_SetupTunnel */
OMX_ERRORTYPE OMX_SetupTunnel(
            OMX_IN OMX_HANDLETYPE outputComponent,
            OMX_IN OMX_U32             outputPort,
            OMX_IN OMX_HANDLETYPE  inputComponent,
            OMX_IN OMX_U32              inputPort)
{
	/* Not supported right now */
	DEBUG_PRINT("%s :: OMXCORE API: OMX_SetupTunnel Not implemented \n", __func__);
	return OMX_ErrorNotImplemented;
}


/*************************************************************************
* OMX_ComponentNameEnum()
*
* Description: This method will provide the name of the component at the given nIndex
*
*Parameters:
* @param[out] cComponentName       The name of the component at nIndex
* @param[in] nNameLength                The length of the component name
* @param[in] nIndex                         The index number of the component
*
* Returns:    OMX_NOERROR          Successful
*
* Note
*
**************************************************************************/
OMX_ERRORTYPE OMX_ComponentNameEnum(
            OMX_OUT OMX_STRING cComponentName,
            OMX_IN  OMX_U32 nNameLength,
            OMX_IN  OMX_U32 nIndex)
{
	OMX_ERRORTYPE eError = OMX_ErrorNone;

	if (nIndex >= tableCount)
	{
		eError = OMX_ErrorNoMore;
	}
	else
	{
              DEBUG_PRINT("%s :: componentTable[%ld].name: %s \n", __func__, nIndex,componentTable[nIndex].name);
		strncpy(cComponentName, componentTable[nIndex].name, nNameLength);
	}

	return eError;
}


/*************************************************************************
* OMX_GetRolesOfComponent()
*
* Description: This method will query the component for its supported roles
*
*Parameters:
* @param[in] cComponentName     The name of the component to query
* @param[in] pNumRoles     The number of roles supported by the component
* @param[in] roles		The roles of the component
*
* Returns:    OMX_NOERROR          Successful
*                 OMX_ErrorBadParameter		Faliure due to a bad input parameter
*
* Note
*
**************************************************************************/
OMX_ERRORTYPE OMX_GetRolesOfComponent (
            OMX_IN      OMX_STRING cComponentName,
            OMX_INOUT   OMX_U32 *pNumRoles,
            OMX_OUT     OMX_U8 **roles)
{
	OMX_U32 i = 0;
	OMX_U32 j = 0;
	OMX_BOOL bFound = OMX_FALSE;
	OMX_ERRORTYPE eError = OMX_ErrorNone;

	if (cComponentName == NULL || pNumRoles == NULL)
	{
		eError = OMX_ErrorBadParameter;
		goto EXIT;
	}

	while (i < tableCount)
	{
		if (strcmp(cComponentName, componentTable[i].name) == 0)
		{
			bFound = OMX_TRUE;
			break;
		}
		i++;
	}

	if (!bFound)
	{
		eError = OMX_ErrorComponentNotFound;
		DEBUG_PRINT_ERROR("%s :: component %s not found\n",__func__, cComponentName);
		goto EXIT;
	}

	if (roles == NULL)
	{
		*pNumRoles = componentTable[i].nRoles;
	}
	else
	{
		/* must be second of two calls, pNumRoles is input in this context.
		If pNumRoles is < actual number of roles than we return an error */
		if (*pNumRoles >= componentTable[i].nRoles)
		{
			for (j = 0; j<componentTable[i].nRoles; j++)
			{
				strncpy((OMX_STRING)roles[j], componentTable[i].pRoleArray[j], OMX_MAX_STRINGNAME_SIZE);
			}
			*pNumRoles = componentTable[i].nRoles;
		}
		else
		{
			eError = OMX_ErrorBadParameter;
			DEBUG_PRINT_ERROR("%s :: pNumRoles (%ld) is less than actual number (%d) of roles for this component %s\n",__func__, *pNumRoles, componentTable[i].nRoles,cComponentName);
		}
	}

EXIT:
	return eError;
}


/*************************************************************************
* OMX_GetComponentsOfRole()
*
* Description: This method will query the component for its supported roles
*
*Parameters:
* @param[in] role     The role name to query for
* @param[in] pNumComps     The number of components supporting the given role
* @param[in] compNames      The names of the components supporting the given role
*
* Returns:    OMX_NOERROR          Successful
*
* Note
*
**************************************************************************/
OMX_ERRORTYPE OMX_GetComponentsOfRole (
            OMX_IN      OMX_STRING role,
            OMX_INOUT   OMX_U32 *pNumComps,
            OMX_INOUT   OMX_U8  **compNames)
{
	OMX_U32 i = 0;
	OMX_U32 j = 0;
	OMX_U32 k = 0;
	OMX_U32 compOfRoleCount = 0;
	OMX_ERRORTYPE eError = OMX_ErrorNone;

	if (role == NULL || pNumComps == NULL)
	{
		if (role == NULL)
		{
		   DEBUG_PRINT_ERROR("%s :: role is NULL", __func__);
		}

		if (pNumComps == NULL)
		{
		   DEBUG_PRINT_ERROR("%s :: pNumComps is NULL\n", __func__);
		}

		eError = OMX_ErrorBadParameter;
		goto EXIT;
	}

	/* This implies that the componentTable is not filled */
	if (!tableCount)
	{
		eError = OMX_ErrorUndefined;
		DEBUG_PRINT_ERROR("%s :: Component table is empty. Please reload OMX Core\n", __func__);
		goto EXIT;
	}

	/* no matter, we always want to know number of matching components so this will always run */
	for (i = 0; i < tableCount; i++)
	{
		for (j = 0; j < componentTable[i].nRoles; j++)
		{
			if (strcmp(componentTable[i].pRoleArray[j], role) == 0)
			{
				/* the first call to this function should only count the number of roles*/
				compOfRoleCount++;
			}
		}
	}

	if (compOfRoleCount == 0)
	{
		eError = OMX_ErrorComponentNotFound;
		DEBUG_PRINT_ERROR("%s :: Component supporting role %s was not found\n", __func__, role);
	}

	if (compNames == NULL)
	{
		/* must be the first of two calls */
		*pNumComps = compOfRoleCount;
	}
	else
	{
		/* must be the second of two calls */
		if (*pNumComps < compOfRoleCount)
		{
		    /* pNumComps is input in this context,
		       it can not be less, this would indicate
		       the array is not large enough
		    */
		    eError = OMX_ErrorBadParameter;
		    DEBUG_PRINT_ERROR("%s :: pNumComps (%ld) is less than the actual number (%ld) of components supporting role %s\n", 
                                                      __func__, *pNumComps, compOfRoleCount, role);
		}
		else
		{
		    k = 0;
		    for (i = 0; i < tableCount; i++)
		    {
		        for (j = 0; j < componentTable[i].nRoles; j++)
		        {
		            if (strcmp(componentTable[i].pRoleArray[j], role) == 0)
		            {
		                /*  the second call compNames can be allocated with the proper size for that number of roles. */
		                compNames[k] = (OMX_U8*)componentTable[i].name;
		                k++; 
		                if (k == compOfRoleCount)
		                {
		                    /* there are no more components of this role so we can exit here */
		                    *pNumComps = k;
		                    goto EXIT;
		                }
		            }
		        }
		    }
		}
	}

EXIT:
	return eError;
    
}



