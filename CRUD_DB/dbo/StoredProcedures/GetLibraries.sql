CREATE PROCEDURE [dbo].[GetLibraries]
AS
BEGIN
	SELECT Id, LibraryName
	FROM dbo.[Library]
END