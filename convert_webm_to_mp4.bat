@echo off
setlocal

where ffmpeg >nul 2>&1
if errorlevel 1 (
  echo ERROR: ffmpeg was not found in PATH.
  echo Please install ffmpeg and add it to PATH.
  pause
  exit /b 1
)

if "%~1"=="" (
  echo Drop one or more WebM files onto this BAT file.
  pause
  exit /b 0
)

:loop
if "%~1"=="" goto done

set "IN=%~1"
set "OUT=%~dpn1.mp4"

if exist "%OUT%" (
  echo.
  echo ERROR: Output file already exists.
  echo   "%OUT%"
  echo.
  echo Conversion was stopped to avoid overwriting the existing file.
  pause
  exit /b 1
)

echo.
echo Converting:
echo   "%IN%"
echo To:
echo   "%OUT%"

ffmpeg -i "%IN%" -vf "fps=30,format=yuv420p" -c:v libx264 -preset medium -crf 20 -c:a aac -b:a 192k -movflags +faststart "%OUT%"

if errorlevel 1 (
  echo.
  echo ERROR: Conversion failed.
  pause
  exit /b 1
)

shift
goto loop

:done
echo.
echo Done.
pause
