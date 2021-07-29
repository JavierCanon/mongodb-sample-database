@echo off
echo ------------------
echo MONGO DEMO DATA IMPORT
echo ver. 1.0.0
echo ------------------
pause

rem exe dir with last slash:
set mongoimportdir=C:\Program Files\MongoDB\Tools\100\bin\
rem current dir:
pushd %~d0\%~p0
cd %~d0\%~p0

rem for /r %%i in (*.csv) do (
rem  echo %%i
rem  echo %%~ni
rem )

for /r %%d in (*.csv) do "%mongoimportdir%mongoimport.exe" -d Northwind -c "%%~nd" --type csv --file "%%d" --headerline 

pause

echo ------------------
