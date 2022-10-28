use proper_base;

alter table [Standard_Processes] add Code [nvarchar](50) NULL;

update Standard_Processes set code='SUM_DEM_BUCK', class_name='br.com.straight.proper.jobs.SumarizacaoDemandaBucketsDefinidos' where [Standard_Processes_description]='Sumariação da Demanda em Buckets';
update Standard_Processes set code='AVA_REP', class_name='br.com.straight.proper.jobs.AvaliacaoRepetitividade' where [Standard_Processes_description]='Avaliação de Repetividade';
update Standard_Processes set code='VAL_ITM', class_name='br.com.straight.proper.jobs.ValidarItens' where [Standard_Processes_description]='Validar Itens';
update Standard_Processes set code='VAL_SPU', class_name='br.com.straight.proper.jobs.ValidarSpus' where [Standard_Processes_description]='Validar Spus';
update Standard_Processes set code='IDENT_OUT', class_name='br.com.straight.proper.jobs.IdentificacaoOutliers' where [Standard_Processes_description]='Identificação de Outliers';




insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_CUNIT_SPU', 'Calcular CustoUnitario Spus', 'br.com.straight.proper.jobs.CalcularCustoUnitarioSpus');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_LEADT_SPU', 'Calcular LeadTime Spus', 'br.com.straight.proper.jobs.CalcularLeadTimeSpus');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_LEADT_TOTAL_SPU', 'Calcular LeadTimeSpus Total', 'br.com.straight.proper.jobs.CalcularLeadTimeSpusTotal');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_LIFEC_ITM', 'Calcular LifeCycle Itens', 'br.com.straight.proper.jobs.CalcularLifeCycleItens');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_LIFEC_SPU', 'Calcular LifeCycle Spus', 'br.com.straight.proper.jobs.CalcularLifeCycleSpus');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_RELE_DEM', 'Calcular Relevancia Da Demanda', 'br.com.straight.proper.jobs.CalcularRelevanciaDaDemanda');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_PREV', 'Calculo Previsibilidade', 'br.com.straight.proper.jobs.CalculoPrevisibilidade');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_DEM_PREV', 'Calculos Demanda Prevista', 'br.com.straight.proper.jobs.CalculosDemandaPrevista');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('COMPL_DEM_BUCK_VAZIOS', 'Complementacao Demanda Buckets Vazios', 'br.com.straight.proper.jobs.ComplementacaoDemandaBucketsVazios');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('SUM_DEM_PREV_BUCK', 'Sumarizacao Demanda Prevista Bucket sDefinidos', 'br.com.straight.proper.jobs.SumarizacaoDemandaPrevistaBucketsDefinidos');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('VER_ALM_EST_DEM', 'Verificar Alarmes Estimativa Demanda', 'br.com.straight.proper.jobs.VerificarAlarmesEstimativaDemanda');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_REL_ERR_PREV', 'Calculo Da Relevancia Dos Erros De Previsao', 'br.com.straight.proper.jobs.CalculoDaRelevanciaDosErrosDePrevisao');



