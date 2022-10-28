use proper_base;

/*
Analysis
Region code – management unit
Management unit code
Date
Repeatability
Relevance
Variability
Predictability
Planning method
Historical demand – average value – standard bucket
Minimum stock – value
Minimum stock – coverage
Average stock – value
Average inventory – coverage
Maximum stock – value
Maximum stock – coverage
Current inventory – value
Current inventory – coverage
Number SPUs – above maximum
Number SPUs – below minimum
Number SPUs – between limits
Bellow minimum – value
Above maximum – value
Balancing index – number SPUs
Balancing index – value

Analysis_id
Region_code_management_unit_id
Management_unit__id
Date
Repeatability
Relevance
Variability
Predictability
Planning_method
Historical_demand_average_value_standard_bucket
Minimum_stock_value
Minimum_stock_coverage
Average_stock_value
Average_inventory_coverage
Maximum_stock_value
Maximum_stock_coverage
Current_inventory_value
Current_inventory_coverage
Number_SPUs_above_maximum
Number_SPUs_below_minimum
Number_SPUs_between_limits
Bellow_minimum_value
Above_maximum_value
Balancing_index_number_SPUs
Balancing_index_value

**/

CREATE TABLE [dbo].[Management_Unit_Demand_and_Inventory_Map](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NOT NULL,
	Region_code_management_unit_id [numeric](18, 0) NULL,
	Management_unit_id [numeric](18, 0) NULL,
	Date [datetime]  NULL,
	Repeatability [nvarchar](2) NULL,
	Relevance [nvarchar](2) NULL,
	Variability [nvarchar](2) NULL,
	Predictability [nvarchar](2) NULL,
	Planning_method [nvarchar](2) NULL,
	Historical_demand_average_value_standard_bucket [numeric](18, 4) NULL,
	Minimum_stock_value [numeric](18, 4) NULL,
	Minimum_stock_coverage [numeric](18, 4) NULL,
	Average_stock_value [numeric](18, 4) NULL,
	Average_inventory_coverage [numeric](18, 4) NULL,
	Maximum_stock_value [numeric](18, 4) NULL,
	Maximum_stock_coverage [numeric](18, 4) NULL,
	Current_inventory_value [numeric](18, 4) NULL,
	Current_inventory_coverage [numeric](18, 4) NULL,
	Number_SPUs_above_maximum [int] NULL,
	Number_SPUs_below_minimum [int] NULL,
	Number_SPUs_between_limits [int] NULL,
	Bellow_minimum_value [numeric](18, 4) NULL,
	Above_maximum_value [numeric](18, 4) NULL,
	Balancing_index_number_SPUs [numeric](18, 4) NULL,
	Balancing_index_value [numeric](18, 4) NULL

) ON [PRIMARY]
GO
 
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Parameters_precedence_EOQ_coverage_limits' ) 
   alter table Parameters_Analysis add Parameters_precedence_EOQ_coverage_limits nvarchar(2) NULL DEFAULT '01';



IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage' ) 
   alter table spu_parameter add Minimum_EOQ_coverage [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage_unit_of_measure' ) 
   alter table spu_parameter add Minimum_EOQ_coverage_unit_of_measure nvarchar(2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_EOQ_coverage' ) 
   alter table spu_parameter add Maximum_EOQ_coverage [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_EOQ_coverage_unit_of_measure' ) 
   alter table spu_parameter add Maximum_EOQ_coverage_unit_of_measure nvarchar(2) NULL;   
   

   