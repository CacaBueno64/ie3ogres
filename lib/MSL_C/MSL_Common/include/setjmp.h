/* MSL
 * Copyright � 1995-2007 Freescale Corporation.  All rights reserved.
 *
 * $Date: 2007/01/29 18:12:21 $
 * $Revision: 1.28 $
 */

#ifndef _MSL_SETJMP_H
#define _MSL_SETJMP_H

#include <ansi_parms.h>

#if !_MSL_USING_MW_C_HEADERS
	#error You must have the non-MSL C header file access path before the MSL access path
#else

#include <csetjmp>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
	using std::jmp_buf;
	using std::longjmp;
#endif /* defined(__cplusplus) && defined(_MSL_USING_NAMESPACE) */

#endif /* _MSL_USING_MW_C_HEADERS */

#endif /* _MSL_SETJMP_H */

/* Change record:
 * hh  971206 Created.
 * JWW 001208 Added case for targeting Mach-O
 * JWW 011027 Use _MSL_USING_MW_C_HEADERS as generic header test instead of specific Mach-O test
 */