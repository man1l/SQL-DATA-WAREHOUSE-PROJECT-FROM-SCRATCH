/*
=============================================================
Create Database and Schemas
=============================================================

📌 Script Purpose:
    This script creates a new database named 'DataWarehouse'. 
    It also sets up three schemas within the database: 
    'bronze', 'silver', and 'gold'—representing different 
    stages in the Medallion architecture.

⚠️ WARNING:
    Ensure that a database named 'DataWarehouse' does not 
    already exist on your server to avoid unintended conflicts.
    This script does not drop existing databases—manual cleanup 
    may be required.
*/
____________________________________________________________________________

USE master;
--Create Database 'DataWarehouse'
Create database DataWarehouse;
USE DataWarehouse;

--Create schema
Create SCHEMA bronze;
go
  
Create SCHEMA silver;
go
  
Create SCHEMA gold ;
go
