@echo off
echo Force installing fonts for Kubik...
cd /d "%~dp0"

echo Creating fonts directory structure...
if not exist "fonts" mkdir fonts

echo Copying Windows system fonts...
copy "C:\Windows\Fonts\arial.ttf" "fonts\Arimo-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\arialbd.ttf" "fonts\Arimo-Bold.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\ariali.ttf" "fonts\Arimo-Italic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\arialbi.ttf" "fonts\Arimo-BoldItalic.ttf" /Y >nul 2>&1

copy "C:\Windows\Fonts\consola.ttf" "fonts\Cousine-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolab.ttf" "fonts\Cousine-Bold.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolai.ttf" "fonts\Cousine-Italic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolaz.ttf" "fonts\Cousine-BoldItalic.ttf" /Y >nul 2>&1

echo Fonts installed successfully!
echo.
echo Starting Kubik...
kubik.exe %*
