USE [QuanAoBaoChau]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/09/2020 11:38:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_id] [char](10) NOT NULL,
	[Category_name] [nvarchar](50) NULL,
	[Category_group_id] [char](10) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 03/09/2020 11:38:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [char](20) NOT NULL,
	[Password] [nvarchar](30) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 03/09/2020 11:38:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[News_id] [char](10) NOT NULL,
	[News_title] [nvarchar](max) NULL,
	[News_image] [nvarchar](max) NULL,
	[News_imagefull] [nvarchar](max) NULL,
	[News_summary] [nvarchar](max) NULL,
	[News_detail] [nvarchar](max) NULL,
	[News_date] [date] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[News_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/09/2020 11:38:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetail_id] [char](30) NULL,
	[OrderDetail_sno] [char](10) NULL,
	[OrderDetail_product_id] [char](10) NULL,
	[OrderDetail_product_price] [int] NULL,
	[OrderDetail_product_quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/09/2020 11:38:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [char](30) NULL,
	[Order_date] [date] NULL,
	[Order_customer_name] [nvarchar](50) NULL,
	[Order_customer_address] [nvarchar](max) NULL,
	[Order_customer_phone] [char](20) NULL,
	[Order_customer_status] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/09/2020 11:38:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [char](10) NOT NULL,
	[Product_code] [nvarchar](30) NULL,
	[Product_name] [nvarchar](max) NULL,
	[Product_price] [int] NULL,
	[Product_quantity] [int] NULL,
	[Product_material] [nvarchar](50) NULL,
	[Product_madein] [nvarchar](50) NULL,
	[Product_image] [nvarchar](max) NULL,
	[Product_category_id] [char](10) NULL,
	[Product_status] [nvarchar](50) NULL,
	[Product_viewed] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
