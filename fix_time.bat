@echo off
echo Run this script from your domain controller. (Exit to cancel.)
pause
w32tm /config /syncfromflags:manual /manualpeerlist:pool.ntp.org
w32tm /config /reliable:y
w32tm /config /update
w32tm /resync
net stop w32time
net start w32time
echo NTP fixed. Please wait up to 15 minutes for all computers in domain to sync.
pause
