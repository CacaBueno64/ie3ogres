/* MSL
 * Copyright � 1995-2007 Freescale Corporation.  All rights reserved.
 *
 * $Date: 2007/01/29 18:12:17 $
 * $Revision: 1.7 $
 */

#ifndef _MSL_CPP_STD_STRING_H
#define _MSL_CPP_STD_STRING_H

#ifdef __cplusplus

namespace std {

	using ::size_t;
	using ::memchr;
	using ::memcmp;
	using ::memcpy;
	using ::memmove;
	using ::memset;
	using ::strcat;
	using ::strchr;
	using ::strcmp;
	using ::strcoll;
	using ::strcpy;
	using ::strcspn;
	using ::strerror;
	using ::strlen;
	using ::strncat;
	using ::strncmp;
	using ::strncpy;
	using ::strpbrk;
	using ::strrchr;
	using ::strspn;
	using ::strstr;
	using ::strtok;
	using ::strxfrm;
#if defined(__STDC_WANT_LIB_EXT1__) && __STDC_WANT_LIB_EXT1__
	using ::errno_t;
	using ::rsize_t;
	using ::memcpy_s;
	using ::memmove_s;
	using ::strnlen_s;
	using ::strcpy_s;
	using ::strncpy_s;
	using ::strcat_s;
	using ::strncat_s;
	using ::strerror_s;
	using ::strtok_s;
#endif /* __STDC_WANT_LIB_EXT1__ */

} /* namespace std */

#endif /* __cplusplus */

#endif /* _MSL_CPP_STD_STRING_H */

/* Change record:
 * JWW 050128 Put C items into the std namespace
 */