/*__________________________________________________________________________________________

            (c) Hash(BEGIN(Satoshi[2010]), END(Sunny[2012])) == Videlicet[2014] ++

            (c) Copyright The Nexus Developers 2014 - 2019

            Distributed under the MIT software license, see the accompanying
            file COPYING or http://www.opensource.org/licenses/mit-license.php.

            "ad vocem populi" - To the Voice of the People

____________________________________________________________________________________________*/
#include "SK/skein.h"
#include "SK/skein_port.h"
#include "SK/KeccakHash.h"
#include "SK/uint1024.h"
#include "sk1024.h"
#include "marco.h"
#include "common.h"


void sk1024_hash(const char* input, char* output, uint32_t len)
{
    static unsigned char pblank[1];

    uint1024 skein;
    Skein1024_Ctxt_t ctx;
    Skein1024_Init(&ctx, 1024);
    Skein1024_Update(&ctx, (input == output ? pblank : (unsigned char*)&input[0]), (output - input) * sizeof(input[0]));
    Skein1024_Final(&ctx, (unsigned char *)&skein);

    uint1024 keccak;
    Keccak_HashInstance ctx_keccak;
    Keccak_HashInitialize(&ctx_keccak, 576, 1024, 1024, 0x05);
    Keccak_HashUpdate(&ctx_keccak, (unsigned char *)&skein, 1024);
    Keccak_HashFinal(&ctx_keccak, (unsigned char *)&keccak);
    memcpy(output, Keccak, 32)
}
