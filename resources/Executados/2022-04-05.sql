use proper_base;

INSERT Standard_Processes (Standard_Processes_description,class_name,Code) VALUES ('Identificar Primeira Ultima Demanda', 'br.com.straight.proper.jobs.IdentificarPrimeiraUltimaDemanda', 'ID_PRI_ULT_DEM')

alter table [job_script] add [begin_job] [datetime] NULL;
alter table [job_script] add [end_job] [datetime] NULL;
alter table [job_script] add [current_job] [datetime] NULL;
alter table [job_script] add [percentage] [numeric](18, 4) NULL;
alter table [job_script] add [erros] nvarchar(MAX) NULL;