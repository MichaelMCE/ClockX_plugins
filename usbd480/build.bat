@echo off

rem png, lglcd and sdl are not require to build this appl
rem if you experience link errors stating otherwise then rebuild libmylcd without enabling the above options

rem call gccpath.bat

gcc -m32 -I../libmylcd/include/ -c -O2 ClocXPlugin.c
dllwrap -m32 -L../libmylcd/libs/x32/ ClocXPlugin.o -lmylcddll -lgdi32 -lhid -lsetupapi -o usbd480plugin.dll
strip usbd480plugin.dll

