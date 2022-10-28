use proper_MDIAS

ALTER TABLE Company_Proper add custom [nvarchar](50) NULL;

INSERT Term (Term_code,Term_description,Type,Functionality,Field,Width,Order_Grid,Field_name,Menu_structure,Quantity_Frozen_Fields,Align,Complemento) 
VALUES ('Menu.BasicInformation.DictionaryBaseSelection', 'Menu - Dictionary Base Selection', 'Menu', 'BasicInformation', 'DictionaryBaseSelection', '0', '0', 'dictionaryBaseSelection', '1.01.03.99', NULL, NULL, NULL);
