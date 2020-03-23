--Table:Documents Storage
CREATE TABLE [dbo].[DMStore]
(
	[f_id] INT NULL , 
    [file_bin] VARBINARY(MAX) NOT NULL, 
    [file_name] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([file_name]) 
)
