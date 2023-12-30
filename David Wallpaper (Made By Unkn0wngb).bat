@echo off
powershell.exe -ExecutionPolicy Bypass -Command "(New-Object System.Net.WebClient).DownloadFile('https://media-cdn.tripadvisor.com/media/photo-s/11/8a/59/c1/notre-copain-le-jmal.jpg', '%USERPROFILE%\Downloads\wallpaper.jpg')"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%USERPROFILE%\Downloads\wallpaper.jpg" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 1, True
pause
