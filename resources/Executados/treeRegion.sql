delete term where term.Term_code='Label.Region-Region.CurrencyCode1'
delete term where term.Term_code='Label.Region-Region.CurrencyCode2'

alter table Management_Unit add currency_id numeric(18,0);
