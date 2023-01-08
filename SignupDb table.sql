USE [SignUp Asessment]
GO

/****** Object:  Table [dbo].[SignUp]    Script Date: 1/8/2023 10:15:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SignUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Confirmpassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SignUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

