USE Proper_base

ALTER TABLE [dbo].[Demand_history] ADD  CONSTRAINT [PK_Demand_history] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



ALTER TABLE [dbo].[item_parameters] ADD  CONSTRAINT [PK_item_parameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [NonClusteredIndex-item_id] ON [dbo].[item_parameters]
(
	[analysis_id] ASC,
	[Item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

update Standard_Processes set code='IDE_OUT_DEM', Standard_Processes_description='Identificacao Outliers Demanda',class_name='br.com.straight.proper.jobs.IdentificacaoOutliersDemanda' where code='IDENT_OUT'

update [interface_structure] set type='CH_X', table_aux='plant', field_name_aux='plant_code' where interface_table_id=14 and position=7;
update [interface_structure] set field_name='production_line' where interface_table_id=16 and position=20;

  ALTER TABLE spu alter column Unit_cost_average_suggested numeric(18, 6); 
  ALTER TABLE spu alter column Unit_cost_replenishment_suggested numeric(18, 6); 
  ALTER TABLE spu alter column Unit_cost_alternate_suggested numeric(18, 6); 
  ALTER TABLE spu alter column Unit_cost_effective_local_currency numeric(18, 6); 
  ALTER TABLE spu alter column Unit_cost_effective_reference_currency numeric(18, 6); 

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('AVA_VAR', 'Avaliação de Variabilidade', 'br.com.straight.proper.jobs.AvaliacaoVariabilidade');
  
ALTER TABLE [dbo].[Demand_Forecast_History] ADD  CONSTRAINT [PK_Demand_Forecast_history] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Demand_Forecast_history_detail] ADD  CONSTRAINT [PK_Demand_Forecast_history_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Demand_Single_Forecast_History] ADD  CONSTRAINT [PK_Demand_Single_Forecast_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [NonClusteredIndex-analysis_id-spu_id] ON [dbo].demand_forecast_history
(
	[analysis_id] ASC,
	[Spu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Classification] ADD  CONSTRAINT [PK_Classification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_DEM_PREV', 'Calculos Demanda Prevista', 'br.com.straight.proper.jobs.CalculosDemandaPrevista');

