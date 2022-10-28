
/****** Object:  Table [dbo].[System_Administrator_User]    Script Date: 17/02/2021 18:29:26 ******/
use proper_Base
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[System_Administrator_User](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[User_code] [nvarchar](20) NULL,
	[Status] [nchar](2) NULL,
	[User_Name] [nvarchar](255) NULL,
	[Language_id] [numeric](18, 0) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_System_Administrator_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[System_Administrator_User] ([User_code], [User_Name], [Password],Language_id,status) VALUES ('Bruno','Bruno','Bruno',1,'01');