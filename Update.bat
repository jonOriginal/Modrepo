cd %appdata%/.minecraft/mods/
for %%i in (*.*) do if not "%%i"=="Update.bat" if not "%%i"=="Update Mods.lnk" del /q "%%i"
cd %temp%
rd modsrepo
mkdir modsrepo
cd modsrepo
powershell.exe $global:progressPreference = 'silentlyContinue'; Invoke-RestMethod -Uri https://github.com/jonOriginal/Modrepo/archive/main.zip -OutFile main.zip
tar -xf main.zip
cd Modrepo-main
xcopy "%temp%/modsrepo/Modrepo-main/*.*" "%appdata%/.minecraft/mods" /Y /f 
