@echo off
REM Check if Python is installed and available in PATH
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed or not added to PATH. Please install Python and ensure it's in PATH.
    pause
    exit /b 1
)

REM Optional: Use python3 if "python" points to Python 2
python --version | findstr /r "Python 3.*" >nul
if %errorlevel% neq 0 (
    echo Python 3 is required. Please install Python 3.
    pause
    exit /b 1
)

REM Run the Python script
python MAIN.py
if %errorlevel% neq 0 (
    echo An error occurred while running the script.
    pause
    exit /b 1
)

REM Optional: Pause to keep the terminal open
pause
