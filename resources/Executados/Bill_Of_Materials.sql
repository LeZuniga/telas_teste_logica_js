USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bill_Of_Materials](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Item_id] [numeric](18, 0) NULL,
	[Scrap_Rate] [numeric](18, 2) NULL,
	[Region_Receiving_id] [numeric](18, 0) NULL,
	[Receiving_Management_Unit_id] [numeric](18, 0) NULL,
	[Production_Line_id] [numeric](18, 0) NULL,
	[Component_id] [numeric](18, 0) NULL,
	[Standard_Consumption_Quantity_1] [numeric](18, 6) NULL,
	[Standard_Consumption_Quantity_2] [numeric](18, 6) NULL
) ON [PRIMARY]
GO


