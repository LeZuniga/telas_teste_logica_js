use Proper_Base
alter table itens add Current_stage [nvarchar](2) NULL;
alter table itens add Next_analysis_stage [nvarchar](2) NULL;
alter table itens add Stage_change [nvarchar](2) NULL;

alter table spu add Current_stage [nvarchar](2) NULL;
alter table spu add Next_analysis_stage [nvarchar](2) NULL;
alter table spu add Stage_change [nvarchar](2) NULL;