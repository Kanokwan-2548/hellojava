@echo off
title Witches Coven - Starting Application
color 0A
echo.
echo    ========================================
echo    🧙‍♀️ WITCHES COVEN APPLICATION 🧙‍♀️
echo    ========================================
echo.
echo    Starting the mystical application...
echo.

REM Try to find and set Java
set JAVA_FOUND=0

REM Check common Java installation paths
if exist "C:\Users\Earn\AppData\Local\Temp\e2fc00f7-1b89-4b29-8802-fd82a94efc91_openjdk-25_windows-x64_bin.zip.c91\jdk-25\bin\java.exe" (
    set "JAVA_HOME=C:\Users\Earn\AppData\Local\Temp\e2fc00f7-1b89-4b29-8802-fd82a94efc91_openjdk-25_windows-x64_bin.zip.c91\jdk-25"
    set JAVA_FOUND=1
)
if exist "C:\Program Files\Java\jdk-17\bin\java.exe" (
    set "JAVA_HOME=C:\Program Files\Java\jdk-17"
    set JAVA_FOUND=1
)
if exist "C:\Program Files\Java\jdk-21\bin\java.exe" (
    set "JAVA_HOME=C:\Program Files\Java\jdk-21"
    set JAVA_FOUND=1
)
if exist "C:\Program Files (x86)\Java\jdk-17\bin\java.exe" (
    set "JAVA_HOME=C:\Program Files (x86)\Java\jdk-17"
    set JAVA_FOUND=1
)

if %JAVA_FOUND%==0 (
    echo    ❌ Java JDK not found!
    echo.
    echo    Please install Java JDK 17 or higher:
    echo    https://www.oracle.com/java/technologies/downloads/
    echo.
    echo    After installation, restart this script.
    pause
    exit /b 1
)

echo    ✅ Java found at: %JAVA_HOME%
set PATH=%JAVA_HOME%\bin;%PATH%

REM Try to run the application
echo    🌟 Launching Witches Coven...
echo.

REM Check if JAR exists
if exist "target\demo-0.0.1-SNAPSHOT.jar" (
    echo    Running from JAR file...
    java -jar target\demo-0.0.1-SNAPSHOT.jar
) else (
    echo    JAR not found, trying to run from classes...
    if exist "target\classes\com\example\demo\DemoApplication.class" (
        java -cp "target/classes" com.example.demo.DemoApplication
    ) else (
        echo    ❌ No compiled classes found!
        echo    Please run: mvnw.cmd clean compile
        pause
        exit /b 1
    )
)

echo.
echo    🌐 Open your browser and go to: http://localhost:8080
echo    🧙‍♀️ Welcome to the Witches Coven!
echo.
pause
