/*
===================================================
Create Database and Schema
===================================================
Script Purpose:
  This script creates a new database named "DataWarehouse" after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas withinthe database: 'bronze','silver','gold'.

Warning:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. proced with caution,
  and ensure you have proper backups before running this script.
*/

use master;
go

if exists (sekect 1 from sys.database where name = 'DataWarehouse';
begin
  alter database DataWarehouse set single_user with rollback immediate;
end;
go

-- Create DataWarehouse database 
create database DataWarehouse;
go

use DataWarehouse;
go

--create schema
create schema bronze;
go
  
create schema silver;
go
  
create schema gold;
