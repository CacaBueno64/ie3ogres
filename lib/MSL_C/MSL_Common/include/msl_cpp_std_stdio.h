/* MSL
 * Copyright � 1995-2007 Freescale Corporation.  All rights reserved.
 *
 * $Date: 2007/01/29 18:12:16 $
 * $Revision: 1.9 $
 */
 
#ifndef _MSL_CPP_STD_STDIO_H
#define _MSL_CPP_STD_STDIO_H

#ifdef __cplusplus

namespace std {

	using ::FILE;
	using ::fpos_t;
	using ::size_t;
	using ::clearerr;
	using ::fclose;
	using ::feof;
	using ::ferror;
	using ::fflush;
	using ::fgetc;
	using ::fgetpos;
	using ::fgets;
#if _MSL_OS_DISK_FILE_SUPPORT
	using ::fopen;
	using ::fprintf;
#endif /* _MSL_OS_DISK_FILE_SUPPORT */
	using ::fputc;
	using ::fputs;
	using ::fread;
#if _MSL_OS_DISK_FILE_SUPPORT
	using ::freopen;
#endif /* _MSL_OS_DISK_FILE_SUPPORT */
	using ::fscanf;
	using ::fseek;
	using ::fsetpos;
	using ::ftell;
	using ::fwrite;
	using ::getc;
	using ::getchar;
	using ::gets;
#if _MSL_OS_DISK_FILE_SUPPORT	
	using ::perror;
#endif /* _MSL_OS_DISK_FILE_SUPPORT */
	using ::printf;
	using ::putc;
	using ::putchar;
	using ::puts;
#if _MSL_OS_DISK_FILE_SUPPORT
	using ::remove;
	using ::rename;
#endif /* _MSL_OS_DISK_FILE_SUPPORT */
	using ::rewind;
	using ::scanf;
	using ::setbuf;
	using ::setvbuf;
	using ::sprintf;
	using ::snprintf;
	using ::sscanf;
#if _MSL_OS_DISK_FILE_SUPPORT
	using ::tmpfile;
	using ::tmpnam;
#endif /* _MSL_OS_DISK_FILE_SUPPORT */
	using ::ungetc;
	using ::vfprintf;
	using ::vprintf;
	using ::vsprintf;
	using ::vfscanf;
	using ::vscanf;
	using ::vsscanf;
	using ::vsnprintf;
#if defined(__STDC_WANT_LIB_EXT1__) && __STDC_WANT_LIB_EXT1__
	using ::errno_t;
	using ::rsize_t;
	using ::fprintf_s;
	using ::fscanf_s;
	using ::printf_s;
	using ::scanf_s;
	using ::snprintf_s;
	using ::sprintf_s;
	using ::sscanf_s;
	using ::vfprintf_s;
	using ::vfscanf_s;
	using ::vprintf_s;
	using ::vsnprintf_s;
	using ::vsprintf_s;
	using ::vsscanf_s;
	using ::gets_s;
#if _MSL_OS_DISK_FILE_SUPPORT
	using ::fopen_s;
	using ::freopen_s;
	using ::tmpfile_s;
	using ::tmpnam_s;
#endif /* _MSL_OS_DISK_FILE_SUPPORT */
#endif /* __STDC_WANT_LIB_EXT1__ */

} /* namespace std */

#endif /* __cplusplus */

#endif /* _MSL_CPP_STD_STDIO_H */

/* Change record:
 * JWW 050128 Put C items into the std namespace
 */