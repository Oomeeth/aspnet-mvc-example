CREATE PROCEDURE [dbo].[GetUser]
	@Id INT
AS
BEGIN
	SELECT *
	FROM dbo.[Users]
	WHERE Id = @Id
END
