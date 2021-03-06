/*
Deployment script for crud_db

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "crud_db"
:setvar DefaultFilePrefix "crud_db"
:setvar DefaultDataPath "C:\Users\user-pc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\user-pc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Altering Procedure [dbo].[CreateUser]...';


GO
ALTER PROCEDURE [dbo].[CreateUser]
	@Id INT = 0,
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Phone NVARCHAR(10),
	@Email NVARCHAR(50),
	@UserAddress NVARCHAR(50),
	@UserDOB NVARCHAR(20),
	@UserPassword NVARCHAR(15),
	@AccountType NVARCHAR(10)
AS
BEGIN
	INSERT INTO dbo.[Users] (FirstName, LastName, Phone, Email, UserDOB, UserAddress, UserPassword, AccountType)
	VALUES (@FirstName, @LastName, @Phone, @Email, @UserDOB, @UserAddress, @UserPassword, @AccountType)
END
GO
PRINT N'Creating Procedure [dbo].[GetUser]...';


GO
CREATE PROCEDURE [dbo].[GetUser]
	@Id INT
AS
BEGIN
	SELECT *
	FROM dbo.[Users]
	WHERE Id = @Id
END
GO
PRINT N'Update complete.';


GO
