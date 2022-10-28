	
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.date_hour'
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.date_hour';
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.proper_company_code';
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.region_code_management_group';
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.management_group_code'; 
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.reference_date';
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.analysis_code';
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.description';
delete term where Term_code='Header.DemandForecastHistoryInterfaceList.item_code_origin';

	
update Demand_Forecast_History_Interface set Forecast_origin_date=convert(varchar,Forecast_origin_date_dt,103)
update Demand_Forecast_History_Interface set Forecast_target_date=convert(varchar,Forecast_target_date_dt,103)
