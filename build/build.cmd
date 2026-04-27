@echo off

set PLATFORM=4
set ATR=mercenary
call var-def.cmd

call :compile_module merc-0700-6fff 0700
if NOT %result%==0 goto ende
call :compile_module objectview 2200
if NOT %result%==0 goto ende
call :compile_module runad 02E0
if NOT %result%==0 goto ende

cd %REL%
copy %RES%\mydos90k.atr %ATR%.atr
copy /Y /B objectview.com + runad.com objectv.ar0

%TOOLS%\xfddos -i %ATR%.atr objectv.ar0

rem cd %ATR%
rem rmdir /Q /S obj > nul 2> nul
rem rmdir /Q /S lst > nul 2> nul
rem mkdir obj > nul 2> nul
rem mkdir lst > nul 2> nul

rem move ..\%ATR%*.* . > nul 2> nul
rem move ..\runad*.* . > nul 2> nul

move *.lst lst > nul 2> nul
move *.o obj > nul 2> nul
move *.a obj > nul 2> nul
rem move *.com obj > nul 2> nul
move *.ar* obj > nul 2> nul

rem c:\atari\aspeqt7\aspeqt.exe
"C:\Program Files (x86)\Altirra\Altirra64.exe"
pause
goto eof

:ende

pause
goto eof


:compile_module
%CC65%\ca65 -DPLATFORM=%PLATFORM% -l %REL%\%1.lst %SRC%\%1.a65 -I %INC% -I %COMMON%\inc -o %REL%\%1.o
set result=%ERRORLEVEL%

if %result%==0 (

	%CC65%\ld65 -t none %REL%\%1.o -o %REL%\%1.a
rem 	%CC65%\bin2hex %REL%\%1.a %REL%\%1.hex -o %2
	java -jar %TOOLS%\Obj2Com\jar\ObjUtil.jar Obj2Com %REL%\%1.a %2
)

:eof