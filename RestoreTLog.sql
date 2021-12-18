SET NOCOUNT ON;

DECLARE @FileName nvarchar(100);
DECLARE @SQL nvarchar(max);
DECLARE @TLFILE TABLE
(ID INT IDENTITY(1, 1),
BackupFile VARCHAR(200),
ParentId INT,
Depth INT,
ISFILE BIT);

INSERT INTO @TLFILE(BackupFile, Depth, ISFILE);
EXEC xp_dirtree 'c:\home\secondary\SQLBackups\', 10, 1;

SET @FileName = (SELECT TOP 1 BackupFile FROM @TLFILE WHERE ISFILE = 1 AND DEPTH = 1 ORDER BY BackupFile DESC);

SET @sql = 'RESTORE LOG [LogShipped] from disk = ''c:\home\secondary\SQLBackups\' + @FileName + ''' WITH NORECOVERY';

EXEC sp_executeSQL @SQL;
GO
