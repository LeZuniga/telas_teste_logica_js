use proper_base;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='validation_Maximum_Error_And_Minimum_Coverage_Effective') 
	alter table spu add validation_Maximum_Error_And_Minimum_Coverage_Effective int default 0 NULL;
	
	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Standard_Processes' AND COLUMN_NAME='Code') 
	alter table Standard_Processes add [Code] [nvarchar](50) NULL;	
	
DELETE 	Standard_Processes;
DBCC CHECKIDENT('Standard_Processes', RESEED, 0)

INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Sumarização da Demanda em Buckets', 'br.com.straight.proper.jobs.SumarizacaoDemandaBucketsDefinidos', 'SUM_DEM_BUCK')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Identificação de Outliers', 'br.com.straight.proper.jobs.IdentificacaoOutliers', 'IDENT_OUT')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Avaliação de Repetividade', 'br.com.straight.proper.jobs.AvaliacaoRepetitividade', 'AVA_REP')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Validar Itens', 'br.com.straight.proper.jobs.ValidarItens', 'VAL_ITM')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Validar Spus', 'br.com.straight.proper.jobs.ValidarSpus', 'VAL_SPU')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular CustoUnitario Spus', 'br.com.straight.proper.jobs.CalcularCustoUnitarioSpus', 'CAL_CUNIT_SPU')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular LeadTime Spus', 'br.com.straight.proper.jobs.CalcularLeadTimeSpus', 'CAL_LEADT_SPU')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular LeadTimeSpus Total', 'br.com.straight.proper.jobs.CalcularLeadTimeSpusTotal', 'CAL_LEADT_TOTAL_SPU')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular LifeCycle Itens', 'br.com.straight.proper.jobs.CalcularLifeCycleItens', 'CAL_LIFEC_ITM')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular LifeCycle Spus', 'br.com.straight.proper.jobs.CalcularLifeCycleSpus', 'CAL_LIFEC_SPU')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular Relevancia Da Demanda', 'br.com.straight.proper.jobs.CalcularRelevanciaDaDemanda', 'CAL_RELE_DEM')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculo Previsibilidade', 'br.com.straight.proper.jobs.CalculoPrevisibilidade', 'CAL_PREV')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculos Demanda Prevista', 'br.com.straight.proper.jobs.CalculosDemandaPrevista', 'CAL_DEM_PREV')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Complementacao Demanda Buckets Vazios', 'br.com.straight.proper.jobs.ComplementacaoDemandaBucketsVazios', 'COMPL_DEM_BUCK_VAZIOS')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Sumarizacao Demanda Prevista Bucket sDefinidos', 'br.com.straight.proper.jobs.SumarizacaoDemandaPrevistaBucketsDefinidos', 'SUM_DEM_PREV_BUCK')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Verificar Alarmes Estimativa Demanda', 'br.com.straight.proper.jobs.VerificarAlarmesEstimativaDemanda', 'VER_ALM_EST_DEM')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculo Da Relevancia Dos Erros De Previsao', 'br.com.straight.proper.jobs.CalculoDaRelevanciaDosErrosDePrevisao', 'CAL_REL_ERR_PREV')
	
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular Lead Time Supply Alternative', 'br.com.straight.proper.jobs.CalcularLeadTimeSupplyAlternative', 'CAL_LEAD_TIME_SUPL_ALT')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calcular Relevancia Estoques Esperados', 'br.com.straight.proper.jobs.CalcularRelevanciaEstoquesEsperados', 'CAL_RELEV_EST_ESP')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculo Da Criticidade', 'br.com.straight.proper.jobs.CalculoDaCriticidade', 'CAL_CRITIC')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculo Do Lote Economico', 'br.com.straight.proper.jobs.CalculoDoLoteEconomico', 'CAL_LOT_ECONOM')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculo Do Nivel De Servico', 'br.com.straight.proper.jobs.CalculoDoNivelDeServico', 'CAL_NIV_SERV')
INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Calculo Qualitative Factors Correction', 'br.com.straight.proper.jobs.CalculoQualitativeFactorsCorrection', 'CAL_QUAL_FACT_CORRECT')




