﻿CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[Phone] NVARCHAR(10) NOT NULL,
	[Email] NVARCHAR(50) NOT NULL,
	[UserAddress] NVARCHAR(50) NOT NULL,
	[UserDOB] NVARCHAR(20) NOT NULL,
	[UserPassword] NVARCHAR(15) NOT NULL,
	[AccountType] NVARCHAR(10) NOT NULL
)