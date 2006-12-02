@echo off
cd /d E:\Docs\Programmes\Clavier
call CopyCode
cd Distrib

echo Copying help files...
for %%i in (*.htm) do copy /y %%i E:\Web\utilfr\util\Clavier%%i >nul

echo Generating Clavier.zip...
mystart /wait Clavier.mus

echo Generating ClavierSrc.zip...
mystart /wait ClavierSrc.mus

echo Generating ClavierSetup.exe...
mystart /wait /verb CompileWithIS Clavier.iss

for %%i in (Clavier.zip ClavierSrc.zip ClavierSetup.exe) do move /y %%i E:\Web\utilfr\dn
pause