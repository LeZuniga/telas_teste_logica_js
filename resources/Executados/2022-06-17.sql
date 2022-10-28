USE Proper_base

ALTER TABLE Demand_history add Demand_quantity_intrinsic_total_historical [numeric](18, 4) NULL;
ALTER TABLE Demand_history add Demand_quantity_grouped_local_independent_estimated_similarity [numeric](18, 4) NULL;
ALTER TABLE Demand_history add Demand_quantity_grouped_total_historical [numeric](18, 4) NULL;

EXEC sp_rename 'Demand_Forecast_History.Frozen_horizon_percentagem_forecast_error', 'Frozen_horizon_percentage_forecast_error', 'COLUMN';
