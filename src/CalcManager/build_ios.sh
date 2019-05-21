xcrun -sdk iphoneos clang \
    -x c++ \
    -arch arm64 \
    -std=c++1z \
    -stdlib=libc++ \
    -c \
	CEngine/*.cpp RatPack/*.cpp *.cpp -I.  

mkdir bin
mkdir bin/arm64

libtool \
    -static \
    *.o \
    -o bin/arm64/libCalcManager.a

rm *.o

clang \
    -x c++ \
    -arch x86_64 \
    -std=c++1z \
    -stdlib=libc++ \
    -c \
	CEngine/*.cpp RatPack/*.cpp *.cpp -I.  

mkdir bin/x86_64

libtool \
    -static \
    *.o \
    -o bin/x86_64/libCalcManager.a

rm *.o
