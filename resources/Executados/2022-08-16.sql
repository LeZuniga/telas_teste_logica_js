use proper_base

alter table Demand_History_Interface add begin_date [nvarchar](50) NULL;
alter table Demand_History_Interface add end_date [nvarchar](50) NULL;

update [interface_structure] set position=position+2 where interface_table_id=17 and position>0

insert [interface_structure] (interface_table_id, position, field_name,type) Values (17, 1, 'begin_date','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values (17, 2, 'end_date','STR');