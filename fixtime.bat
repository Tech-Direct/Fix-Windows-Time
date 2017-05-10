@echo off
echo Run this script from your domain controller. (Exit to cancel.)
pause
w32tm /config /syncfromflags:manual /manualpeerlist:pool.ntp.org
w32tm /config /reliable:yes
w32tm /config /update
w32tm /resync
net stop w32time
net start w32time
