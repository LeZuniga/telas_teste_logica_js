USE [Proper_agc]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Expected_Quality](
[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
[Analysis_id] [numeric](18, 0) NULL,
Family_1_id [numeric](18, 0) NULL,
Family_2_id [numeric](18, 0) NULL,
Family_3_id [numeric](18, 0) NULL,
Plant_id [numeric](18, 0) NULL,
Production_line_id [numeric](18, 0) NULL,
Expected_quality_percentage_1 float(53) NULL,
Expected_quality_percentage_2 float(53) NULL,
Expected_quality_percentage_3 float(53) NULL,
Expected_quality_percentage_4 float(53) NULL,
Expected_quality_percentage_5 float(53) NULL,
Expected_quality_percentage_6 float(53) NULL,
Expected_quality_percentage_7 float(53) NULL,
Expected_quality_percentage_8 float(53) NULL,
Expected_quality_percentage_9 float(53) NULL,
Expected_quality_percentage_10 float(53) NULL,
 CONSTRAINT [PK_Expected_Quality] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Production_Rate](
[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
[Analysis_id] [numeric](18, 0) NULL,
Family_1_id [numeric](18, 0) NULL,
Family_2_id [numeric](18, 0) NULL,
Family_3_id [numeric](18, 0) NULL,
Plant_id [numeric](18, 0) NULL,
Production_line_id [numeric](18, 0) NULL,
Effective_Date [datetime] NULL,
Production_Rate float(53) NULL,
Unit_Of_Measure_Units_id [numeric](18, 0) NULL,
Unit_Of_Measure_Time [nvarchar](2) NULL,
Efficiency_rate float(53) NULL,
 CONSTRAINT [PK_Production_Rate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO