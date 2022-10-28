USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Demand_history_detail](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[Bucket_Date] [datetime] NULL,
	[Date] [datetime] NULL,
	[Demand_quantity] [numeric](18, 4) NULL,
	Type [nvarchar](2) NULL,
	Client_company_id [numeric](18, 0) NULL,
	Client_unit_id [numeric](18, 0) NULL,
	Plant_id [numeric](18, 0) NULL,
	Production_line_id [numeric](18, 0) NULL,
	Product_id [numeric](18, 0) NULL,
	Origin_spu_id [numeric](18, 0) NULL,
	demand_History_Id [numeric](18, 0) NULL,
	demand_History_Interface_Id [numeric](18, 0) NULL
) ON [PRIMARY]
GO


