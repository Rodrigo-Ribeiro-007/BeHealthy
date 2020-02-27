CREATE TABLE [dbo].[Alimentos]
(
	[IDAlimento] INT NOT NULL PRIMARY KEY, 
    [Nome] NCHAR(10) NULL, 
    [Descricao] NVARCHAR(50) NULL, 
    [Valor Energetico] NVARCHAR(50) NULL, 
    [Lipidos] DECIMAL NULL, 
    [Hidratos] DECIMAL NULL, 
    [Sal] DECIMAL NULL, 
    [Fibra] DECIMAL NULL, 
    [Protaina] DECIMAL NULL, 
    [Ferro] DECIMAL NULL, 
    [Imagem] IMAGE NULL, 
    [IDUtilizador] INT NULL, 
    [IDTipoAlimentos] INT NULL, 
    CONSTRAINT [FK_Alimentos_Utilizadores] FOREIGN KEY ([IDUtilizador]) REFERENCES [Utilizadores]([IDUtilizador]), 
    CONSTRAINT [FK_Alimentos_TipoAlimentos] FOREIGN KEY ([IDTipoAlimentos]) REFERENCES [TipoAlimentos]([IDTipoAlimentos])
)
