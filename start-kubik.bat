@echo off
echo Starting Kubik with font fix...
echo Setting working directory to current folder
cd /d "%~dp0"

echo Copying system fonts to expected locations...
if not exist "fonts\Arimo-Regular.ttf" copy "C:\Windows\Fonts\arial.ttf" "fonts\Arimo-Regular.ttf" >nul 2>&1
if not exist "fonts\Cousine-Regular.ttf" copy "C:\Windows\Fonts\consola.ttf" "fonts\Cousine-Regular.ttf" >nul 2>&1

echo Starting Kubik...
kubik.exe %*

pause
