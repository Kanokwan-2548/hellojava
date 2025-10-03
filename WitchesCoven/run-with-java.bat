@echo off
title Witches Coven - Auto Java Setup
color 0A
echo.
echo    ========================================
echo    🧙‍♀️ WITCHES COVEN APPLICATION 🧙‍♀️
echo    ========================================
echo.
echo    Setting up Java environment...
echo.

REM Try to find Java in common locations
set JAVA_FOUND=0
set JAVA_PATH=

REM Check for Java in Program Files
for /d %%i in ("C:\Program Files\Java\*") do (
    if exist "%%i\bin\java.exe" (
        set "JAVA_PATH=%%i"
        set JAVA_FOUND=1
        echo    Found Java at: %%i
    )
)

REM Check for Java in Program Files (x86)
if %JAVA_FOUND%==0 (
    for /d %%i in ("C:\Program Files (x86)\Java\*") do (
        if exist "%%i\bin\java.exe" (
            set "JAVA_PATH=%%i"
            set JAVA_FOUND=1
            echo    Found Java at: %%i
        )
    )
)

REM Check for Java in user's temp directory
if %JAVA_FOUND%==0 (
    for /d %%i in ("C:\Users\%USERNAME%\AppData\Local\Temp\*jdk*") do (
        if exist "%%i\bin\java.exe" (
            set "JAVA_PATH=%%i"
            set JAVA_FOUND=1
            echo    Found Java at: %%i
        )
    )
)

if %JAVA_FOUND%==0 (
    echo    ❌ Java not found in common locations!
    echo.
    echo    Please install Java JDK 17 or higher:
    echo    https://www.oracle.com/java/technologies/downloads/
    echo.
    echo    Or download from: https://adoptium.net/
    pause
    exit /b 1
)

echo    ✅ Java found! Setting up environment...
set "JAVA_HOME=%JAVA_PATH%"
set "PATH=%JAVA_HOME%\bin;%PATH%"

echo    JAVA_HOME set to: %JAVA_HOME%
echo.
echo    🌟 Starting Witches Coven Application...
echo.

REM Try to run the application
if exist "mvnw.cmd" (
    echo    Using Maven wrapper...
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
