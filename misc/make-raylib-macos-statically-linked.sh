# Put this in the root directory of your project and run with sh script.sh
# Or if you're already setup with xcode and the raylib src then just do the export line, then go to raylib/src, and use "make". A statically linked archive file should be generated.  

echo "Set macos minimum deployment target to 10.9"
export MACOSX_DEPLOYMENT_TARGET=10.9

echo "Install xcode command line tools"
xcode-select --install

echo "Build raylib"
# Build raylib (Again, this is so the export line takes effect)
git clone https://github.com/raysan5/raylib.git
cd raylib/src
make

echo "Copy lib and header"
# copy the library and header
cp libraylib.a ../../
cp raylib.h ../../
cd ../../

echo "Build a.out"
# Build
clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL libraylib.a main.c

# otool -l a.out
# Last thing, let me show you something cool:
otool -L a.out
# This shows the dependencies

# Run
# ./a.out

