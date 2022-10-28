USE [Proper_Base]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Demand_history](
[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
[Analysis_id] [numeric](18, 0) NULL,
[Spu_id] [numeric](18, 0) NULL,
[Bucket_Date] [datetime] NULL,
Demand_quantity_intrinsic_local_independent_historical [numeric](18, 4) NULL,
Demand_quantity_intrinsic_local_independent_estimated_similarity [numeric](18, 4) NULL,
Demand_quantity_intrinsic_local_dependent_historical [numeric](18, 4) NULL,
Demand_quantity_intrinsic_local_dependent_estimated_similarity [numeric](18, 4) NULL,
Demand_quantity_intrinsic_local_dependent_estimated_BOM [numeric](18, 4) NULL,
Demand_quantity_intrinsic_transferred_historical [numeric](18, 4) NULL,
Demand_quantity_intrinsic_transferred_estimated_similarity [numeric](18, 4) NULL,
Demand_quantity_intrinsic_transferred_estimated_supply_chain [numeric](18, 4) NULL,
Demand_quantity_grouped_local_independent_historical [numeric](18, 4) NULL,
Demand_quantity_grouped_local_independent_estimated [numeric](18, 4) NULL,
Demand_quantity_grouped_local_dependent_historical [numeric](18, 4) NULL,
Demand_quantity_grouped_local_dependent_estimated_similarity [numeric](18, 4) NULL,
Demand_quantity_grouped_local_dependent_estimated_BOM [numeric](18, 4) NULL,
Demand_quantity_grouped_transferred_historical [numeric](18, 4) NULL,
Demand_quantity_grouped_transferred_estimated_similarity [numeric](18, 4) NULL,
Demand_quantity_grouped_transferred_estimated_supply_chain [numeric](18, 4) NULL,
Demand_quantity_total [numeric](18, 4) NULL,
Demand_quantity_outlier_analysis [numeric](18, 4) NULL,
Demand_quantity_suggested [numeric](18, 4) NULL,
Demand_quantity_user [numeric](18, 4) NULL,
[User_note] [nvarchar](4000) NULL,
[Demand_quantity_effective] [numeric](18, 4) NULL

) ON [PRIMARY]
GO


