#ifndef SK1024_H
#define SK1024_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

void sk1024_hash(const char* input, char* output, uint32_t len);

#ifdef __cplusplus
}
#endif

#endif
