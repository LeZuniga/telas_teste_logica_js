USE [Proper_Base]
GO

/****** Object:  Table [dbo].[interface_data]    Script Date: 31/01/2021 16:47:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[interface_data](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[qtd_erros] [int] NULL,
c001 [nvarchar](max) NULL,
c002 [nvarchar](max) NULL,
c003 [nvarchar](max) NULL,
c004 [nvarchar](max) NULL,
c005 [nvarchar](max) NULL,
c006 [nvarchar](max) NULL,
c007 [nvarchar](max) NULL,
c008 [nvarchar](max) NULL,
c009 [nvarchar](max) NULL,
c010 [nvarchar](max) NULL,
c011 [nvarchar](max) NULL,
c012 [nvarchar](max) NULL,
c013 [nvarchar](max) NULL,
c014 [nvarchar](max) NULL,
c015 [nvarchar](max) NULL,
c016 [nvarchar](max) NULL,
c017 [nvarchar](max) NULL,
c018 [nvarchar](max) NULL,
c019 [nvarchar](max) NULL,
c020 [nvarchar](max) NULL,
c021 [nvarchar](max) NULL,
c022 [nvarchar](max) NULL,
c023 [nvarchar](max) NULL,
c024 [nvarchar](max) NULL,
c025 [nvarchar](max) NULL,
c026 [nvarchar](max) NULL,
c027 [nvarchar](max) NULL,
c028 [nvarchar](max) NULL,
c029 [nvarchar](max) NULL,
c030 [nvarchar](max) NULL,
c031 [nvarchar](max) NULL,
c032 [nvarchar](max) NULL,
c033 [nvarchar](max) NULL,
c034 [nvarchar](max) NULL,
c035 [nvarchar](max) NULL,
c036 [nvarchar](max) NULL,
c037 [nvarchar](max) NULL,
c038 [nvarchar](max) NULL,
c039 [nvarchar](max) NULL,
c040 [nvarchar](max) NULL,
c041 [nvarchar](max) NULL,
c042 [nvarchar](max) NULL,
c043 [nvarchar](max) NULL,
c044 [nvarchar](max) NULL,
c045 [nvarchar](max) NULL,
c046 [nvarchar](max) NULL,
c047 [nvarchar](max) NULL,
c048 [nvarchar](max) NULL,
c049 [nvarchar](max) NULL,
c050 [nvarchar](max) NULL,
c051 [nvarchar](max) NULL,
c052 [nvarchar](max) NULL,
c053 [nvarchar](max) NULL,
c054 [nvarchar](max) NULL,
c055 [nvarchar](max) NULL,
c056 [nvarchar](max) NULL,
c057 [nvarchar](max) NULL,
c058 [nvarchar](max) NULL,
c059 [nvarchar](max) NULL,
c060 [nvarchar](max) NULL,
c061 [nvarchar](max) NULL,
c062 [nvarchar](max) NULL,
c063 [nvarchar](max) NULL,
c064 [nvarchar](max) NULL,
c065 [nvarchar](max) NULL,
c066 [nvarchar](max) NULL,
c067 [nvarchar](max) NULL,
c068 [nvarchar](max) NULL,
c069 [nvarchar](max) NULL,
c070 [nvarchar](max) NULL,
c071 [nvarchar](max) NULL,
c072 [nvarchar](max) NULL,
c073 [nvarchar](max) NULL,
c074 [nvarchar](max) NULL,
c075 [nvarchar](max) NULL,
c076 [nvarchar](max) NULL,
c077 [nvarchar](max) NULL,
c078 [nvarchar](max) NULL,
c079 [nvarchar](max) NULL,
c080 [nvarchar](max) NULL,
c081 [nvarchar](max) NULL,
c082 [nvarchar](max) NULL,
c083 [nvarchar](max) NULL,
c084 [nvarchar](max) NULL,
c085 [nvarchar](max) NULL,
c086 [nvarchar](max) NULL,
c087 [nvarchar](max) NULL,
c088 [nvarchar](max) NULL,
c089 [nvarchar](max) NULL,
c090 [nvarchar](max) NULL,
c091 [nvarchar](max) NULL,
c092 [nvarchar](max) NULL,
c093 [nvarchar](max) NULL,
c094 [nvarchar](max) NULL,
c095 [nvarchar](max) NULL,
c096 [nvarchar](max) NULL,
c097 [nvarchar](max) NULL,
c098 [nvarchar](max) NULL,
c099 [nvarchar](max) NULL,
c100 [nvarchar](max) NULL,
c101 [nvarchar](max) NULL,
c102 [nvarchar](max) NULL,
c103 [nvarchar](max) NULL,
c104 [nvarchar](max) NULL,
c105 [nvarchar](max) NULL,
c106 [nvarchar](max) NULL,
c107 [nvarchar](max) NULL,
c108 [nvarchar](max) NULL,
c109 [nvarchar](max) NULL,
c110 [nvarchar](max) NULL,
c111 [nvarchar](max) NULL,
c112 [nvarchar](max) NULL,
c113 [nvarchar](max) NULL,
c114 [nvarchar](max) NULL,
c115 [nvarchar](max) NULL,
c116 [nvarchar](max) NULL,
c117 [nvarchar](max) NULL,
c118 [nvarchar](max) NULL,
c119 [nvarchar](max) NULL,
c120 [nvarchar](max) NULL,
c121 [nvarchar](max) NULL,
c122 [nvarchar](max) NULL,
c123 [nvarchar](max) NULL,
c124 [nvarchar](max) NULL,
c125 [nvarchar](max) NULL,
c126 [nvarchar](max) NULL,
c127 [nvarchar](max) NULL,
c128 [nvarchar](max) NULL,
c129 [nvarchar](max) NULL,
c130 [nvarchar](max) NULL,
c131 [nvarchar](max) NULL,
c132 [nvarchar](max) NULL,
c133 [nvarchar](max) NULL,
c134 [nvarchar](max) NULL,
c135 [nvarchar](max) NULL,
c136 [nvarchar](max) NULL,
c137 [nvarchar](max) NULL,
c138 [nvarchar](max) NULL,
c139 [nvarchar](max) NULL,
c140 [nvarchar](max) NULL,
c141 [nvarchar](max) NULL,
c142 [nvarchar](max) NULL,
c143 [nvarchar](max) NULL,
c144 [nvarchar](max) NULL,
c145 [nvarchar](max) NULL,
c146 [nvarchar](max) NULL,
c147 [nvarchar](max) NULL,
c148 [nvarchar](max) NULL,
c149 [nvarchar](max) NULL,
c150 [nvarchar](max) NULL,
c151 [nvarchar](max) NULL,
c152 [nvarchar](max) NULL,
c153 [nvarchar](max) NULL,
c154 [nvarchar](max) NULL,
c155 [nvarchar](max) NULL,
c156 [nvarchar](max) NULL,
c157 [nvarchar](max) NULL,
c158 [nvarchar](max) NULL,
c159 [nvarchar](max) NULL,
c160 [nvarchar](max) NULL,
c161 [nvarchar](max) NULL,
c162 [nvarchar](max) NULL,
c163 [nvarchar](max) NULL,
c164 [nvarchar](max) NULL,
c165 [nvarchar](max) NULL,
c166 [nvarchar](max) NULL,
c167 [nvarchar](max) NULL,
c168 [nvarchar](max) NULL,
c169 [nvarchar](max) NULL,
c170 [nvarchar](max) NULL,
c171 [nvarchar](max) NULL,
c172 [nvarchar](max) NULL,
c173 [nvarchar](max) NULL,
c174 [nvarchar](max) NULL,
c175 [nvarchar](max) NULL,
c176 [nvarchar](max) NULL,
c177 [nvarchar](max) NULL,
c178 [nvarchar](max) NULL,
c179 [nvarchar](max) NULL,
c180 [nvarchar](max) NULL,
c181 [nvarchar](max) NULL,
c182 [nvarchar](max) NULL,
c183 [nvarchar](max) NULL,
c184 [nvarchar](max) NULL,
c185 [nvarchar](max) NULL,
c186 [nvarchar](max) NULL,
c187 [nvarchar](max) NULL,
c188 [nvarchar](max) NULL,
c189 [nvarchar](max) NULL,
c190 [nvarchar](max) NULL,
c191 [nvarchar](max) NULL,
c192 [nvarchar](max) NULL,
c193 [nvarchar](max) NULL,
c194 [nvarchar](max) NULL,
c195 [nvarchar](max) NULL,
c196 [nvarchar](max) NULL,
c197 [nvarchar](max) NULL,
c198 [nvarchar](max) NULL,
c199 [nvarchar](max) NULL,
c200 [nvarchar](max) NULL,
 CONSTRAINT [PK_interface_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

