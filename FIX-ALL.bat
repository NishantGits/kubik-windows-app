@echo off
echo ========================================
echo Kubik Complete Asset Fix Utility
echo ========================================
echo.
echo This will fix ALL asset path issues:
echo - Font problems
echo - Shader problems  
echo - Texture problems
echo - Directory structure problems
echo.

cd /d "%~dp0"

echo Step 1: Fixing fonts...
if not exist "fonts" mkdir fonts
copy "C:\Windows\Fonts\arial.ttf" "fonts\Arimo-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\arialbd.ttf" "fonts\Arimo-Bold.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\ariali.ttf" "fonts\Arimo-Italic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\arialbi.ttf" "fonts\Arimo-BoldItalic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consola.ttf" "fonts\Cousine-Regular.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolab.ttf" "fonts\Cousine-Bold.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolai.ttf" "fonts\Cousine-Italic.ttf" /Y >nul 2>&1
copy "C:\Windows\Fonts\consolaz.ttf" "fonts\Cousine-BoldItalic.ttf" /Y >nul 2>&1

echo Step 2: Fixing directory structure...
if not exist "client" mkdir client
if not exist "builtin" mkdir builtin
if not exist "games" mkdir games
if not exist "textures" mkdir textures
if not exist "shaders" mkdir shaders

echo Step 3: Copying essential assets from backup locations...
if exist "textures\textures\*" (
    echo Moving textures to correct location...
    robocopy "textures\textures" "textures" /E /MOVE >nul 2>&1
)

if exist "client\client\*" (
    echo Moving client files to correct location...
    robocopy "client\client" "client" /E /MOVE >nul 2>&1
)

if exist "shaders\shaders\*" (
    echo Moving shaders to correct location...
    robocopy "shaders\shaders" "shaders" /E /MOVE >nul 2>&1
)

echo Step 4: Creating robust configuration...
echo # Kubik Configuration - Complete Fix > kubik.conf
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
echo texture_path = textures >> kubik.conf
echo shader_path = shaders >> kubik.conf
echo client_path = client >> kubik.conf
echo builtin_path = builtin >> kubik.conf

echo.
echo Asset fix complete!
echo.
echo Starting Kubik with complete fix...
kubik.exe --config kubik.conf %*

pause
