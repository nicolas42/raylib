# Run all the files in a directory.
# Change the paths to raylib.a and /src as needed
for f in *.c; do clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL ~/Code/raylib/libraylib.a -I ~/Code/raylib/src -g $f && ./a.out; done
