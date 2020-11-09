CREATE TABLE [dbo].[Producers]
(
	[Id] INT IDENTITY (1, 1) NOT NULL,
	[Code] INT NOT NULL,
	[ProducerName] NVARCHAR(100) NOT NULL
	CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED ([Id] ASC)
);

	GO
	CREATE UNIQUE NONCLUSTERED INDEX [ProducerCode_IX]
    ON [dbo].[Producers] ([Code] ASC);
