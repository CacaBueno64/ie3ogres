/* MSL
 * Copyright � 1995-2007 Freescale Corporation.  All rights reserved.
 *
 * $Date: 2007/01/29 18:12:09 $
 * $Revision: 1.28 $
 */
 
#ifndef _MSL_ISO646_H
#define _MSL_ISO646_H

#include <ansi_parms.h>

#if _MSL_C99							/*- mm 030701 -*/

#if !_MSL_USING_MW_C_HEADERS
	#if !__MACH__
	#error You must have the non-MSL C header file access path before the MSL access path
	#endif
#else

#include <ciso646>

#endif /* _MSL_USING_MW_C_HEADERS */

#endif /* _MSL_C99 */					/*- mm 030701 -*/

#endif /* _MSL_ISO646_H */

/* Change record:
 * hh  980106 Created.
 * hh  991113 Removed namespace support.
 * JWW 001208 Added case for targeting Mach-O
 * JWW 011027 Use _MSL_USING_MW_C_HEADERS as generic header test instead of specific Mach-O test
 * mm  030701 Added C99 wrappers
 */