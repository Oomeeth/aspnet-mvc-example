CREATE PROCEDURE [dbo].[CreateUser]
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