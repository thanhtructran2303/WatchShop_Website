USE [DB_WATCH]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Number] [nchar](10) NULL,
	[Street] [nvarchar](20) NULL,
	[Subdistrict] [nvarchar](20) NULL,
	[District] [nvarchar](20) NULL,
	[City] [nvarchar](20) NULL,
	[Country] [nvarchar](20) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[ParentId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Category__3214EC07FFD7F4C1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[Type] [varchar](20) NULL,
	[Url] [varchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Document__3214EC0756C2C04C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[ReceiverName] [nvarchar](20) NULL,
	[ReceiverPhone] [varchar](50) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Permissi__3214EC07CB5A111D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[Stock] [int] NULL,
	[CreateUser] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[MadeIn] [nvarchar](30) NULL,
	[Description] [nvarchar](max) NULL,
	[Diameter] [int] NULL,
	[Crystal] [nvarchar](100) NULL,
	[WaterProof] [nvarchar](100) NULL,
	[Machine] [nvarchar](100) NULL,
	[Albert] [nvarchar](100) NULL,
	[Status] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Product__3214EC073FE3BE03] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Role__3214EC07BF16A317] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermission]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermission](
	[RoleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[Gender] [int] NULL,
	[Phone] [varchar](10) NULL,
	[IsDeleted] [bit] NOT NULL,
	[TypeAccount] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK__UserAcco__3214EC0773190508] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserAccountId] [int] NOT NULL,
	[RoleId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warranty]    Script Date: 5/29/2024 9:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranty](
	[Id] [int] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Description] [nvarchar](110) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (1, N'Đồng Hồ Nam', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (2, N'Đồng Hồ Nữ', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (3, N'Cặp Đôi', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (4, N'Thương Hiệu', 0, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (5, N'Casio', 1, 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (6, N'Casio', 1, 2, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (7, N'Casio', 1, 3, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (8, N'Casio', 1, 4, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (9, N'Phụ Kiện', 1, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (10, N'Citizen', 1, 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (11, N'Citizen', 1, 2, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (12, N'Citizen', 1, 3, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (13, N'Citizen', 1, 4, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (14, N'Calvin Klein', 1, 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (15, N'Calvin Klein', 1, 2, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (16, N'Calvin Klein', 1, 3, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (17, N'Calvin Klein', 1, 4, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (18, N'Hirsch', 1, 9, 0)
INSERT [dbo].[Category] ([Id], [Name], [Status], [ParentId], [IsDeleted]) VALUES (19, N'Đồng Hồ Nam', 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Document] ON 

INSERT [dbo].[Document] ([Id], [ReferenceId], [Type], [Url], [Description], [Status]) VALUES (1, 1, N'CATEGORY', N'http://res.cloudinary.com/ncwatch/image/upload/v1716617672/mja0h00rb5gtpv5x2ymp.png', N'', 0)
INSERT [dbo].[Document] ([Id], [ReferenceId], [Type], [Url], [Description], [Status]) VALUES (2, 1, N'CATEGORY', N'http://res.cloudinary.com/ncwatch/image/upload/v1716617689/bom1wptv36delwg50ndy.png', N'', 1)
INSERT [dbo].[Document] ([Id], [ReferenceId], [Type], [Url], [Description], [Status]) VALUES (3, 1, N'USER', N'http://res.cloudinary.com/ncwatch/image/upload/v1716701941/j4datfqcbqxtx6ajgywy.jpg', N'', 1)
INSERT [dbo].[Document] ([Id], [ReferenceId], [Type], [Url], [Description], [Status]) VALUES (4, 1, N'PRODUCT', N'http://res.cloudinary.com/ncwatch/image/upload/v1716735200/m1nhdo4zgnwonrmt44gf.jpg', N'', 1)
INSERT [dbo].[Document] ([Id], [ReferenceId], [Type], [Url], [Description], [Status]) VALUES (5, 2, N'CATEGORY', N'http://res.cloudinary.com/ncwatch/image/upload/v1716987491/zlwealymukn6ugxmlbwk.png', N'', 1)
SET IDENTITY_INSERT [dbo].[Document] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (1, N'admin', N'Admin', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (2, N'product.admin', N'Product', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (3, N'product.add', N'Product', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (4, N'product.edit', N'Product', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (5, N'product.delete', N'Product', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (6, N'product.view', N'Product', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (7, N'product.view_details', N'Product', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (8, N'category.admin', N'Category', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (9, N'category.add', N'Category', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (10, N'category.edit', N'Category', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (11, N'category.delete', N'Category', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (12, N'category.view', N'Category', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (13, N'category.view_details', N'Category', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (14, N'user.admin', N'User', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (15, N'user.add', N'User', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (16, N'user.edit', N'User', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (17, N'user.delete', N'User', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (18, N'user.view', N'User', 1)
INSERT [dbo].[Permission] ([Id], [Name], [DisplayName], [Status]) VALUES (19, N'user.view_details', N'User', 1)
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [UnitPrice], [Stock], [CreateUser], [CreateDate], [MadeIn], [Diameter], [Crystal], [WaterProof], [Machine], [Albert], [Status], [Description], [IsDeleted]) 
VALUES (1,N'Casio EFR-526L-1AVUDF',3426000,20,1,'2021-07-21 20:43:43',N'Nhật Bản',43,'Kính khoáng (Mineral)','10 ATM','Quartz',N'da thật',1,
N'Đồng hồ Casio Edifice EFR-526L-1AVUDF tạo ấn tượng nhờ tông màu đen chủ đạo của bộ dây đeo da chắc chắn và mặt số Chronograph thể thao. Sử dụng chất liệu chế tác cao cấp cho trải nghiệm đáng tiền trong nhiều dịp khác nhau.', 0);
INSERT [dbo].[Product] ([Id],[Name], [UnitPrice], [Stock], [CreateUser], [CreateDate], [MadeIn], [Diameter], [Crystal], [WaterProof], [Machine], [Albert], [Status], [Description], [IsDeleted]) 
VALUES (2,N'Citizen EM0493-85P',6285000,15,1,'2022-11-29 09:53:20',N'Nhật Bản',42,'Kính khoáng (Mineral)','3 ATM','Eco-Drive',N'thép không gỉ, dây lưới',1,
N'Mẫu Citizen EM0493-85P sang trọng với thiết kế đính 2 viên pha lê tại vị trí 12 giờ trên nền mặt số vuông được phối tone màu trắng ngà.',0);
INSERT [dbo].[Product] ([Id] ,[Name], [UnitPrice], [Stock], [CreateUser], [CreateDate], [MadeIn], [Diameter], [Crystal], [WaterProof], [Machine], [Albert], [Status], [Description], [IsDeleted]) 
VALUES (3,N'Citizen Đôi (BI5070-57H – EU6090-54H)',7055000,9,1,'2022-03-13 13:26:05',N'Nhật Bản',40,'Kính khoáng (Mineral)','5 ATM','Quartz',N'thép không gỉ',1,
N'Mẫu Citizen đôi mặt số đen với họa tiết trải tia nhẹ phối cùng cọc vạch số tạo nét mỏng phong cách trẻ trung.',0);
INSERT [dbo].[Product] ([Id] ,[Name], [UnitPrice], [Stock], [CreateUser], [CreateDate], [MadeIn], [Diameter], [Crystal], [WaterProof], [Machine], [Albert], [Status], [Description], [IsDeleted]) 
VALUES (4,N'Calvin Klein K8Y236L6',6750000,22,1,'2022-01-14 00:20:43',N'Thụy Sĩ',42,'Kính khoáng (Mineral)','3 ATM','Quartz',N'da thật',1,
N'Mẫu Calvin Klein K8Y236L6 phiên bản mặt số lớn size 42mm phối cùng mẫu dây da trơn bản nhỏ tone màu trắng thời trang.',0);
INSERT [dbo].[Product] ([Id] ,[Name], [UnitPrice], [Stock], [CreateUser], [CreateDate], [MadeIn], [Diameter], [Crystal], [WaterProof], [Machine], [Albert], [Status], [Description], [IsDeleted]) 
VALUES (5,N'Hirsch Voyager',5310000,11,1,'2022-02-14 10:26:05',N'Ý',null,null,null,null,N'dây da',1,
N'Dây da Hirsch Voyager được làm từ da bê Ý. Mẫu dây da này cũng có khả năng kháng nước cơ bản cho người dùng.',0);
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (1, 1)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (1, 5)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (2, 2)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (2, 8)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (3, 3)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (3, 9)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (4, 2)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (4, 11)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (5, 7)
INSERT [dbo].[ProductCategory] ([ProductId], [CategoryId]) VALUES (5, 12)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [Status]) VALUES (1, N'admin', 1)
INSERT [dbo].[Role] ([Id], [Name], [Status]) VALUES (2, N'category', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[RolePermission] ([RoleId], [PermissionId]) VALUES (1, 1)
INSERT [dbo].[RolePermission] ([RoleId], [PermissionId]) VALUES (2, 9)
INSERT [dbo].[RolePermission] ([RoleId], [PermissionId]) VALUES (2, 10)
INSERT [dbo].[RolePermission] ([RoleId], [PermissionId]) VALUES (2, 11)
INSERT [dbo].[RolePermission] ([RoleId], [PermissionId]) VALUES (2, 12)
INSERT [dbo].[RolePermission] ([RoleId], [PermissionId]) VALUES (2, 13)
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([Id], [UserName], [Name], [Email], [Password], [Active], [Gender], [Phone], [IsDeleted], [TypeAccount]) 
VALUES (1, N'admin', N'Ý', N'admin@example.com', N'123456', 1, 1, '0982400453', 0, N'STAFF')
INSERT [dbo].[UserAccount] ([Id], [UserName], [Name], [Email], [Password], [Active], [Gender], [Phone], [IsDeleted], [TypeAccount]) 
VALUES (2, N'thanhtruc', N'Trúc', N'example1@gmail.com', N'123456', 1, 1, '0947470208', 0, N'STAFF')
INSERT [dbo].[UserAccount] ([Id], [UserName], [Name], [Email], [Password], [Active], [Gender], [Phone], [IsDeleted], [TypeAccount]) 
VALUES (3, N'thuyduong', N'Dương', N'example2@gmail.com', N'123456', 1, 1, '0832609934', 0, N'STAFF')
INSERT [dbo].[UserAccount] ([Id], [UserName], [Name], [Email], [Password], [Active], [Gender], [Phone], [IsDeleted], [TypeAccount]) 
VALUES (4, N'tunglam',N'Tùng','example3@gmail.com',N'345678', 0, 0,'0915600762',1,N'STAFF');
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
INSERT [dbo].[UserRole] ([UserAccountId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserAccountId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserAccountId], [RoleId]) VALUES (3, 2)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Product__737584F64FA9ADD1]    Script Date: 5/29/2024 9:01:19 PM ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [UQ__Product__737584F64FA9ADD1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF__UserAccou__Activ__44FF419A]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK__Address__UserId__4AB81AF0] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK__Address__UserId__4AB81AF0]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__UserId__4D94879B] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__UserId__4D94879B]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__5535A963] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Produ__5535A963]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [fk_Ref_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [fk_Ref_CategoryId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [fk_ref_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [fk_ref_ProductId]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [FK__RolePermi__Permi__59063A47] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [FK__RolePermi__Permi__59063A47]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [FK__RolePermi__RoleI__5812160E] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [FK__RolePermi__RoleI__5812160E]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK__UserRole__RoleId__5AEE82B9] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK__UserRole__RoleId__5AEE82B9]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK__UserRole__UserId__5BE2A6F2] FOREIGN KEY([UserAccountId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK__UserRole__UserId__5BE2A6F2]
GO
ALTER TABLE [dbo].[Warranty]  WITH CHECK ADD FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
