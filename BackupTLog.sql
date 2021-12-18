USE [master];
GO

DECLARE @SQL NVARCHAR(MAX);
DECLARE @DateStamp NVARCHAR(20);
DECLARE @DBNAME SYSNAME;

SET @DateStamp = CONVERT(NVARCHAR(10),GETUTCDATE(),112) + '_' + 
CONVERT(NVARCHAR(2),DATEPART(HOUR,GETUTCDATE()))
CONVERT(NVARCHAR(2),DATEPART(MINUTE,GETUTCDATE()))
CONVERT(NVARCHAR(2),DATEPART(SECOND,GETUTCDATE()));

SET @DBName = 'LogShipped';
SET @sql = 'BACKUP LOG [' + @DBNAME + '] to disk =''C:\home\secondary\SQLBackups\' + 
@DBName + '_TL_Backup_' + @DateStamp + '.trn''';

EXEC [master].dbo.sp_executesql @sql;
GO
