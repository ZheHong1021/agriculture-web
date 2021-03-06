USE [agriculture]
GO
/****** Object:  Table [dbo].[average]    Script Date: 2020/11/18 下午 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[average](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[n] [int] NOT NULL,
	[depth] [tinyint] NOT NULL,
	[water] [varchar](50) NOT NULL,
	[organic] [varchar](50) NOT NULL,
	[pH] [varchar](50) NOT NULL,
	[uScm] [varchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_average] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[basics]    Script Date: 2020/11/18 下午 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[basics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[depth] [tinyint] NULL,
	[water] [varchar](50) NULL,
	[organic] [varchar](50) NULL,
	[pH] [varchar](50) NULL,
	[uScm] [varchar](50) NULL,
	[info_id] [int] NOT NULL,
 CONSTRAINT [PK_measuredvalues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[infos]    Script Date: 2020/11/18 下午 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[infos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[species] [varchar](255) NOT NULL,
	[method] [varchar](255) NOT NULL,
	[lat] [real] NOT NULL,
	[lng] [real] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_infos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metal]    Script Date: 2020/11/18 下午 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Zn] [varchar](50) NULL,
	[Pb] [varchar](50) NULL,
	[Cd] [varchar](50) NULL,
	[Co] [varchar](50) NULL,
	[Ni] [varchar](50) NULL,
	[B] [varchar](50) NULL,
	[Mn] [varchar](50) NULL,
	[Fe] [varchar](50) NULL,
	[Cr] [varchar](50) NULL,
	[Mg] [varchar](50) NULL,
	[Ca] [varchar](50) NULL,
	[Cu] [varchar](50) NULL,
	[Na] [varchar](50) NULL,
	[info_id] [int] NOT NULL,
 CONSTRAINT [PK_metals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020/11/18 下午 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[acc] [varchar](255) NOT NULL,
	[password] [text] NOT NULL,
	[authority] [tinyint] NOT NULL,
	[remember_token] [varchar](255) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[average] ON 

INSERT [dbo].[average] ([id], [n], [depth], [water], [organic], [pH], [uScm], [created_at], [updated_at]) VALUES (1, 29, 0, N'23.74', N'5.90', N'7.0', N'127.2', CAST(N'2018-12-16T13:50:31.000' AS DateTime), CAST(N'2018-12-16T13:50:31.000' AS DateTime))
INSERT [dbo].[average] ([id], [n], [depth], [water], [organic], [pH], [uScm], [created_at], [updated_at]) VALUES (2, 29, 30, N'17.96', N'3.21', N'7.5', N'82.2', CAST(N'2018-12-16T13:50:31.000' AS DateTime), CAST(N'2018-12-16T13:50:31.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[average] OFF
GO
SET IDENTITY_INSERT [dbo].[basics] ON 

INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (3, 0, N'31.86', N'9.36', N'7.5', N'91.4', 2)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (4, 30, N'18.30', N'3.72', N'8.2', N'75.4', 2)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (5, 0, N'23.17', N'4.55', N'7.1', N'145.1', 3)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (6, 30, N'20.17', N'2.91', N'7.5', N'123.7', 3)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (7, 0, N'14.52', N'3.92', N'8.1', N'103.1', 4)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (8, 30, N'12.19', N'2.88', N'7.9', N'73.6', 4)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (9, 0, N'25.78', N'4.54', N'6.4', N'77.3', 5)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (10, 30, N'18.93', N'2.70', N'7.6', N'70.9', 5)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (11, 0, N'24.44', N'3.94', N'6.4', N'78.9', 6)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (12, 30, N'22.31', N'3.35', N'6.7', N'96.4', 6)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (13, 0, N'23.64', N'4.38', N'6.6', N'30.1', 7)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (14, 30, N'18.70', N'2.57', N'7.2', N'163', 7)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (15, 0, N'20.57', N'9.27', N'6.3', N'197.8', 8)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (16, 30, N'11.08', N'4.55', N'7.0', N'71.2', 8)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (17, 0, N'6.15', N'5.92', N'7.1', N'230', 9)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (18, 30, N'18.20', N'2.14', N'7.3', N'148.5', 9)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (19, 0, N'21.04', N'3.67', N'7.0', N'37.6', 10)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (20, 30, N'19.84', N'3.01', N'7.0', N'39.3', 10)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (21, 0, N'25.27', N'2.92', N'6.5', N'72', 11)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (22, 30, N'18.42', N'2.35', N'6.6', N'58.8', 11)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (23, 0, N'29.57', N'5.63', N'6.7', N'44.1', 12)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (24, 30, N'23.57', N'3.14', N'7.4', N'86.5', 12)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (25, 0, N'29.33', N'5.28', N'6.3', N'24.3', 13)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (26, 30, N'20.60', N'2.50', N'7.2', N'67.4', 13)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (27, 0, N'22.88', N'5.25', N'7.2', N'75.2', 14)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (28, 30, N'18.25', N'4.07', N'7.0', N'70.2', 14)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (29, 0, N'13.25', N'1.67', N'6.7', N'34.6', 15)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (30, 30, N'13.10', N'1.54', N'7.5', N'36.9', 15)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (31, 0, N'19.69', N'4.47', N'6.4', N'63.4', 16)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (32, 30, N'20.59', N'3.90', N'6.8', N'66.8', 16)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (33, 0, N'27.41', N'4.56', N'6.9', N'63', 17)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (34, 30, N'20.06', N'3.14', N'7.9', N'31', 17)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (35, 0, N'20.90', N'8.78', N'6.6', N'168.6', 18)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (36, 30, N'15.22', N'2.71', N'8.1', N'155.3', 18)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (37, 0, N'27.07', N'5.87', N'7.5', N'70.6', 19)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (38, 30, N'16.38', N'2.21', N'7.8', N'47.2', 19)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (39, 0, N'25.62', N'6.36', N'7.3', N'153.1', 20)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (40, 30, N'18.04', N'3.14', N'8.3', N'76', 20)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (41, 0, N'33.02', N'8.04', N'7.4', N'247', 21)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (42, 30, N'20.09', N'2.62', N'7.6', N'140.1', 21)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (43, 0, N'35.22', N'5.14', N'7.6', N'78.6', 22)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (44, 30, N'21.19', N'3.10', N'8.2', N'94.3', 22)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (45, 0, N'18.51', N'2.71', N'7.3', N'64.8', 23)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (46, 30, N'18.03', N'2.17', N'7.0', N'44.1', 23)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (47, 0, N'31.50', N'5.73', N'7.4', N'48.5', 24)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (48, 30, N'17.01', N'1.83', N'7.5', N'27.7', 24)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (49, 0, N'31.51', N'9.12', N'6.9', N'504', 25)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (50, 30, N'21.72', N'3.83', N'7.8', N'69.3', 25)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (51, 0, N'46.59', N'10.81', N'7.4', N'117.1', 26)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (52, 30, N'26.72', N'5.02', N'7.6', N'64.1', 26)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (53, 0, N'17.17', N'12.32', N'7.2', N'135.5', 27)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (54, 30, N'19.42', N'7.12', N'7.4', N'73.9', 27)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (55, 0, N'13.09', N'5.41', N'7.9', N'96.2', 28)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (56, 30, N'16.13', N'3.99', N'8.5', N'105.1', 28)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (57, 0, N'7.13', N'5.29', N'6.9', N'595', 29)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (58, 30, N'9.25', N'3.10', N'7.4', N'143.1', 29)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (1061, 0, N'22.69', N'6.09', N'7.6', N'42.5', 1)
INSERT [dbo].[basics] ([id], [depth], [water], [organic], [pH], [uScm], [info_id]) VALUES (1062, 30, N'7.33', N'3.89', N'7.7', N'64.1', 1)
SET IDENTITY_INSERT [dbo].[basics] OFF
GO
SET IDENTITY_INSERT [dbo].[infos] ON 

INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (1, 1, N'楊O和', N'棗子', N'網室有機', 22.7711334, 120.3326, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-25T23:18:08.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (2, 2, N'楊O和', N'棗子', N'網室有機', 22.7711334, 120.3326, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (3, 3, N'戴O福', N'芭藥', N'一般慣行', 22.77395, 120.3362, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (4, 4, N'戴O福', N'芭藥', N'一般慣行', 22.77395, 120.3362, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (5, 5, N'劉OO', N'芭藥', N'一般慣行', 22.77906, 120.3273, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (6, 6, N'劉OO', N'芭藥', N'一般慣行', 22.77906, 120.3273, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (7, 7, N'黃OO', N'棗子', N'網室慣行', 22.7795334, 120.3269, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (8, 8, N'黃OO', N'棗子', N'網室慣行', 22.7795334, 120.3269, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (9, 9, N'台O公司', N'蔬菜', N'網室有機(整地中)', 22.7630157, 120.338737, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (10, 10, N'台O公司', N'蔬菜', N'網室有機', 22.76251, 120.337257, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (11, 11, N'台O公司', N'空地', N'農用空地', 22.7624283, 120.341255, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (12, 12, N'高O大', N'空地', N'農用空地', 22.7580814, 120.341164, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (13, 13, N'易O公司', N'棗子', N'網室慣行', 22.80517, 120.362457, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (14, 14, N'易O公司', N'棗子', N'網室慣行', 22.8053589, 120.362633, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (15, 15, N'易O公司', N'棗子', N'網室慣行', 22.8054047, 120.362518, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (16, 16, N'台O公司', N'空地', N'農用空地', 22.7515469, 120.332039, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (17, 17, N'棗O公司', N'芭藥', N'一般慣行', 22.778532, 120.325905, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (18, 18, N'棗O公司', N'芭藥', N'一般慣行', 22.7783451, 120.324944, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (19, 19, N'棗O公司', N'棗子', N'網室慣行', 22.7781811, 120.3245, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (20, 20, N'棗O公司', N'棗子', N'網室慣行', 22.7786865, 120.325134, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (21, 21, N'棗O公司', N'棗子', N'網室慣行', 22.77871, 120.324615, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (22, 22, N'棗O公司', N'芭藥', N'一般慣行', 22.7792435, 120.3247, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (23, 23, N'棗O公司', N'芭藥', N'一般慣行', 22.77274, 120.332932, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (24, 24, N'棗O公司', N'芭藥', N'一般慣行', 22.7726078, 120.3361, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (25, 25, N'楊O和', N'棗子', N'網室有機', 22.773901, 120.334908, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (26, 26, N'楊O和', N'棗子', N'網室有機', 22.77147, 120.336006, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (27, 27, N'楊O和', N'香蕉', N'一般慣行', 22.7712936, 120.336113, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (28, 28, N'楊O和', N'空地', N'農用空地', 22.7705326, 120.336388, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
INSERT [dbo].[infos] ([id], [no], [name], [species], [method], [lat], [lng], [created_at], [updated_at]) VALUES (29, 29, N'戴O福', N'芭藥', N'一般慣行', 22.7714825, 120.33284, CAST(N'2018-12-18T11:14:26.000' AS DateTime), CAST(N'2018-12-18T11:14:26.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[infos] OFF
GO
SET IDENTITY_INSERT [dbo].[metal] ON 

INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (1061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[metal] ([id], [Zn], [Pb], [Cd], [Co], [Ni], [B], [Mn], [Fe], [Cr], [Mg], [Ca], [Cu], [Na], [info_id]) VALUES (1062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[metal] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [acc], [password], [authority], [remember_token]) VALUES (1, N'Shyitien', N'$2y$10$jw21T7ZmSmB51tjo0As8S.Dl1owwsOX9bqIq46gbjoT9EMCHJLyI6', 1, N'ZQFPsngCrKY4kaHTvgKRgUulWHmoVleKocy6a1StAznm980emSDelLkWwzvJ')
INSERT [dbo].[users] ([id], [acc], [password], [authority], [remember_token]) VALUES (2, N'imfrank', N'$2y$10$yAffypnmj43Oo5EpPn4s6O52ZyqSvfzw296CtZ428fpa.jkwhHzBa', 1, N'HWoAlUzEGJQCcSmveiSs6L1wX1SP18AlPyM6fsOGbG5n9waNtInpj4Dc0yvY')
INSERT [dbo].[users] ([id], [acc], [password], [authority], [remember_token]) VALUES (3, N'0524007', N'$2y$10$QVrl8cTH1VyBfHe9Nfmdy.CMaG0d3p7.oaarVJPmEatKKblfGBT/C', 1, N'kefL9nFmZ0piRLxLG3Dh6UozIuxCzCrRizkLl2ZEqCc7jWPyu7IgsgdWnefY')
INSERT [dbo].[users] ([id], [acc], [password], [authority], [remember_token]) VALUES (5, N'0524053', N'$2y$10$TpUdqtky3tM7DZTGeZYzSOZZL91oXYFPhUTA/tQV.etcTyJbV1cc6', 2, N'3Fgy7y6HvO4xg3Lx57pA0mhNnhvRRw6VKoBAey0JW8aViWFcd9homdwsSkFP')
INSERT [dbo].[users] ([id], [acc], [password], [authority], [remember_token]) VALUES (6, N'0524028', N'$2y$10$2lDln2aOx4UF0Um0SConIuGv.yIjDBZEZvH7KOWYoXa893/QVjpOq', 2, N'DqaH6CQz2yVmmkeISXYovmpe67yLhZQvHlfujMLbea2LXMizpmXFVRtHTDQC')
INSERT [dbo].[users] ([id], [acc], [password], [authority], [remember_token]) VALUES (16, N'guest', N'$2y$10$P3jqxZuhMFW/mejkYjLlYe16UEQeji1d7AfDV/QeLA.zm6exD2OBO', 3, N'xLcSmqePlCpQ9CZWHAHJULEBG2rVkuCHDWwoTjk7QNxsaPWfAnQrSDEVCu5b')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[basics]  WITH CHECK ADD  CONSTRAINT [FK_measuredvalues_infos] FOREIGN KEY([info_id])
REFERENCES [dbo].[infos] ([id])
GO
ALTER TABLE [dbo].[basics] CHECK CONSTRAINT [FK_measuredvalues_infos]
GO
ALTER TABLE [dbo].[metal]  WITH CHECK ADD  CONSTRAINT [FK_metals_infos] FOREIGN KEY([info_id])
REFERENCES [dbo].[infos] ([id])
GO
ALTER TABLE [dbo].[metal] CHECK CONSTRAINT [FK_metals_infos]
GO
