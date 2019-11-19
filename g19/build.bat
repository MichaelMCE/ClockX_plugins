@echo off


rem call gccpath.bat


gcc -m32 -I../libmylcd/include/ -c -O2 ClocXPlugin.c
dllwrap -m32 -L../libmylcd/libs/x32/ ClocXPlugin.o -lmylcddll -lgdi32 -lhid -l306_lglcd -lsetupapi -o g19plugin.dll
strip g19plugin.dll