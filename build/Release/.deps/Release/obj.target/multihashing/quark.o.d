cmd_Release/obj.target/multihashing/quark.o := cc '-DNODE_GYP_MODULE_NAME=multihashing' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/home/ubuntu/.node-gyp/10.16.3/include/node -I/home/ubuntu/.node-gyp/10.16.3/src -I/home/ubuntu/.node-gyp/10.16.3/deps/openssl/config -I/home/ubuntu/.node-gyp/10.16.3/deps/openssl/openssl/include -I/home/ubuntu/.node-gyp/10.16.3/deps/uv/include -I/home/ubuntu/.node-gyp/10.16.3/deps/zlib -I/home/ubuntu/.node-gyp/10.16.3/deps/v8/include -I../crypto -I../SK  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer  -MMD -MF ./Release/.deps/Release/obj.target/multihashing/quark.o.d.raw   -c -o Release/obj.target/multihashing/quark.o ../quark.c
Release/obj.target/multihashing/quark.o: ../quark.c ../quark.h \
 ../sha3/sph_blake.h ../sha3/sph_types.h ../sha3/sph_bmw.h \
 ../sha3/sph_groestl.h ../sha3/sph_jh.h ../sha3/sph_keccak.h \
 ../sha3/sph_skein.h
../quark.c:
../quark.h:
../sha3/sph_blake.h:
../sha3/sph_types.h:
../sha3/sph_bmw.h:
../sha3/sph_groestl.h:
../sha3/sph_jh.h:
../sha3/sph_keccak.h:
../sha3/sph_skein.h:
