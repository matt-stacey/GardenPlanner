
@echo off

SET project=garden_planner
SET venv_dir=%project%_venv_win

if exist %venv_dir% (
    echo Virtual environment already exists; remove it if you would like to re-install
    PAUSE
    exit
) else (
    echo Installing virtual environment
    python -m venv %venv_dir%
    echo Installing pip requirements
    .\%venv_dir%\Scripts\python.exe -m pip install  -r .\python_requirements.txt
)

echo Press Enter to activate virtual environment
PAUSE

.\%venv_dir%\Scripts\activate.bat
