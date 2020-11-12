CREATE PROCEDURE [dbo].[AddProductToWarehouse]
	@WarehouseId INT,
	@ProductId INT,
	@Quantity INT
AS
BEGIN
	IF EXISTS (SELECT TOP (1) 1 FROM [dbo].[WarehouseProduct] WHERE ProductId = @ProductId AND WarehouseId = @WarehouseId )
	BEGIN
		UPDATE [dbo].[WarehouseProduct]
		SET Quantity = Quantity + @Quantity 
		WHERE ProductId = @ProductId AND WarehouseId = @WarehouseId
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[WarehouseProduct] (WarehouseId, ProductId, Quantity) 
		VALUES (@WarehouseId, @ProductId, @Quantity)
	END
END;
