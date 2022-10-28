use proper_base


ALTER TABLE spu alter column Historical_demand_relevance [numeric](18, 6) NULL;
ALTER TABLE spu alter column Historical_demand_accumulated_relevance [numeric](18, 6) NULL;


ALTER TABLE spu alter column Variability_relevance [numeric](18, 6) NULL;
ALTER TABLE spu alter column Variability_accumulated_relevance [numeric](18, 6) NULL;
ALTER TABLE spu alter column Forecast_error_relevance [numeric](18, 6) NULL;
ALTER TABLE spu alter column Forecast_error_accumulated_relevance [numeric](18, 6) NULL;
ALTER TABLE spu alter column Average_inventory_policy_relevance [numeric](18, 6) NULL;
ALTER TABLE spu alter column Average_inventory_policy_accumulated_relevance [numeric](18, 6) NULL;

update spu set Variability_classification_lead_time=null;
ALTER TABLE spu alter column Variability_classification_lead_time [nvarchar](2) NULL;
