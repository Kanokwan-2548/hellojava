@echo off
title Witches Coven - Simple Run
color 0A
echo.
echo    ========================================
echo    🧙‍♀️ WITCHES COVEN APPLICATION 🧙‍♀️
echo    ========================================
echo.
echo    Starting the mystical application...
echo.

REM Try to run with Maven wrapper
echo    🌟 Trying to run with Maven wrapper...
echo.

if exist "mvnw.cmd" (
    echo    Found Maven wrapper, starting application...
    mvnw.cmd spring-boot:run
) else (
    echo    ❌ Maven wrapper not found!
    echo    Please make sure you are in the correct directory.
)

echo.
echo    🌐 Open your browser and go to: http://localhost:8080
echo    🧙‍♀️ Welcome to the Witches Coven!
echo.
pause
