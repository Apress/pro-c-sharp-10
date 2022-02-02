USE [master]
ALTER DATABASE [AutoLot] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
BACKUP LOG [AutoLot] TO  DISK = N'/var/opt/mssql/data/AutoLot_LogBackup_2020-12-21_00-15-37.bak' WITH NOFORMAT, NOINIT,  NAME = N'AutoLot_LogBackup_2020-12-21_00-15-37', NOSKIP, NOREWIND, NOUNLOAD,  NORECOVERY ,  STATS = 5
RESTORE DATABASE [AutoLot] FROM  DISK = N'/var/opt/mssql/backup/AutoLotDocker.bak' WITH  FILE = 1,  MOVE N'AutoLot' TO N'/var/opt/mssql/data/AutoLot.mdf',  MOVE N'AutoLot_log' TO N'/var/opt/mssql/data/AutoLot_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
ALTER DATABASE [AutoLot] SET MULTI_USER
