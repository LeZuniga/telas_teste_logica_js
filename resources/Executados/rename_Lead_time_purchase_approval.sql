USE [Proper_Base]
GO

EXEC sp_rename 'Parameters_Analysis.Lead_time_approval_minimum', 'Lead_time_purchase_approval_minimum', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Lead_time_approval_average', 'Lead_time_purchase_approval_average', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Lead_time_approval_maximum', 'Lead_time_purchase_approval_maximum', 'COLUMN';
