@echo off
echo Setting up Kubik environment...
set KUBIK_FONT_PATH=%~dp0Arimo-Regular.ttf
set KUBIK_FALLBACK_FONT=%~dp0DroidSansFallbackFull.ttf
echo Starting Kubik...
.\kubik.exe %*
pause
