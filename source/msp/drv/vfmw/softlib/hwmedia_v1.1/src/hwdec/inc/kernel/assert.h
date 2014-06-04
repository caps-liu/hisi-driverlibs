#ifndef _LINUX_ASSERT_H
#define _LINUX_ASSERT_H

#define assert(expr) do { \
	if (!(expr)) \
	    printk("!!ASSERTION FAILED: [%s:%d] \"" #expr "\"\n", __FILE__, __LINE__); \
	} while (0)


#endif /* _LINUX_ASSERT_H */
