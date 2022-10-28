use proper_base
/****** Demand_history *******/
IF EXISTS (SELECT * FROM sys.indexes WHERE name='NonClusteredIndex-spu-bucket-date' AND object_id = OBJECT_ID('Demand_history'))
  begin
    DROP INDEX [NonClusteredIndex-spu-bucket-date] ON dbo.Demand_history;
  end

CREATE NONCLUSTERED INDEX [NonClusteredIndex-spu-bucket-date] ON [dbo].[Demand_history]
(
	[Spu_id] ASC,
	[Bucket_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** SPU *******/
if EXISTS (SELECT * FROM sys.key_constraints  WHERE type = 'PK' AND name='pk_spu')
  begin
    ALTER TABLE dbo.spu DROP CONSTRAINT pk_spu; 
  end
ALTER TABLE [dbo].[spu] ADD  CONSTRAINT [PK_spu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE name='NonClusteredIndex-chave' AND object_id = OBJECT_ID('[dbo].[spu]'))
  begin
    DROP INDEX [NonClusteredIndex-chave] ON [dbo].[spu];
  end
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-chave] ON [dbo].[spu]
(
	[analysis_id] ASC,
	[Management_unit_id] ASC,
	[Item_id] ASC,
	[Demand_category_classification_01_id] ASC,
	[Demand_category_classification_02_id] ASC,
	[Demand_category_classification_03_id] ASC,
	[Demand_category_classification_04_id] ASC,
	[Demand_category_classification_05_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** spu_parameter ******/
if EXISTS (SELECT * FROM sys.key_constraints  WHERE type = 'PK' AND name='PK_spu_parameter')
  begin
    ALTER TABLE dbo.spu_parameter DROP CONSTRAINT PK_spu_parameter; 
  end
ALTER TABLE [dbo].[spu_parameter] ADD  CONSTRAINT [PK_spu_parameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

IF EXISTS (SELECT * FROM sys.indexes WHERE name='NonClusteredIndex-spu_id' AND object_id = OBJECT_ID('[dbo].[spu_parameter]'))
  begin
    DROP INDEX [NonClusteredIndex-spu_id] ON [dbo].[spu_parameter];
  end
CREATE NONCLUSTERED INDEX [NonClusteredIndex-spu_id] ON [dbo].[spu_parameter]
(
	[spu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Itens ******/
if EXISTS (SELECT * FROM sys.key_constraints  WHERE type = 'PK' AND name='PK_Itens')
  begin
    ALTER TABLE dbo.Itens DROP CONSTRAINT PK_Itens; 
  end
ALTER TABLE [dbo].[Itens] ADD  CONSTRAINT [PK_Itens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE name='NonClusteredIndex-chave' AND object_id = OBJECT_ID('[dbo].[itens]'))
  begin
    DROP INDEX [NonClusteredIndex-chave] ON [dbo].[itens];
  end
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-chave] ON [dbo].[itens]
(
	[analysis_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Category ******/
if EXISTS (SELECT * FROM sys.key_constraints  WHERE type = 'PK' AND name='PK_Category')
  begin
    ALTER TABLE dbo.Category DROP CONSTRAINT PK_Category; 
  end
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE name='NonClusteredIndex-chave' AND object_id = OBJECT_ID('[dbo].[Category]'))
  begin
    DROP INDEX [NonClusteredIndex-chave] ON [dbo].[Category];
  end
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-chave] ON [dbo].[Category]
(
	[Classification_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Management_Unit ******/
if EXISTS (SELECT * FROM sys.key_constraints  WHERE type = 'PK' AND name='PK_Management_Unit')
  begin
    ALTER TABLE dbo.Management_Unit DROP CONSTRAINT PK_Management_Unit; 
  end
ALTER TABLE [dbo].[Management_Unit] ADD  CONSTRAINT [PK_Management_Unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE name='NonClusteredIndex-chave' AND object_id = OBJECT_ID('[dbo].[Management_Unit]'))
  begin
    DROP INDEX [NonClusteredIndex-Management_unit_code] ON [dbo].[Management_Unit];
  end
CREATE NONCLUSTERED INDEX [NonClusteredIndex-Management_unit_code] ON [dbo].[Management_Unit]
(
	[Management_unit_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO