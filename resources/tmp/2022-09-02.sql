delete term where term_code='Header.DemandHistoryInterfaceList.date_hour';

alter table [Demand_History_Interface] drop column Interface_time_stamp_date;

//executado ambiente 2