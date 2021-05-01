@echo off
powershell md %APPDATA%\HEVCCoder2_x86_64 || (powershell rm -r %APPDATA%\HEVCCoder2_x86_64 && md %APPDATA%\HEVCCoder2_x86_64)
powershell cp .\* %APPDATA%\HEVCCoder2_x86_64 || exit
cd %APPDATA%\HEVCCoder2_x86_64 || exit
powershell .\7z.exe x publish.tar.gz.001 || exit
powershell .\7z.exe x publish.tar || exit
powershell .\HEVCCoder2.exe
