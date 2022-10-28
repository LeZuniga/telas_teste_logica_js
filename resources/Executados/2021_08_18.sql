use proper_base;

alter table Demand_History drop column Frozen_horizon_forecast_error;
alter table Demand_History drop column Frozen_horizon_percentagem_forecast_error;
alter table Demand_History drop column Number_of_outliers;

alter table Demand_Forecast_History add [Frozen_horizon_forecast_error] [numeric](18, 4) NULL;
alter table Demand_Forecast_History add [Frozen_horizon_percentagem_forecast_error] [numeric](18, 4) NULL;
alter table Demand_Forecast_History add [Number_of_outliers] [numeric](18, 0) NULL;


alter table Spu add [Relevant_history_duration_effective] [numeric](18, 4) NULL;
alter table Spu add Relevant_history_duration_unit_of_measure_effective [nvarchar](2) NULL;

CREATE TABLE [dbo].[Item_Company_Unit](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[item_id] [numeric](18, 0) NULL,
	[Company_id] [numeric](18, 0) NULL,
	[Company_unit_id] [numeric](18, 0) NULL,
	[Interval_unit] [nvarchar](2) NULL,
	[Average_supply_interval] [numeric](18, 4) NULL,
	[Lead_time_unit] [nvarchar](2) NULL,
	Lead_time_minimum [numeric](18, 4) NULL,
	Lead_time_average [numeric](18, 4) NULL,
	Lead_time_maximum [numeric](18, 4) NULL,
	Lot_size_minimum [numeric](18, 4) NULL,
	Lot_size_multiple [numeric](18, 4) NULL,
	Demand_supplied_average [numeric](18, 4) NULL,
	Planning_efficiency [numeric](18, 4) NULL,
	Validation_total [int] NULL,
	Validation_item [int] NULL,
	Validation_supplier [int] NULL,
	Validation_Interval [int] NULL,
	Validation_lead_time [int] NULL,
	Validation_lot_size [int] NULL,
	Validation_planning_efficiency [int] NULL


) ON [PRIMARY]
GO



