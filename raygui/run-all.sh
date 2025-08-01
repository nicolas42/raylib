# Run inside raygui dir.  Expects libraylib.a and raylib/src
for f in $(find . -name "*.c"); do echo $f; clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL ../libraylib.a -I../raylib/src $f && ./a.out;
done
