@echo off
echo Fixing Java Environment for Witches Coven Application...
echo.

REM Try to find Java installation
set JAVA_PATH=
for /d %%i in ("C:\Program Files\Java\*") do (
    if exist "%%i\bin\java.exe" set JAVA_PATH=%%i
)
for /d %%i in ("C:\Program Files (x86)\Java\*") do (
    if exist "%%i\bin\java.exe" set JAVA_PATH=%%i
)

if "%JAVA_PATH%"=="" (
    echo ERROR: Java JDK not found!
    echo Please install Java JDK 17 or higher from:
    echo https://www.oracle.com/java/technologies/downloads/
    echo.
    echo After installation, restart this script.
    pause
    exit /b 1
)

echo Found Java at: %JAVA_PATH%
echo Setting JAVA_HOME...

REM Set JAVA_HOME for this session
set JAVA_HOME=%JAVA_PATH%
set PATH=%JAVA_HOME%\bin;%PATH%

echo JAVA_HOME set to: %JAVA_HOME%
echo.

REM Now try to build and run the application
echo Building application...
call mvnw.cmd clean package -DskipTests

if %errorlevel% neq 0 (
    echo Build failed! Trying to run with existing classes...
    goto :run_existing
)

echo Build successful! Running application...
java -jar target\demo-0.0.1-SNAPSHOT.jar
goto :end

:run_existing
echo Running with existing compiled classes...
java -cp "target/classes" com.example.demo.DemoApplication

:end
pause
