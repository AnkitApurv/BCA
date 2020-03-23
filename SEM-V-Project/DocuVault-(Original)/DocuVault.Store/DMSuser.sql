--Table:User Credentials
CREATE TABLE [dbo].[DMSuser]
(
	[u_id] INT NULL , 
    [user_id] VARCHAR(50) NOT NULL, 
    [passwd] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([user_id]) 
)
