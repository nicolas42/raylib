
@REM // "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64 
@REM // The above code doesn't work in powershell, apparently, 2023
@REM // cl test_allocator.c && test_allocator.exe

@set OUT_DIR=Debug
@set OUT_EXE=zomg
@set INCLUDES=/IC:\Users\Nick\sensium\raylib\raylib-4.5.0_win64_msvc16\include
@set SOURCES=main.c
@set LIBS=/LIBPATH:C:\Users\Nick\sensium\raylib\raylib-4.5.0_win64_msvc16\lib opengl32.lib gdi32.lib shell32.lib raylib.lib winmm.lib kernel32.lib user32.lib

mkdir %OUT_DIR%
cl /nologo /Zi /MD %INCLUDES% %SOURCES% /Fe%OUT_DIR%/%OUT_EXE%.exe /Fo%OUT_DIR%/ /link %LIBS%

