@echo off
echo Starting Witches Coven Application...
echo.

REM Check if Java is available
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install Java JDK 17 or higher
    echo Download from: https://www.oracle.com/java/technologies/downloads/
    pause
    exit /b 1
)

echo Java found! Starting application...
echo.

REM Try to run the compiled classes directly
java -cp "target/classes;target/lib/*" com.example.demo.DemoApplication

pause
