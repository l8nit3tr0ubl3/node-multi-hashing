cmd_Release/obj.target/multihashing/SK/skein.o := cc '-DNODE_GYP_MODULE_NAME=multihashing' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/home/ubuntu/.node-gyp/10.16.3/include/node -I/home/ubuntu/.node-gyp/10.16.3/src -I/home/ubuntu/.node-gyp/10.16.3/deps/openssl/config -I/home/ubuntu/.node-gyp/10.16.3/deps/openssl/openssl/include -I/home/ubuntu/.node-gyp/10.16.3/deps/uv/include -I/home/ubuntu/.node-gyp/10.16.3/deps/zlib -I/home/ubuntu/.node-gyp/10.16.3/deps/v8/include -I../crypto -I../SK  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer  -MMD -MF ./Release/.deps/Release/obj.target/multihashing/SK/skein.o.d.raw   -c -o Release/obj.target/multihashing/SK/skein.o ../SK/skein.c
Release/obj.target/multihashing/SK/skein.o: ../SK/skein.c ../SK/skein.h \
 ../SK/skein_port.h ../SK/brg_types.h
../SK/skein.c:
../SK/skein.h:
../SK/skein_port.h:
../SK/brg_types.h:
