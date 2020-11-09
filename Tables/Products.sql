CREATE TABLE [dbo].[Products]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
    [ProductName] NVARCHAR(100) NOT NULL,
	[ProducerId] INT NULL
	CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC), 
	CONSTRAINT [FK_Products_Producers] FOREIGN KEY ([ProducerId]) REFERENCES [dbo].[Producers] ([Id]) ON DELETE CASCADE,
);

	GO
	CREATE UNIQUE NONCLUSTERED INDEX [ProductName_IX]
    ON [dbo].[Products] ([ProductName]);
