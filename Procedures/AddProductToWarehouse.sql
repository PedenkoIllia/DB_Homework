CREATE PROCEDURE [dbo].[AddProductToWarehouse]
	@WarehouseId INT,
	@ProductId INT,
	@Quantity INT
AS
BEGIN
	INSERT INTO [dbo].[WarehouseProduct] (WarehouseId, ProductId, Quantity) 
		VALUES (@WarehouseId, @ProductId, @Quantity)
END;
