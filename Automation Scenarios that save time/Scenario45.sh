backupfolder="/home/ubuntu/Desktop/Automation-using-Shell-Scripts/ScenariosFullChapter2/"
find /var/log/apache2/ -mtime +1 -exec mv{} $backupfolder \;
netstat -au
netstat -lu
