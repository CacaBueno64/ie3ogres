#ifndef IE3OGRES_CONFIG_H
#define IE3OGRES_CONFIG_H

// Sets English as default. Add here all supported ROM languages.
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

#endif // IE3OGRES_CONFIG_H