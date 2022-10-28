
USE PROPER_BASE

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_ESTOQ_SEG', 'Calculo Do Estoque De Seguranca', 'br.com.straight.proper.jobs.CalculoDoEstoqueDeSeguranca');

use proper_Base
alter table item_filter add [items_per_page] [numeric](18, 0) NULL;

use proper_Mdias
alter table item_filter add [items_per_page] [numeric](18, 0) NULL;