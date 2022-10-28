use proper_Mdias


ALTER TABLE spu add Last_standard_bucket_date [datetime] NULL;
ALTER TABLE spu add inventory_Control_Status [nvarchar](2) NULL;
ALTER TABLE spu add current_Maximum_Inventory_Coverage float(53) NULL;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu_Inventory_Performance' AND COLUMN_NAME='planer_id' )
	EXEC sp_rename 'Spu_Inventory_Performance.planer_id', 'planner_id', 'COLUMN';
	
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('SUM_QUADRO_DEM_EST', 'Sumarizacao Quadro Demanda Estoque', 'br.com.straight.proper.jobs.SumarizacaoQuadroDemandaEstoque');

