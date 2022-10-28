use proper_base;

ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_Item_Interface;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_Demand_Interface;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_Demand_Suggestion;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_SPU_Interface;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_Safety_Lead_Time_Usage;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_Safety_Stock_Coverage_Limits;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_Maximum_Forecast_Error;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_EOQ_Coverage_Limits;
ALTER TABLE [Parameters_Analysis] ADD DEFAULT '01' FOR parameters_Precedence_EOQ;

Update Parameters_Analysis set parameters_Precedence_Item_Interface='01' where parameters_Precedence_Item_Interface is null;
Update Parameters_Analysis set parameters_Precedence_Demand_Interface='01' where parameters_Precedence_Demand_Interface is null;
Update Parameters_Analysis set parameters_Precedence_Demand_Suggestion='01' where parameters_Precedence_Demand_Suggestion is null;
Update Parameters_Analysis set parameters_Precedence_SPU_Interface='01' where parameters_Precedence_SPU_Interface is null;
Update Parameters_Analysis set parameters_Precedence_Safety_Lead_Time_Usage='01' where parameters_Precedence_Safety_Lead_Time_Usage is null;
Update Parameters_Analysis set parameters_Precedence_Safety_Stock_Coverage_Limits='01' where parameters_Precedence_Safety_Stock_Coverage_Limits is null;
Update Parameters_Analysis set parameters_Precedence_Maximum_Forecast_Error='01' where parameters_Precedence_Maximum_Forecast_Error is null;
Update Parameters_Analysis set parameters_Precedence_EOQ_Coverage_Limits='01' where parameters_Precedence_EOQ_Coverage_Limits is null;
Update Parameters_Analysis set parameters_Precedence_EOQ='01' where parameters_Precedence_EOQ is null;

