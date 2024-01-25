@echo off

call conda env list | findstr /C:"data_analytics" 1>nul
if errorlevel 1 (
    echo "Creating new environment"
    call conda env create -f environment.yml
) else (
    echo "Activating existing environment"
)

call conda activate data_analytics

call code .

echo "Done"
