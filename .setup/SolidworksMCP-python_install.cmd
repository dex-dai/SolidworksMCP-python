@echo off
if not exist "%USERPROFILE%\.mcp" mkdir "%USERPROFILE%\.mcp"
cd /d "%USERPROFILE%\.mcp"
git clone https://github.com/andrewbartels1/SolidworksMCP-python.git
cd /d "%USERPROFILE%\.mcp\SolidworksMCP-python"
python -m venv .venv
.venv\Scripts\python.exe -m pip install --upgrade pip setuptools wheel
.venv\Scripts\python.exe -m pip install -e .
pause