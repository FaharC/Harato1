USE[master];
RESTORE DATABASE [LogShipped]
FROM DISK = 'C:\home\secondary\SQLBackups\Logshipped.bak' WITH NORECOVERY;
RESTORE LOG [LogShipped]
FROM DISK = 'C:\home\secondary\SQLBackups\Logshipped.trn' WITH NORECOVERY;

