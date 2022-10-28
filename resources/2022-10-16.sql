use proper_base

alter table Spu_Interface add  Safety_lead_time_unit [nvarchar](50) NULL;

Update term set Menu_structure='5.02.02.05' where Menu_structure='5.02.02.04'
Update term set Menu_structure='5.02.02.04' where Menu_structure='5.02.02.03'
Update term set Menu_structure='5.02.02.03' where Menu_structure='5.02.02.02'
Update term set Menu_structure='5.02.02.02' where Menu_structure='5.02.02.01'


INSERT Term (Term_code,Term_description,Type,Functionality,Field,Width,Order_Grid,Field_name,Menu_structure,Quantity_Frozen_Fields,Align,Complemento) 
VALUES ('Menu.ProperInterfaces.SpuInterfaceImport', 'Menu - Spu Interface Import', 'Menu', 'ProperInterfaces', 'SpuInterfaceImport', '0', '0', 'spuInterfaceImport', '5.02.02.01', NULL, NULL, NULL);

Update term set Menu_structure='5.02.01.05' where Menu_structure='5.02.01.04'
Update term set Menu_structure='5.02.01.04' where Menu_structure='5.02.01.03'
Update term set Menu_structure='5.02.01.03' where Menu_structure='5.02.01.02'
Update term set Menu_structure='5.02.01.02' where Menu_structure='5.02.01.01'


INSERT Term (Term_code,Term_description,Type,Functionality,Field,Width,Order_Grid,Field_name,Menu_structure,Quantity_Frozen_Fields,Align,Complemento) 
VALUES ('Menu.ProperInterfaces.	temInterfaceImport', 'Menu - Item Interface Import', 'Menu', 'ProperInterfaces', 'ItemInterfaceImport', '0', '0', 'itemInterfaceImport', '5.02.01.01', NULL, NULL, NULL);

/* repetir term proper_agc */