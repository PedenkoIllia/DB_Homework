CREATE PROCEDURE [dbo].[CreateProducerAndHisProducts]
	@ProducerCode int,
	@ProducerName nvarchar(100),
	@ProductsTable ProductTable READONLY
AS
BEGIN
	SET NOCOUNT ON   
	BEGIN TRANSACTION T1
		INSERT INTO [dbo].[Producers] (Code, ProducerName) VALUES (@ProducerCode, @ProducerName)
		INSERT INTO [dbo].[Products] (ProductName, ProducerId) SELECT ProductName, @@IDENTITY FROM @ProductsTable
	COMMIT TRAN T1; 
END;
