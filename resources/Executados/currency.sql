USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Currency](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[proper_company_code] [nvarchar](20) NOT NULL,
	[currency_code] [nvarchar](20) NOT NULL,
	[currency_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.Currency', N'Menu - Basic Data - Currency', N'Menu', N'BasicInformation', N'Currency', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'currency', N'1.01.07.04', NULL, NULL)
