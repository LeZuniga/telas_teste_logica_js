USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].Exchange_Rate (
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[proper_company_code] [nvarchar](20) NOT NULL,
	[currency_1]  [numeric](18, 0) NOT NULL,
	[date] date NOT NULL,
	[Exchange_rate]  [numeric](18, 6) NOT NULL,
 CONSTRAINT [PK_Exchange_Rate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


