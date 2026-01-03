@echo off
echo ========================================
echo   Contact Management App - Quick Start
echo ========================================
echo.
echo This script will start both servers:
echo   - Backend: http://localhost:5000
echo   - Frontend: http://localhost:3000
echo.
echo Make sure MongoDB is running!
echo To start MongoDB: net start MongoDB
echo.
pause

echo.
echo Starting Backend Server...
start cmd /k "cd /d "%~dp0backend" && npm start"

timeout /t 3 /nobreak >nul

echo Starting Frontend Server...
start cmd /k "cd /d "%~dp0frontend" && npm start"

echo.
echo Both servers are starting in separate windows...
echo The browser should open automatically at http://localhost:3000
echo.
pause
