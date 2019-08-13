/*__________________________________________________________________________________________

			(c) Hash(BEGIN(Satoshi[2010]), END(Sunny[2012])) == Videlicet[2014] ++

			(c) Copyright The Nexus Developers 2014 - 2019

			Distributed under the MIT software license, see the accompanying
			file COPYING or http://www.opensource.org/licenses/mit-license.php.

			"ad vocem populi" - To the Voice of the People

____________________________________________________________________________________________*/

#pragma once
#ifndef NEXUS_LLC_HASH_SK_H
#define NEXUS_LLC_HASH_SK_H

#include "uint1024.h"
#include "SK/skein.h"
#include "SK/KeccakHash.h"


static uint8_t pblank[1];
template<typename T1>
inline uint1024_t SK1024(const T1 pbegin, const T1 pend)
{
	uint1024_t skein;
	Skein1024_Ctxt_t ctx;
	Skein1024_Init(&ctx, 1024);
	Skein1024_Update(&ctx, (pbegin == pend ? pblank : (uint8_t*)&pbegin[0]), (pend - pbegin) * sizeof(pbegin[0]));
	Skein1024_Final(&ctx, (uint8_t *)&skein);
	
	uint1024_t keccak;
	Keccak_HashInstance ctx_keccak;
	Keccak_HashInitialize(&ctx_keccak, 576, 1024, 1024, 0x05);
	Keccak_HashUpdate(&ctx_keccak, (uint8_t *)&skein, 1024);
	Keccak_HashFinal(&ctx_keccak, (uint8_t *)&keccak);

	return keccak;
}

#endif
