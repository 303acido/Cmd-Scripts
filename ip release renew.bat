@echo off
echo Releasing current IP address...
ipconfig /release

echo Renewing IP address...
ipconfig /renew

echo IP address released and renewed successfully.
pause