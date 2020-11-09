CREATE TABLE [dbo].[WarehouseProduct]
(
	[WarehouseId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Quantity] INT NOT NULL
	CONSTRAINT [PK_WarehouseProduct] PRIMARY KEY CLUSTERED ([WarehouseId] ASC, [ProductId] ASC),
	CONSTRAINT [FK_WarehouseProduct_Warehouses] FOREIGN KEY ([WarehouseId]) REFERENCES [dbo].[Warehouses] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_WarehouseProduct_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]) ON DELETE CASCADE
)
