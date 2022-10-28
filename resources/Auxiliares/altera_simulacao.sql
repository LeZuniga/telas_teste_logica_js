use proper_base
-- select Lead_time_minimum_suggested,Lead_time_average_suggested, lead_Time_Modal_Value_Suggested, Lead_time_maximum_suggested, Lead_time_standard_deviation_suggested from spu where id=7
-- select Lead_time_minimum_effective,Lead_time_average_effective, lead_Time_Modal_Value_effective, Lead_time_maximum_effective, Lead_time_standard_deviation_effective from spu where id=7
-- select Lead_time_Minimum,Lead_time_average, lead_Time_Modal_Value, Lead_time_maximum, Lead_time_standard_deviation from spu_parameter where spu_id=7

-- select Lot_size_minimum_suggested,Lot_size_multiple_suggested from spu where id=7
-- select Lot_size_minimum_effective,Lot_size_multiple_effective from spu where id=7
-- select Lot_size_Minimum, Lot_size_multiple from spu_parameter where spu_id=7



-- update spu set Bucket_type='01' where id=7
-- select 
--     Historical_demand_average_quantity_bucket,
--     Historical_demand_average_quantity_lead_time, 
--     demand_normality_lead_time
--  from spu where id=7

-- update spu set 
--     Historical_demand_average_quantity_bucket = 100,
--     Historical_demand_average_quantity_lead_time = 93.4,
--     demand_normality_lead_time = 1
-- where id=7

-- select 
--     Enabled_for_repeatability_evaluation,
--     Repeatability_indicator
--  from spu where id=7

-- update spu set 
--     Enabled_for_repeatability_evaluation = '01',
--     Repeatability_indicator = '01'
-- where id=7

-- update spu set 
--     Enabled_for_variability_evaluation = '01',
--     Standard_deviation_lead_time_quantity = 0.3
-- where id=7


-- select 
--     Enabled_for_variability_evaluation,
--     Standard_deviation_lead_time_quantity
--  from spu where id=7

-- update spu set 
--     Historical_demand_ABC_classification = 'C'
-- where id=7


-- select 
--     Historical_demand_ABC_classification
    
--  from spu where id=7

-- update spu set 
--     Variability_ABC_classification = 'C'
-- where id=7


-- select 
--     Variability_ABC_classification
    
--  from spu where id=7

-- update spu set 
--     Variability_ABC_classification = 'C'
-- where id=7


-- select Maximum_forecast_error_suggested from spu where id =  7
-- update spu set Maximum_forecast_error_suggested=0.3 where id = 7

-- select TOP 1 Date from Spu_Inventory_Performance where analysis_id=1 and spu_id=7 order by Date desc
-- update spu set Current_date_inventory_history = (select TOP 1 Date from Spu_Inventory_Performance where analysis_id=1 and spu_id=7 order by Date desc) where id=7
-- select Current_date_inventory_history from spu where id=7 


-- update Spu_Inventory_Performance set Inventory_control_status = '01' where spu_id=7

-- select * from Spu_Inventory_Performance where Spu_id = 7 and [Date]=CAST(N'2022-09-05' as date);



-- update  spu set Lead_time_standard_deviation_suggested=null  where id=7
-- update  spu set Lead_time_standard_deviation_effective=null  where id=7

-- update  spu_parameter set Lead_time_standard_deviation=null  where spu_id=7

update spu set Current_date_inventory_history = (select TOP 1 Date from Inventory where analysis_id=1 and spu_id=7 order by Date desc) where id=7
update spu set Inventory_control_status = '02' where id=7
update spu set 

    Current_Safety_Stock_Quantity  = 10,
    Current_Safety_Stock_Value  = 10,
    Current_Safety_Stock_Coverage  = 10,
    Current_Eoq_Quantity=10,
    Current_Eoq_Value=10,
    Current_Eoq_Coverage=10,
    Current_Maximum_Inventory_Quantity=10,
    Current_Maximum_Inventory_Value=10,
    Current_Maximum_Inventory_Coverage=10,
    Current_inventory_Quantity=10,
    Current_Inventory_Value=10,
    Current_Inventory_Coverage=10,
    Above_Maximum_Quantity=10,
    Above_Maximum_Value=10,
    Above_Maximum_Coverage=10,
    Below_Minimum_Quantity=10,
    Below_Minimum_Value=10,
    Below_Minimum_Coverage=10
where id = 7
update  spu set Last_standard_bucket_demand_quantity=3000  where id=7
update  spu set Last_standard_bucket_demand_value=6000  where id=7
update  spu set Current_lead_time_demand_forecast_quantity=303  where id=7
update  spu set Current_lead_time_demand_forecast_value=900  where id=7

select Current_date_inventory_history from spu where id=7

select TOP 1 date from Inventory where Spu_id=7
-- select Lead_time_minimum_suggested,Lead_time_average_suggested, lead_Time_Modal_Value_Suggested, Lead_time_maximum_suggested, Lead_time_standard_deviation_suggested from spu where id=7
-- select Lead_time_minimum_effective,Lead_time_average_effective, lead_Time_Modal_Value_effective, Lead_time_maximum_effective, Lead_time_standard_deviation_effective from spu where id=7
-- select Lead_time_Minimum,Lead_time_average, lead_Time_Modal_Value, Lead_time_maximum, Lead_time_standard_deviation from spu_parameter where spu_id=7
