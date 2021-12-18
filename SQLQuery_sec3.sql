SELECT 
[h].[destination_database_name],
[h].[restore_date],
[m].physical_device_name
 FROM msdb.dbo.restorehistory h
 INNER JOIN msdb.dbo.backupset s ON [h].[backup_set_id] = [s].[backup_set_id]
 INNER JOIN msdb.dbo.backupmediafamily m ON [s].[media_set_id] = [m].[media_set_id]
 ORDER BY [h].[restore_date] DESC