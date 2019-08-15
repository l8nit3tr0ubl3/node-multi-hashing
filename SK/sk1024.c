#import "sk1024.h"

uint1024 sk1024_hash() const

{
    return SK1024(BEGIN(nVersion), END(nNonce));
}
