-- USE [master];
-- CREATE LOGIN [logshipper] WITH PASSWORD ='**********', CHECK_POLICY=OFF, CHECK_EXPIRATIOn=OFF;
-- CREATE DATABASE [LogShipped];
BACKUP DATABASE [LogShipped] TO DISK = 'C:\home\harato\SQLBackups\Logshipped.bak';
BACKUP LOG [LogShipped] TO DISK = 'C:\home\harato\SQLBackups\Logshipped.trn';
USE [LogShipped];
CREATE USER [Logshipper] FOR LOGIN [Logshipper];
ALTER ROLE [db_backupoperator] ADD MEMBER [logshipper];
