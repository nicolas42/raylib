clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL libraylib.a -I raylib/src -g main.c && ./a.out


# Compile using a shell variable for brevity
export RAYLIB_FRAMEWORKS="CoreVideo IOKit Cocoa GLUT OpenGL"
clang -framework "$RAYLIB_FRAMEWORKS" ~/Code/raylib/libraylib.a -I ~/Code/raylib/src -g audio_mixed_processor.c && ./a.out


# Run all the files in a directory.
# Change the paths to raylib.a and /src as needed
for f in *.c; do clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL ~/Code/raylib/libraylib.a -I ~/Code/raylib/src -g $f && ./a.out; done
