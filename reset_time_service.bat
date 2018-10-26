@echo off
echo This script will fix problems with the w32tm service.
echo It can be run on clients or servers.
echo Press any key to unregister w32time.
net stop w32time
w32tm /debug /disable
w32tm /unregister
echo The previous steps should have completed successfully.
echo Press any key to begin registering w32time.
pause
w32tm /register
net start w32time
pause All steps complete. Please reboot if problems persist.
pause