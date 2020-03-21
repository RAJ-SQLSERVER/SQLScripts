/*
Restore from file with replace, with force
12/18/2019

*/


USE [master]
ALTER DATABASE xxx SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE xxx 
FROM  DISK = N'xxx' 
WITH  FILE = 1,  NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 5
RESTORE LOG xxx 
FROM  DISK = N'xxx' 
WITH  FILE = 1,  NOUNLOAD,  STATS = 5

ALTER DATABASE xxx SET MULTI_USER

GO


USE [master]
ALTER DATABASE [Shield_Database_Airplane] SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [Shield_Database_Airplane] 
FROM  DISK = N'S:\MSSQLSERVER\Restores\20191217_1324\Shield_Database_Airplane20191217132138.Bak' 
WITH  FILE = 1,  NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 5
RESTORE LOG [Shield_Database_Airplane] 
FROM  DISK = N'S:\MSSQLSERVER\Restores\20191217_1324\Shield_Database_Airplane20191217132426.Trn' 
WITH  FILE = 1,  NOUNLOAD,  STATS = 5

ALTER DATABASE [Shield_Database_Airplane] SET MULTI_USER

GO
