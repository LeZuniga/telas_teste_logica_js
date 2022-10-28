CREATE TABLE [dbo].[job_script](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[standard_process_id] [numeric](18, 0) NULL,
	[sequence] [int] NULL,
	[run] [nvarchar](2) NULL,
	[run_with_previous_errors] [nvarchar](2) NULL,
 CONSTRAINT [PK_job_script] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.JobScript' ,'Menu - Basic Data - Job Script' ,'Menu' ,'BasicInformation' ,'JobScript' ,0,0 ,'jobScript' ,'1.02.19');
 