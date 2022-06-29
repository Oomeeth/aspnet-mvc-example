CREATE PROCEDURE [dbo].[CreateBook]
	@Id INT,
	@Title NVARCHAR(50),
	@Author NVARCHAR(50),
	@BookDescription NVARCHAR(70),
	@ReleaseYear INT,
	@LibraryId INT,
	@IsAvailable BIT = 1,
	@BorrowedByUserId INT = -1
AS
BEGIN
	INSERT INTO dbo.[Books] (Title, Author, BookDescription, ReleaseYear, LibraryId)
	VALUES (@Title, @Author, @BookDescription, @ReleaseYear, @LibraryId)
END