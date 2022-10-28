use proper_Base
alter table itens drop column Life_cycle_stage;
alter table itens add Life_cycle [nvarchar](2) NULL;