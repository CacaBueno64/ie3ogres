/* MSL
 * Copyright � 1995-2007 Freescale Corporation.  All rights reserved.
 *
 * $Date: 2007/01/29 18:12:09 $
 * $Revision: 1.27 $
 */

#ifndef _MSL_LIMITS_H
#define _MSL_LIMITS_H

#include <ansi_parms.h>

#if !_MSL_USING_MW_C_HEADERS
	#error You must have the non-MSL C header file access path before the MSL access path
#else

#include <climits>

#endif /* _MSL_USING_MW_C_HEADERS */

#endif /* _MSL_LIMITS_H */

/* Change record: 
 * hh  971206 Created.
 * hh  990928 fixed "using bug"
 * JWW 001208 Added case for targeting Mach-O
 * JWW 011027 Use _MSL_USING_MW_C_HEADERS as generic header test instead of specific Mach-O test
 */