USE PROPER_BASE
GO

ALTER TABLE [dbo].[spu_parameter] ADD  DEFAULT ('01') FOR [Proper_Stock_analysis]
GO

ALTER TABLE [dbo].[spu_parameter] ADD  DEFAULT ('01') FOR [Proper_Action_monitoring]
GO

ALTER TABLE [dbo].[spu_parameter] ADD  DEFAULT ('01') FOR [Management_type]
GO

