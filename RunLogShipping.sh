cd /home/harato/SQLScripts

sqlcmd -S . -U logshipper -P Sw0rdD4nce - i ./BackupTLog.sql

sleep 10

./CopyFileToServer.sh
