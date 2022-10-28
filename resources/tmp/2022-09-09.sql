use proper_base

ALTER TABLE Inventory_interface add analysis_id [numeric](18, 0) NULL;
ALTER TABLE Inventory_interface add Interface_time_stamp [nvarchar](20)  NULL;