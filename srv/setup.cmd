@echo off
echo [93m����㧪� ��᫥���� ���ᨨ...
echo;
certutil -urlcache -split -f "https://github.com/lisikme/GoodbyeDPI-Mod-KR.Corp/raw/main/srv/Unlocker.exe" C:\Windows\Temp\unlocker.exe > nul
echo [93m ���稢���� �⨫��� ��� �ࠢ����� ९����ਥ� c github...
certutil -urlcache -split -f "https://github.com/lisikme/GoodbyeDPI-Mod-KR.Corp/archive/refs/heads/main.zip" C:\Windows\Temp\goodbyedpi.zip > nul
echo [93m ���稢���� ९������ c github...
powershell Expand-Archive C:\Windows\Temp\goodbyedpi.zip -DestinationPath C:\
echo [93m �ᯠ����� ��娢�...
start C:\Windows\Temp\unlocker.exe "C:\goodbyedpi"
Rename "C:\GoodbyeDPI-Mod-KR.Corp-main" "goodbyedpi"
echo [93m ��������� �⨫���...
powershell Start-Process -FilePath "C:\goodbyedpi\Installer.cmd" > nul
echo [93m ����⨥ �⨫���...
start C:\Windows\Temp\unlocker.exe "C:\GoodbyeDPI-Mod-KR.Corp-main" "C:\Windows\Temp\goodbyedpi.zip" 
pause 