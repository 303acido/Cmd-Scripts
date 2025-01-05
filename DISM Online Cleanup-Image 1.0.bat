SC config trustedinstaller start=auto
net stop bits
net stop wuauserv
net stop msiserver
net stop cryptsvc
net stop appidsvc
netsh winsock reset
netsh winsock reset proxy
DISM /Online /Cleanup-Image /ScanHealth

DISM /Online /Cleanup-Image /CheckHealth

DISM /Online /Cleanup-Image /RestoreHealth

DISM /online /Cleanup-Image /AnalyzeComponentStore

pause

DISM /Online /Cleanup-Image /StartComponentCleanup


SFC /Scannow
pause
net start bits
net start wuauserv
net start msiserver
net start cryptsvc
net start appidsvc 

chkdsk c: /F /R /X /B /scan
pause
Shutdown /r

