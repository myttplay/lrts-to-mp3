@echo off
cd /d %~dp0
rem Launch with py launcher (no console window); needs Python + pywin32.
where pyw >nul 2>nul
if not errorlevel 1 (
    start "" pyw "%~dp0lanren_gui.py"
) else (
    start "" pythonw "%~dp0lanren_gui.py"
)
