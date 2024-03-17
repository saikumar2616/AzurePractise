select name,is_cdc_enabled from sys.databases;

EXEC sys.sp_cdc_enable_db 
GO

select name,is_cdc_enabled from sys.databases;
-------------------------------------------------
-------------------------------------------------

select name, is_tracked_by_cdc from sys.tables;

EXEC sys.sp_cdc_enable_table
@source_schema ='dbo',
@source_name = 'employees',
@role_name = NULL,
@supports_net_changes=1
GO


select name, is_tracked_by_cdc from sys.tables;
