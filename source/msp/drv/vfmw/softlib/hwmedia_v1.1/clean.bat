@echo off

call :RM_TEMP_FILE

cd src/
call :RM_TEMP_DIR
call :RM_TEMP_FILE

cd hwdec/
call :RM_TEMP_DIR
call :RM_TEMP_FILE

cd ../../application/decoder/
call :RM_TEMP_DIR
call :RM_TEMP_FILE

cd ../../bin/win32/
call :RM_TEMP_DIR
call :RM_TEMP_FILE

@echo on

goto :EOF

rem *************** start of procedure RM_TEMP_DIR
:RM_TEMP_DIR

rd Debug /s /q
rd Release /s /q

rem *************** start of procedure RM_TEMP_FILE
:RM_TEMP_FILE

del *.o   /s /q
del *.plg /s /q
del *.pch /s /q
del *.ncb /s /q
del *.opt /s /q
del *.plg /s /q
del *.bsc /s /q
del *.bak /s /q
del *.pdb /s /q
del *.sql /s /q
del *.mdb /s /q
del *.exp /s /q
del *.ilk /s /q
del *.idb /s /q
del *.user /s /q
rem del *.lib /s /q
rem del *.dll /s /q
rem del *.a   /s /q
rem del *.so  /s /q
