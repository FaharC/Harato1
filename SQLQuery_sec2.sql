USE [master];
CREATE LOGIN [logshipper] WITH PASSWORD = '**********', CHECK_POLICY=OFF, CHECK_EXPIRATION=OFF;
ALTER SERVER ROLE [dbcreator] ADD MEMBER[logshipper];
