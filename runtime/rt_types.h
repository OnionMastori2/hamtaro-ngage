/* rt_types.h - fixed-width types for the translated decomp and its runtime.
 * Written for C89 compilers with 'long long' (GCC 4.6 for the N-Gage, MSVC,
 * GCC/Clang on a PC). */
#ifndef RT_TYPES_H
#define RT_TYPES_H

typedef unsigned char      u8;
typedef unsigned short     u16;
typedef unsigned int       u32;
typedef unsigned long long u64;
typedef signed char        s8;
typedef signed short       s16;
typedef signed int         s32;
typedef signed long long   s64;

#if defined(_MSC_VER)
#define RT_INLINE static __inline
#else
#define RT_INLINE static __inline__
#endif

/* The emulated memory is read 16 and 32 bits at a time through casts.  x86
 * does not care about alignment; ARM (the N-Gage) rotates misaligned loads,
 * so every buffer the game sees is aligned explicitly. */
#if defined(__GNUC__)
#define RT_ALIGNED __attribute__((aligned(16)))
#else
#define RT_ALIGNED
#endif

#endif
