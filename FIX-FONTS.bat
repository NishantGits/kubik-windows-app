@echo off
echo ========================================
echo Kubik Font Fix Utility
echo ========================================
echo.
echo This will ensure fonts are properly set up
echo for Kubik to run without font errors.
echo.

cd /d "%~dp0"

echo Creating fonts directory...
if not exist "fonts" mkdir fonts

echo Copying Windows system fonts to Kubik...
copy "C:\Windows\Fonts\arial.ttf" "fonts\Arimo-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\arialbd.ttf" "fonts\Arimo-Bold.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\ariali.ttf" "fonts\Arimo-Italic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\arialbi.ttf" "fonts\Arimo-BoldItalic.ttf" /Y >nul 2>&1

copy "C:\Windows\Fonts\consola.ttf" "fonts\Cousine-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolab.ttf" "fonts\Cousine-Bold.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolai.ttf" "fonts\Cousine-Italic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolaz.ttf" "fonts\Cousine-BoldItalic.ttf" /Y >nul 2>&1

echo Also copying to root directory for compatibility...
copy "C:\Windows\Fonts\arial.ttf" "Arimo-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consola.ttf" "Cousine-Regular.ttf" /Y >nul 2>&1

echo.
echo Font setup complete!
echo.
echo Creating robust configuration file...
echo # Kubik Configuration - Font Fixed > kubik.conf
echo font_path = fonts/Arimo-Regular.ttf >> kubik.conf
echo font_path_bold = fonts/Arimo-Bold.ttf >> kubik.conf
echo font_path_italic = fonts/Arimo-Italic.ttf >> kubik.conf
echo font_path_bold_italic = fonts/Arimo-BoldItalic.ttf >> kubik.conf
echo mono_font_path = fonts/Cousine-Regular.ttf >> kubik.conf
echo mono_font_path_bold = fonts/Cousine-Bold.ttf >> kubik.conf
echo mono_font_path_italic = fonts/Cousine-Italic.ttf >> kubik.conf
echo mono_font_path_bold_italic = fonts/Cousine-BoldItalic.ttf >> kubik.conf
echo fallback_font_path = fonts/DroidSansFallbackFull.ttf >> kubik.conf
echo run_in_place = true >> kubik.conf

echo.
echo Starting Kubik with fixed configuration...
kubik.exe --config kubik.conf %*

pause
