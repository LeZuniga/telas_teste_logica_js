use proper_Base
alter table Region drop column Currency_code_1;
alter table Region drop column Currency_code_2;

alter table Management_Group drop column Currency_code_1;
alter table Management_Group drop column Currency_code_2;
alter table Management_Group add currency_id [numeric](18, 0) NULL;