USE PROPER_BASE

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_RELEV_EST_CORR', 'Calcular Relevancia Estoques Correntes', 'br.com.straight.proper.jobs.CalcularRelevanciaEstoquesCorrentes');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_FALTA_EXCESSOS', 'Calculo da faltas e dos excessos', 'br.com.straight.proper.jobs.CalculoDasFaltasExcessos');



ALTER TABLE spu add  Current_inventory_quantity float(53) NULL;
ALTER TABLE spu add  Current_inventory_value float(53) NULL;
ALTER TABLE spu add  Current_inventory_percentage float(53) NULL;
ALTER TABLE spu add  Current_inventory_coverage_average_demand float(53) NULL;
ALTER TABLE spu add  Current_inventory_coverage_last_standard_bucket float(53) NULL;
ALTER TABLE spu add  Current_inventory_relevance float(53) NULL;
ALTER TABLE spu add  Current_inventory_relevance_order int NULL;
ALTER TABLE spu add  Current_inventory_accumulated_relevance float(53) NULL;
ALTER TABLE spu add  Current_inventory_ABC_classification [nvarchar](1) NULL;
ALTER TABLE spu add  Bellow_minimum_quantity float(53) NULL;
ALTER TABLE spu add  Bellow_minimum_value float(53) NULL;
ALTER TABLE spu add  Above_maximum_quantity float(53) NULL;
ALTER TABLE spu add  Above_maximum_value float(53) NULL;

