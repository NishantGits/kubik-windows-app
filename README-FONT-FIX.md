# Kubik Font Fix Instructions

The "Failed to find a valid font" error has been resolved by:

1. Created proper fonts/ directory structure
2. Copied system fonts with expected names:
   - fonts/Arimo-Regular.ttf (copied from arial.ttf)
   - fonts/Cousine-Regular.ttf (copied from consola.ttf)

## Usage:
- Run kubik.exe directly
- The application will now find the required fonts in the fonts/ directory

## Alternative:
If font issues persist, try:
```
kubik.exe --config system-fonts.conf
```

This uses Windows system fonts directly.
