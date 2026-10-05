@echo off
cd /d "%~dp0"

if not exist "venv\Scripts\python.exe" (
	echo Project virtual environment not found at "%~dp0venv".
	echo Create it with: py -3.11 -m venv venv
	echo Then install requirements with: venv\Scripts\python.exe -m pip install -r requirements.txt
	pause
	exit /b 1
)

"venv\Scripts\python.exe" "run.py" --execution-provider cuda %*
if errorlevel 1 pause
