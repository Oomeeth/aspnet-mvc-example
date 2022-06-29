CREATE PROCEDURE [dbo].[GetBooks]
AS
BEGIN
	SELECT Id, Title, Author, BookDescription, ReleaseYear, IsAvailable
	FROM dbo.[Books]
END