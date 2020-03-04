CREATE TABLE [dbo].[Alimentos]
(
	[IDAlimento] INT NOT NULL PRIMARY KEY, 
    [Nome] NCHAR(10) NOT NULL, 
    [Descricao] NVARCHAR(50) NOT NULL, 
    [Valor Energetico] NVARCHAR(50) NOT NULL, 
    [Lipidos] DECIMAL NOT NULL, 
    [Hidratos] DECIMAL NOT NULL, 
    [Sal] DECIMAL NOT NULL, 
    [Fibra] DECIMAL NOT NULL, 
    [Protaina] DECIMAL NOT NULL, 
    [Ferro] DECIMAL NOT NULL, 
    [Imagem] IMAGE NOT NULL, 
    [IDUtilizador] INT NOT NULL, 
    [IDTipoAlimentos] INT NOT NULL, 
    CONSTRAINT [FK_Alimentos_Utilizadores] FOREIGN KEY ([IDUtilizador]) REFERENCES [Utilizadores]([IDUtilizador]), 
    CONSTRAINT [FK_Alimentos_TipoAlimentos] FOREIGN KEY ([IDTipoAlimentos]) REFERENCES [TipoAlimentos]([IDTipoAlimentos])
)
