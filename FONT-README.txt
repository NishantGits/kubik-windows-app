========================================
      KUBIK FONT FIX INSTRUCTIONS
========================================

If you're getting "Failed to find a valid font" error:

OPTION 1 - AUTOMATIC FIX (RECOMMENDED):
1. Double-click FIX-FONTS.bat
2. Wait for it to complete
3. The game will start automatically

OPTION 2 - MANUAL FIX:
1. Run FIX-FONTS.bat once to set up fonts
2. Then run kubik.exe normally

OPTION 3 - SYSTEM FONT CONFIGURATION:
1. Double-click RUN-KUBIK.bat
2. This uses Windows system fonts directly

WHY THIS HAPPENS:
- Kubik looks for fonts in specific locations
- When downloaded from GitHub, paths might not resolve correctly
- FIX-FONTS.bat copies Windows system fonts to the expected locations

FILES CREATED BY FIX-FONTS.bat:
- fonts/Arimo-Regular.ttf (copied from arial.ttf)
- fonts/Cousine-Regular.ttf (copied from consola.ttf)
- kubik.conf (configuration with correct font paths)

AFTER RUNNING FIX-FONTS.bat:
- You can run kubik.exe directly
- Or use FIX-FONTS.bat every time (it's safe to run multiple times)

========================================
