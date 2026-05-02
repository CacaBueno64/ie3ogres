#pragma once

#if !defined(JAPANESE)
#define JAPANESE
#endif

#ifdef JAPANESE
#define GAME_LANGUAGE LANGUAGE_JAPANESE
#else
#error "Missing or unrecognized game language define"
#endif

#ifndef __MWERKS__
#define NONMATCHING
#endif //__MWERKS__
