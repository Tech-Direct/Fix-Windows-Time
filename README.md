# Fix-Windows-Time
Windows Server has a broken NTP daemon that needs fixed if you want your domain to have the correct time.

Run *fix_time.bat* as an administrator from your domain controller to fix time on all PCs in your network. Allow up to 15 minutes for all PCs to see the changes.

This is known to work on Server 2008 R2, Server 2012, Server 2012 R2 and Server 2016.

If you have further problems, run *reset_time_service.bat* on the affected clients and servers.
