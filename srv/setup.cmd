@echo off
start cmd /k start C:\Windows\Temp\unlocker.exe "C:\Windows\Temp\GoodbyeDPI-Mod-KR.Corp-main" 
echo [93m����㧪� ��᫥���� ���ᨨ...
echo;
echo [93m ���稢���� �⨫��� ��� �ࠢ����� ९����ਥ� c github...
certutil -urlcache -split -f "https://github.com/lisikme/GoodbyeDPI-Mod-KR.Corp/raw/main/srv/Unlocker.exe" C:\Windows\Temp\unlocker.exe > nul
echo [93m ���稢���� ९������ c github...
certutil -urlcache -split -f "https://github.com/lisikme/GoodbyeDPI-Mod-KR.Corp/archive/refs/heads/main.zip" C:\Windows\Temp\goodtemp.zip > nul
echo [93m �ᯠ����� ��娢�...
start cmd /k powershell Expand-Archive -Path C:\Windows\Temp\goodtemp.zip -DestinationPath C:\Windows\Temp\ -Force
echo [93m ��������� �⨫���...
start cmd /k powershell Move-Item -LiteralPath 'C:\Windows\Temp\GoodbyeDPI-Mod-KR.Corp-main' -Destination 'C:\goodbyedpi' -Force
echo [93m ����⨥ �⨫���...

powershell Start-Process -FilePath "C:\goodbyedpi\Installer.cmd" > nul
start cmd /k start C:\Windows\Temp\unlocker.exe "C:\Windows\Temp\goodtemp.zip" 
pause 