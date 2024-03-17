SELECT TOP (1000) * FROM [dbo].[employees]

Truncate table [dbo].[employees]

ALTER TABLE [dbo].[employees] ALTER COLUMN employee_name varchar(200) NULL;
ALTER TABLE [dbo].[employees] ALTER COLUMN employee_salary int NULL;
ALTER TABLE [dbo].[employees] ALTER COLUMN employee_age int NULL;
ALTER TABLE [dbo].[employees] ALTER COLUMN profile_image varchar(200) NULL;
