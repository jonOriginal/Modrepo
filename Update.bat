cd %temp%
rd modsrepo
mkdir modsrepo
cd modsrepo
powershell.exe Invoke-RestMethod -Uri https://github.com/jonOriginal/Modrepo/archive/main.zip -OutFile main.zip
tar -xf main.zip
cd Modrepo-main
xcopy /EXCLUDE:exclude.txt "%temp%/modsrepo/Modrepo-main/*.*" "%appdata%/.minecraft/mods" /Y /f 
