<<<<<<< HEAD
USE [Proper_Base]
GO

/****** Object:  View [dbo].[Spu_inventory_performace_v]    Script Date: 13/09/2022 16:13:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Spu_inventory_performance_v]
AS
SELECT        dbo.Spu_Inventory_Performance.id, dbo.Spu_Inventory_Performance.Analysis_id, dbo.Spu_Inventory_Performance.Spu_id, dbo.Spu_Inventory_Performance.Date, dbo.Spu_Inventory_Performance.Planner_Id, 
                         dbo.Spu_Inventory_Performance.Lead_time_minimum, dbo.Spu_Inventory_Performance.Lead_time_modal_value, dbo.Spu_Inventory_Performance.Lead_time_average, dbo.Spu_Inventory_Performance.Lead_time_maximum, 
                         dbo.Spu_Inventory_Performance.Lead_time_unit, dbo.Spu_Inventory_Performance.Lot_size_minimum, dbo.Spu_Inventory_Performance.Lot_size_multiple, dbo.Spu_Inventory_Performance.Unit_cost, 
                         dbo.Spu_Inventory_Performance.Current_stage, dbo.Spu_Inventory_Performance.Relevant_history_begin, dbo.Spu_Inventory_Performance.Relevant_history_end, dbo.Spu_Inventory_Performance.Repeatability, 
                         dbo.Spu_Inventory_Performance.Variability_relevance, dbo.Spu_Inventory_Performance.Predictability, dbo.Spu_Inventory_Performance.Planning_method, dbo.Spu_Inventory_Performance.Overall_criticality, 
                         dbo.Spu_Inventory_Performance.Service_level, dbo.Spu_Inventory_Performance.Push_vs_Pull_difference_value, dbo.Spu_Inventory_Performance.Safety_stock_quantity, dbo.Spu_Inventory_Performance.EOQ_quantity, 
                         dbo.Spu_Inventory_Performance.Maximum_inventory_quantity, dbo.Spu_Inventory_Performance.Average_inventory_quantity, dbo.Spu_Inventory_Performance.Average_inventory_value, 
                         dbo.Spu_Inventory_Performance.Historical_demand_quantity_standard_bucket, dbo.Spu_Inventory_Performance.Historical_demand_value_standard_bucket, 
                         dbo.Spu_Inventory_Performance.Historical_demand_average_quantity_lead_time, dbo.Spu_Inventory_Performance.Historical_demand_average_value_lead_time, dbo.Spu_Inventory_Performance.Last_standard_bucket_date, 
                         dbo.Spu_Inventory_Performance.Last_standard_bucket_demand_quantity, dbo.Spu_Inventory_Performance.Last_standard_bucket_demand_value, 
                         dbo.Spu_Inventory_Performance.Current_lead_time_demand_forecast_quantity, dbo.Spu_Inventory_Performance.Current_lead_time_demand_forecast_value, dbo.Spu_Inventory_Performance.Current_inventory_quantity, 
                         dbo.Spu_Inventory_Performance.Current_inventory_value, dbo.Spu_Inventory_Performance.Current_inventory_percentage, dbo.Spu_Inventory_Performance.Current_inventory_coverage, 
                         dbo.Spu_Inventory_Performance.Inventory_control_status, dbo.Spu_Inventory_Performance.Current_safety_stock_quantity, dbo.Spu_Inventory_Performance.Current_safety_stock_value, 
                         dbo.Spu_Inventory_Performance.Current_safety_stock_coverage, dbo.Spu_Inventory_Performance.Current_EOQ_quantity, dbo.Spu_Inventory_Performance.Current_EOQ_value, 
                         dbo.Spu_Inventory_Performance.Current_EOQ_coverage, dbo.Spu_Inventory_Performance.Current_maximum_inventory_quantity, dbo.Spu_Inventory_Performance.Current_maximum_inventory_value, 
                         dbo.Spu_Inventory_Performance.Current_maximum_inventory_coverage, dbo.Spu_Inventory_Performance.Below_minimum_quantity, dbo.Spu_Inventory_Performance.Below_minimum_value, 
                         dbo.Spu_Inventory_Performance.Below_minimum_coverage, dbo.Spu_Inventory_Performance.Above_maximum_quantity, dbo.Spu_Inventory_Performance.Above_maximum_value, 
                         dbo.Spu_Inventory_Performance.Above_maximum_coverage, dbo.spu.Management_unit_id, dbo.spu_parameter.Proper_Assessment, dbo.spu_parameter.Proper_Action_monitoring, dbo.spu_parameter.Proper_Stock_analysis, 
                         CASE WHEN spu_parameter.Proper_Assessment = '01' AND spu_parameter.Proper_Action_monitoring = '01' AND spu_parameter.Proper_Stock_analysis = '01' THEN '01' ELSE '02' END AS proper_management
FROM            dbo.Spu_Inventory_Performance LEFT OUTER JOIN
                         dbo.spu ON dbo.Spu_Inventory_Performance.Spu_id = dbo.spu.Id LEFT OUTER JOIN
                         dbo.spu_parameter ON dbo.spu_parameter.spu_id = dbo.spu.Id
GO

=======
USE [Proper_Base]
GO

/****** Object:  View [dbo].[Spu_inventory_performace_v]    Script Date: 13/09/2022 16:13:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Spu_inventory_performance_v]
AS
SELECT        dbo.Spu_Inventory_Performance.id, dbo.Spu_Inventory_Performance.Analysis_id, dbo.Spu_Inventory_Performance.Spu_id, dbo.Spu_Inventory_Performance.Date, dbo.Spu_Inventory_Performance.Planner_Id, 
                         dbo.Spu_Inventory_Performance.Lead_time_minimum, dbo.Spu_Inventory_Performance.Lead_time_modal_value, dbo.Spu_Inventory_Performance.Lead_time_average, dbo.Spu_Inventory_Performance.Lead_time_maximum, 
                         dbo.Spu_Inventory_Performance.Lead_time_unit, dbo.Spu_Inventory_Performance.Lot_size_minimum, dbo.Spu_Inventory_Performance.Lot_size_multiple, dbo.Spu_Inventory_Performance.Unit_cost, 
                         dbo.Spu_Inventory_Performance.Current_stage, dbo.Spu_Inventory_Performance.Relevant_history_begin, dbo.Spu_Inventory_Performance.Relevant_history_end, dbo.Spu_Inventory_Performance.Repeatability, 
                         dbo.Spu_Inventory_Performance.Variability_relevance, dbo.Spu_Inventory_Performance.Predictability, dbo.Spu_Inventory_Performance.Planning_method, dbo.Spu_Inventory_Performance.Overall_criticality, 
                         dbo.Spu_Inventory_Performance.Service_level, dbo.Spu_Inventory_Performance.Push_vs_Pull_difference_value, dbo.Spu_Inventory_Performance.Safety_stock_quantity, dbo.Spu_Inventory_Performance.EOQ_quantity, 
                         dbo.Spu_Inventory_Performance.Maximum_inventory_quantity, dbo.Spu_Inventory_Performance.Average_inventory_quantity, dbo.Spu_Inventory_Performance.Average_inventory_value, 
                         dbo.Spu_Inventory_Performance.Historical_demand_quantity_standard_bucket, dbo.Spu_Inventory_Performance.Historical_demand_value_standard_bucket, 
                         dbo.Spu_Inventory_Performance.Historical_demand_average_quantity_lead_time, dbo.Spu_Inventory_Performance.Historical_demand_average_value_lead_time, dbo.Spu_Inventory_Performance.Last_standard_bucket_date, 
                         dbo.Spu_Inventory_Performance.Last_standard_bucket_demand_quantity, dbo.Spu_Inventory_Performance.Last_standard_bucket_demand_value, 
                         dbo.Spu_Inventory_Performance.Current_lead_time_demand_forecast_quantity, dbo.Spu_Inventory_Performance.Current_lead_time_demand_forecast_value, dbo.Spu_Inventory_Performance.Current_inventory_quantity, 
                         dbo.Spu_Inventory_Performance.Current_inventory_value, dbo.Spu_Inventory_Performance.Current_inventory_percentage, dbo.Spu_Inventory_Performance.Current_inventory_coverage, 
                         dbo.Spu_Inventory_Performance.Inventory_control_status, dbo.Spu_Inventory_Performance.Current_safety_stock_quantity, dbo.Spu_Inventory_Performance.Current_safety_stock_value, 
                         dbo.Spu_Inventory_Performance.Current_safety_stock_coverage, dbo.Spu_Inventory_Performance.Current_EOQ_quantity, dbo.Spu_Inventory_Performance.Current_EOQ_value, 
                         dbo.Spu_Inventory_Performance.Current_EOQ_coverage, dbo.Spu_Inventory_Performance.Current_maximum_inventory_quantity, dbo.Spu_Inventory_Performance.Current_maximum_inventory_value, 
                         dbo.Spu_Inventory_Performance.Current_maximum_inventory_coverage, dbo.Spu_Inventory_Performance.Below_minimum_quantity, dbo.Spu_Inventory_Performance.Below_minimum_value, 
                         dbo.Spu_Inventory_Performance.Below_minimum_coverage, dbo.Spu_Inventory_Performance.Above_maximum_quantity, dbo.Spu_Inventory_Performance.Above_maximum_value, 
                         dbo.Spu_Inventory_Performance.Above_maximum_coverage, dbo.spu.Management_unit_id, dbo.spu_parameter.Proper_Assessment, dbo.spu_parameter.Proper_Action_monitoring, dbo.spu_parameter.Proper_Stock_analysis, 
                         CASE WHEN spu_parameter.Proper_Assessment = '01' AND spu_parameter.Proper_Action_monitoring = '01' AND spu_parameter.Proper_Stock_analysis = '01' THEN '01' ELSE '02' END AS proper_management
FROM            dbo.Spu_Inventory_Performance LEFT OUTER JOIN
                         dbo.spu ON dbo.Spu_Inventory_Performance.Spu_id = dbo.spu.Id LEFT OUTER JOIN
                         dbo.spu_parameter ON dbo.spu_parameter.spu_id = dbo.spu.Id
GO

>>>>>>> cdf9169449318dde5a2e49a298fed292db6b2050
