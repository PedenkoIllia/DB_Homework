CREATE TABLE [dbo].[Warehouses]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
    [CodeName] NVARCHAR(30) NOT NULL,
    [Adress] NVARCHAR(100) NOT NULL
    CONSTRAINT [PK_Warehouses] PRIMARY KEY CLUSTERED ([Id] ASC)
);

	GO
	CREATE UNIQUE NONCLUSTERED INDEX [WarehouseCodeName_IX]
    ON [dbo].[Warehouses] ([CodeName]);
