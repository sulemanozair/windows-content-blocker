@echo off
REM Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo ============================================================
    echo ERROR: This must run as Administrator!
    echo ============================================================
    echo.
    echo Right-click on this file and select:
    echo "Run as administrator"
    echo.
    pause
    exit /b 1
)

cd /d "c:\Users\Suleman Ozair\OneDrive\Desktop\python_basics"
python content_blocker.py
pause
