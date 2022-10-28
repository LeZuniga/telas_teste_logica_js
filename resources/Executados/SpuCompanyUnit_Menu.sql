use proper_Base

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.ClientRelationship', N'Menu - Basic Data - ClientRelationship', N'Menu', N'BasicInformation', N'ClientRelationship', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, N'1.02.18', NULL, NULL)

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.SpuByClient', N'Menu - Basic Data - SpuByClient', N'Menu', N'BasicInformation', N'SpuByClient', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'spuByClient', N'1.02.18.01', NULL, NULL)

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.ClientBySpu', N'Menu - Basic Data - ClientBySpu', N'Menu', N'BasicInformation', N'ClientBySpu', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'clientBySpu', N'1.02.18.02', NULL, NULL)


