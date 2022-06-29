CREATE TABLE [dbo].[Books]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Title] NVARCHAR(50) NOT NULL,
	[Author] NVARCHAR(50) NOT NULL,
	[BookDescription] NVARCHAR(70) NOT NULL,
	[ReleaseYear] INT NOT NULL,
	[LibraryId] INT NOT NULL,
	[IsAvailable] BIT NOT NULL,
	[BorrowedByUserId] INT NOT NULL
)
