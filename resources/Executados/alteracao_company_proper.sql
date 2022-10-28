use proper_Base
alter table Company_Proper add Warehouse_classification [nvarchar](255) NULL;

INSERT INTO [dbo].[Term]
           ([Term_code]
           ,[Term_description]
           ,[Type]
           ,[Functionality]
           ,[Field]
           ,[Width]
           ,[Order_Grid]
           ,[Field_name]
           ,[Menu_structure]
)
     VALUES
           ('Menu.BasicInformation.WarehouseClassification'
           ,'Menu - Basic Data - Warehouse Classification'
           ,'Menu'
           ,'BasicInformation'
           ,'WarehouseClassification'
           ,0
           ,0
           ,'warehouseClassification'
           ,'1.02.03.02'
)
GO

CREATE TABLE [dbo].[Warehouse_Category](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Company_code] [nvarchar](20) NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO