@echo off
chcp 65001 > nul
setlocal

rem --- Nome do Arquivo de Saída
set output=filelist.csv

set myself=%~nx0

if exist "%output%" del "%output%"

for %%F in (*.*) do (
    if not exist "%%F\" (
        if /I not "%%~nxF"=="%myself%" if /I not "%%~nxF"=="%output%" (
            call echo %%~nxF,%%~nF,%%~nF>> "%output%"
        )
    )
)

echo Finalizado --- Saída %output%
pause