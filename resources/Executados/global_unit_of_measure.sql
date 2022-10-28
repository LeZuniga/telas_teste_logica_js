USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Drop table Global_Unit_of_Measure;

CREATE TABLE [dbo].[Global_Unit_of_Measure](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[proper_company_code] [nvarchar](20) NOT NULL,
	[Unit_of_measure_code] [nvarchar](4) NULL,
	[Unit_of_measure_description] [nvarchar](100) NULL,
	[Measured_characteristic] [nvarchar](2) NULL,
	[Conversion_factor] [numeric](18, 6) NULL,
 CONSTRAINT [PK_Global_Unit_of_Measure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.GlobalUnitOfMeasure', N'Menu - Basic Data - GlobalUnitOfMeasure', N'Menu', N'BasicInformation', N'GlobalUnitOfMeasure', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'globalUnitOfMeasure', N'1.01.07.05', NULL, NULL)
