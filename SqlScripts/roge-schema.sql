USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'zV3iJqqtT2qt5SexYLILEiB2UVjbeo5l9kYV/1GNjcA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'wk3guQsH1Btb7obubjtBQnO6e27l9rDlbinjnFb6m1E=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [_AgAdmin]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'_AgAdmin')
CREATE LOGIN [_AgAdmin] WITH PASSWORD=N'cuQTWD+s3oDI7JCuHT4R39ipsH51SbGy/pVxIHaOllk=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [_AgAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [_AgDataService]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'_AgDataService')
CREATE LOGIN [_AgDataService] WITH PASSWORD=N'NU0MxQQd8RtwzcQ1yWbpH/zFfoUb6RBlKHdQw8ZV9MQ=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [_AgDataService] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [_AgTorchService]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'_AgTorchService')
CREATE LOGIN [_AgTorchService] WITH PASSWORD=N'VdgDlA3r03FbFQ7kD2y6cz/7+i2K2SUeLFGA6Ky2A00=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [_AgTorchService] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [_AgUsrService]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'_AgUsrService')
CREATE LOGIN [_AgUsrService] WITH PASSWORD=N'/7VUMpM8auxIUeJaVko9VwrNhgtcv+vnhLfH066o5Iw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [_AgUsrService] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [AgAdmin]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'AgAdmin')
CREATE LOGIN [AgAdmin] WITH PASSWORD=N'qkU/8WgG8AbylaE55xwcnbJx0oLoQorVcUlicbPULKg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [AgAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [AgBuild]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'AgBuild')
CREATE LOGIN [AgBuild] WITH PASSWORD=N'/SpBgBNzbHoKoBNEbv6zGei3OFhn4ZcnlBMvChv8iAM=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [AgBuild] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [app_user]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'app_user')
CREATE LOGIN [app_user] WITH PASSWORD=N'i16h6F8Mvpr61CLn6aYO/quSRqj/zqnRHepV4lweL2E=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [app_user] DISABLE
GO
/****** Object:  Login [BUILTIN\Administrators]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Administrators')
CREATE LOGIN [BUILTIN\Administrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [iqSchemaAdmin]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'iqSchemaAdmin')
CREATE LOGIN [iqSchemaAdmin] WITH PASSWORD=N'WndRHdRhxA7uczHB5IApQQ/FDF88U2sbl/kogusC+Fs=', DEFAULT_DATABASE=[jar-IqIrrigation], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [iqSchemaAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [iqWebUser]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'iqWebUser')
CREATE LOGIN [iqWebUser] WITH PASSWORD=N'pBU5TtilyyQCXubKsRWRkJ7yb3AvXIFAVhU+dclS20U=', DEFAULT_DATABASE=[jar-iqIrrigation], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [iqWebUser] DISABLE
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\MSSQLSERVER')
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 5/29/2018 2:02:17 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [AgAdmin]
GO
ALTER SERVER ROLE [processadmin] ADD MEMBER [AgAdmin]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [BUILTIN\Administrators]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
USE [rogue-UserOp]
GO
/****** Object:  User [_AgAdmin]    Script Date: 5/29/2018 2:02:39 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'_AgAdmin')
CREATE USER [_AgAdmin] FOR LOGIN [_AgAdmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [_AgUsrService]    Script Date: 5/29/2018 2:02:40 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'_AgUsrService')
CREATE USER [_AgUsrService] FOR LOGIN [_AgUsrService] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AgAdmin]    Script Date: 5/29/2018 2:02:40 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'AgAdmin')
CREATE USER [AgAdmin] FOR LOGIN [AgAdmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AgBuild]    Script Date: 5/29/2018 2:02:40 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'AgBuild')
CREATE USER [AgBuild] FOR LOGIN [AgBuild] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [readonly]    Script Date: 5/29/2018 2:02:41 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'readonly')
CREATE USER [readonly] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [UserOp_ExecRole]    Script Date: 5/29/2018 2:02:41 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'UserOp_ExecRole' AND type = 'R')
CREATE ROLE [UserOp_ExecRole]
GO
ALTER ROLE [UserOp_ExecRole] ADD MEMBER [_AgAdmin]
GO
ALTER ROLE [db_owner] ADD MEMBER [_AgAdmin]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [_AgAdmin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [_AgAdmin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [_AgAdmin]
GO
ALTER ROLE [UserOp_ExecRole] ADD MEMBER [_AgUsrService]
GO
ALTER ROLE [db_owner] ADD MEMBER [_AgUsrService]
GO
ALTER ROLE [db_datareader] ADD MEMBER [_AgUsrService]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [_AgUsrService]
GO
ALTER ROLE [db_owner] ADD MEMBER [AgAdmin]
GO
ALTER ROLE [UserOp_ExecRole] ADD MEMBER [AgBuild]
GO
ALTER ROLE [db_owner] ADD MEMBER [AgBuild]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [AgBuild]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AgBuild]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AgBuild]
GO
ALTER ROLE [db_datareader] ADD MEMBER [readonly]
GO
/****** Object:  Table [dbo].[AccessRole]    Script Date: 5/29/2018 2:02:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessRole](
	[ID] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AccessRole_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AccessRole_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_AccessRoleType] [bigint] NOT NULL DEFAULT ((2)),
	[fk_AccessRoleUsage] [bigint] NOT NULL DEFAULT ((1)),
 CONSTRAINT [PK_AccessRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccessRole_backup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRole_backup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessRole_backup](
	[ID] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccessRoleType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRoleType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessRoleType](
	[ID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AccessRoleType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccessRoleUsage]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRoleUsage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessRoleUsage](
	[ID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AccessRoleUsage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccessRoleUserFeature]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRoleUserFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessRoleUserFeature](
	[fk_AccessRoleID] [int] NOT NULL,
	[fk_UserFeatureID] [int] NOT NULL,
	[AccessLevel] [tinyint] NOT NULL CONSTRAINT [DF_AccessRoleFeature_AccessLevel]  DEFAULT ((0)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AccessRoleFeature_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AccessRoleFeature_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AccessRoleFeature] PRIMARY KEY CLUSTERED 
(
	[fk_AccessRoleID] ASC,
	[fk_UserFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccessRoleUserFeature_backup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRoleUserFeature_backup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessRoleUserFeature_backup](
	[fk_AccessRoleID] [int] NOT NULL,
	[fk_UserFeatureID] [int] NOT NULL,
	[AccessLevel] [tinyint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Alert]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alert]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Alert](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[fk_AlertTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Alert_IsActive]  DEFAULT ((1)),
	[IsActiveForAllAssets] [bit] NOT NULL CONSTRAINT [DF_Alert_AllAssets]  DEFAULT ((0)),
	[IsActiveForAllSites] [bit] NOT NULL CONSTRAINT [DF_Alert_AllSites]  DEFAULT ((0)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Alert_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Alert_UpdateUTC]  DEFAULT (getutcdate()),
	[IsVisible] [bit] NOT NULL CONSTRAINT [DF_Alert_IsVisible]  DEFAULT ((1)),
	[MaxFrequencyInSeconds] [int] NULL,
	[Culture] [nvarchar](10) NULL,
 CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertAsset]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertAsset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertAsset](
	[fk_AssetID] [bigint] NOT NULL,
	[fk_AlertID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertAsset_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AlertAsset] PRIMARY KEY CLUSTERED 
(
	[fk_AssetID] ASC,
	[fk_AlertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertAssetGroup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertAssetGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertAssetGroup](
	[fk_AssetGroupID] [bigint] NOT NULL,
	[fk_AlertID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AlertAssetGroup] PRIMARY KEY CLUSTERED 
(
	[fk_AssetGroupID] ASC,
	[fk_AlertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertContact]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertContact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertContact](
	[fk_AlertID] [bigint] NOT NULL,
	[fk_ContactID] [bigint] NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertContact_InsertUTC]  DEFAULT (getutcdate()),
	[ads_fcnId] [int] NOT NULL,
	[SendEmail] [bit] NOT NULL DEFAULT ('TRUE'),
	[SendSms] [bit] NOT NULL DEFAULT ('FALSE')
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertGeoFence]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertGeoFence]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertGeoFence](
	[fk_GeoFenceID] [bigint] NOT NULL,
	[fk_AlertID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertGeoFence_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AlertGeoFence] PRIMARY KEY CLUSTERED 
(
	[fk_GeoFenceID] ASC,
	[fk_AlertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertParameter]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertParameter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertParameter](
	[fk_AlertID] [bigint] NOT NULL,
	[fk_AlertParameterTypeID] [int] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertParameter_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertParameter_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AlertParameter] PRIMARY KEY CLUSTERED 
(
	[fk_AlertID] ASC,
	[fk_AlertParameterTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertParameterType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertParameterType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertParameterType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertParameterType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertParameterType_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AlertParameterType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlertType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AlertType_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AlertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Application]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Application]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Application](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[InsertUTC] [datetime2](7) NULL CONSTRAINT [DF_Application_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationNotificationType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationNotificationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationNotificationType](
	[Id] [int] NOT NULL,
	[fk_ApplicationId] [int] NOT NULL,
	[Description] [nvarchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ApplicationType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationType](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_ApplicationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationTypeLicenseType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationTypeLicenseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationTypeLicenseType](
	[ID] [int] NOT NULL,
	[fk_ApplicationTypeID] [int] NOT NULL,
	[fk_LicenseTypeID] [int] NOT NULL,
	[FeatureCode] [int] NULL,
 CONSTRAINT [PK_ApplicationTypeLicenseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Asset](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_MakeCode] [varchar](5) NOT NULL,
	[fk_AssetTypeID] [int] NOT NULL,
	[fk_IconImageID] [int] NOT NULL,
	[SerialNumber] [varchar](50) NOT NULL,
	[Label] [nvarchar](50) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Asset_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Asset_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_ModelID] [int] NULL,
	[ManufactureYear] [int] NULL,
	[VIN] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Asset_IsDeleted]  DEFAULT ((0)),
	[UnitCost] [float] NOT NULL CONSTRAINT [DF_Asset_UnitCost]  DEFAULT ((0)),
	[ChargeByArea] [bit] NOT NULL CONSTRAINT [DF_Asset_ChargeByArea]  DEFAULT ((0)),
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_Asset_IsRetired]  DEFAULT ((0)),
 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_AssetID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AssetAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetDevice]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetDevice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetDevice](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[fk_AssetID] [bigint] NULL,
	[fk_DeviceID] [bigint] NULL,
	[StartUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetDevice_StartUTC]  DEFAULT (getutcdate()),
	[EndUTC] [datetime2](7) NULL,
	[IsCurrent] [bit] NOT NULL CONSTRAINT [DF_AssetDevice_IsCurrent]  DEFAULT ((1)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetDevice_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetDevice_UpdateUTC]  DEFAULT (getutcdate()),
	[SMHCalibrationOffset] [float] NOT NULL CONSTRAINT [DF_Device_SMHCalibrationOffset]  DEFAULT ((0.0)),
	[IsImplementSwitchEnabled] [bit] NOT NULL CONSTRAINT [DF_AssetDevice_IsImplementSwitchEnabled]  DEFAULT ((0)),
	[fk_ProductivityThresholdsID] [bigint] NULL,
 CONSTRAINT [PK_AssetDevice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetFeature]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetFeature](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetFeature_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetFeature_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AssetFeature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetFeatureRequiredCapability]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredCapability]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetFeatureRequiredCapability](
	[fk_AssetFeatureID] [int] NOT NULL,
	[fk_DeviceCapabilityID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetFeatureRequiredCapability_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetFeatureRequiredCapability_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AssetFeatureRequiredCapability] PRIMARY KEY CLUSTERED 
(
	[fk_AssetFeatureID] ASC,
	[fk_DeviceCapabilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetFeatureRequiredServiceType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredServiceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetFeatureRequiredServiceType](
	[fk_AssetFeatureID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetFeatureRequiredServiceType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetFeatureRequiredServiceType_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_ServiceTypeID] [int] NOT NULL,
 CONSTRAINT [PK_AssetFeatureRequiredServiceType] PRIMARY KEY CLUSTERED 
(
	[fk_AssetFeatureID] ASC,
	[fk_ServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetGroup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetGroup](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetGroup_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetGroup_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AssetGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetGroupAsset]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetGroupAsset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetGroupAsset](
	[fk_AssetGroupID] [bigint] NOT NULL,
	[fk_AssetID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetGroupAsset_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AssetGroupAsset] PRIMARY KEY CLUSTERED 
(
	[fk_AssetGroupID] ASC,
	[fk_AssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetLicenseUsage]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetLicenseUsage](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_LicenseID] [bigint] NOT NULL,
	[fk_AssetID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
	[fk_AssignedbyUserID] [bigint] NOT NULL,
	[AssignedUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AssetLicenseUsage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AssetType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_AssetType_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brand](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Brand_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Brand_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Client]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Client](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Client_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Client_UpdateUTC]  DEFAULT (getutcdate()),
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_Client_IsRetired]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Client_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClientAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_ClientID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ClientAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_ClientAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClientDeviceLookup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientDeviceLookup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientDeviceLookup](
	[fk_DeviceID] [bigint] NOT NULL,
	[DeviceClientID] [varchar](150) NOT NULL,
	[fk_ClientID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ClientDeviceLookup_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_ClientDeviceLookup] PRIMARY KEY CLUSTERED 
(
	[fk_DeviceID] ASC,
	[DeviceClientID] ASC,
	[fk_ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Culture] [varchar](10) NOT NULL CONSTRAINT [DF_Contact_Culture]  DEFAULT ('en-US'),
	[EmailAddress] [nvarchar](150) NULL,
	[SMSAddress] [nvarchar](150) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Contact_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Contact_UpdateUTC]  DEFAULT (getutcdate()),
	[Name] [nvarchar](150) NOT NULL CONSTRAINT [DF_Contact_Name]  DEFAULT (''),
	[fk_MobileCarrierID] [int] NULL,
	[ads_fcnId] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Country_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Country_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_RegionID] [int] NULL,
	[ISOCode] [varchar](2) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CropSeason]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CropSeason]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CropSeason](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[HarvestYear] [int] NOT NULL,
	[fk_MasterCropID] [int] NULL,
	[StartUTC] [datetime2](7) NOT NULL,
	[EndUTC] [datetime2](7) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_CropSeason_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_CropSeason_UpdateUTC]  DEFAULT (getutcdate()),
	[YieldGoal] [float] NOT NULL CONSTRAINT [DF_CropSeason_YieldGoal]  DEFAULT ((0)),
	[fk_DefaultCommodityID] [int] NULL,
	[SubCrop] [nvarchar](50) NULL,
	[Color] [int] NULL,
 CONSTRAINT [PK_CropSeason] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_CropSeason_OrgID_MasterCropID_Year_SubCrop] UNIQUE NONCLUSTERED 
(
	[fk_OrgID] ASC,
	[fk_MasterCropID] ASC,
	[HarvestYear] ASC,
	[SubCrop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Currency](
	[Code] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesktopInstallation]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DesktopInstallation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DesktopInstallation](
	[HardDriveSerialNumber] [bigint] NOT NULL,
	[fk_OrgId] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DesktopInstallation] PRIMARY KEY CLUSTERED 
(
	[HardDriveSerialNumber] ASC,
	[fk_OrgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Device]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Device]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Device](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_DeviceTypeID] [int] NOT NULL,
	[SerialNumber] [varchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Device_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Device_UpdateUTC]  DEFAULT (getutcdate()),
	[Name] [nvarchar](50) NOT NULL,
	[fk_DealerOrgID] [bigint] NULL,
	[DCDeviceID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeviceAmazonResource]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceAmazonResource]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceAmazonResource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmazonResourceName] [varchar](2048) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeviceCapability]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceCapability]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceCapability](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceCapability_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceCapability_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_DeviceCapability] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DeviceService]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceService]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceService](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_DeviceID] [bigint] NOT NULL,
	[fk_ServiceTypeID] [int] NOT NULL,
	[IsCurrent] [bit] NOT NULL CONSTRAINT [DF_DeviceService_IsCurrent]  DEFAULT ((1)),
	[IsExempt] [bit] NOT NULL CONSTRAINT [DF_DeviceService_IsExempt]  DEFAULT ((0)),
	[ActivationDate] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceService_ActivationDate]  DEFAULT (getutcdate()),
	[ExpirationDate] [datetime2](7) NULL,
	[CreditNotificationLevel] [int] NOT NULL CONSTRAINT [DF_DeviceService_CreditNotificationLevel]  DEFAULT ((4)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceService_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceService_UpdateUTC]  DEFAULT (getutcdate()),
	[PartNumber] [nvarchar](50) NULL,
	[IsDemo] [bit] NOT NULL DEFAULT ((0)),
	[fk_ResellerOrgId] [bigint] NULL,
	[PurchaseOrderNum] [nvarchar](250) NULL,
	[SalesOrderNum] [nvarchar](250) NULL,
	[ActivationId] [nvarchar](250) NULL,
 CONSTRAINT [PK_DeviceService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DeviceServiceDeliveryHistory]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceServiceDeliveryHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceServiceDeliveryHistory](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_DeviceServiceID] [bigint] NOT NULL,
	[fk_EntitlementDeliveryTypeID] [int] NOT NULL,
	[InitUser] [bigint] NULL,
	[DeliveryUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceServiceDeliveryHistory_CreateDate]  DEFAULT (getutcdate()),
	[PassCode] [varchar](2048) NOT NULL,
	[Address] [nvarchar](150) NULL,
 CONSTRAINT [PK_DeviceServiceDeliveryHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeviceType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[fk_DeviceTypeRoleID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceType_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_DeviceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DeviceTypeCapability]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceTypeCapability]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceTypeCapability](
	[fk_DeviceTypeID] [int] NOT NULL,
	[fk_DeviceCapabilityID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceTypeCapability_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceTypeCapability_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_DeviceTypeCapability] PRIMARY KEY CLUSTERED 
(
	[fk_DeviceTypeID] ASC,
	[fk_DeviceCapabilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DeviceTypeRole]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceTypeRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceTypeRole](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceTypeRole_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceTypeRole_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_DeviceTypeRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DeviceTypeServiceType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceTypeServiceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceTypeServiceType](
	[fk_DeviceTypeID] [int] NOT NULL,
	[fk_ServiceTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceTypeServiceType_InsertUTC]  DEFAULT (getutcdate()),
	[FeatureCode] [tinyint] NULL,
 CONSTRAINT [PK_DeviceTypeServiceType] PRIMARY KEY CLUSTERED 
(
	[fk_DeviceTypeID] ASC,
	[fk_ServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DeviceTypeUserLicenseType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceTypeUserLicenseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceTypeUserLicenseType](
	[fk_DeviceTypeID] [int] NOT NULL,
	[fk_UserLicenseTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_DeviceTypeUserLicenseType_InsertUTC]  DEFAULT (getutcdate()),
	[FeatureCode] [tinyint] NULL,
 CONSTRAINT [PK_DeviceTypeUserLicenseType] PRIMARY KEY CLUSTERED 
(
	[fk_DeviceTypeID] ASC,
	[fk_UserLicenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmploymentStatus]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmploymentStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmploymentStatus](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_EmploymentStatus_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_EmploymentStatus_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_EmploymentStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EntitlementDeliveryType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntitlementDeliveryType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EntitlementDeliveryType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_EntitlementDeliveryType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_EntitlementDeliveryTYpe_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_EntitlementUserLicenseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Environment]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Environment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Environment](
	[ID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClientServices] [varchar](50) NOT NULL,
	[Integrations] [varchar](50) NOT NULL,
	[Notify] [varchar](50) NULL DEFAULT (NULL),
	[TileServer] [varchar](50) NULL DEFAULT (NULL),
	[Web] [varchar](50) NULL DEFAULT (NULL),
 CONSTRAINT [PK_Environment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Farm]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Farm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Farm](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_ClientID] [bigint] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Farm_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Farm_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_OrgID] [bigint] NOT NULL,
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_Farm_IsRetired]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Farm_IsDeleted]  DEFAULT ((0)),
	[ads_farmId] [int] NULL,
	[FsaNum] [nvarchar](150) NULL,
 CONSTRAINT [PK_Farm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FarmAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FarmAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FarmAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_FarmID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_FarmAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_FarmAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FarmDeviceLookup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FarmDeviceLookup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FarmDeviceLookup](
	[fk_DeviceID] [bigint] NOT NULL,
	[DeviceFarmID] [varchar](150) NOT NULL,
	[fk_FarmID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_FarmDeviceLookup_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_FarmDeviceLookup] PRIMARY KEY CLUSTERED 
(
	[fk_DeviceID] ASC,
	[DeviceFarmID] ASC,
	[fk_FarmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Field]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Field]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Field](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_FarmID] [bigint] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Boundary] [nvarchar](max) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Field_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Field_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_OrgID] [bigint] NOT NULL,
	[BoundaryCollectedUTC] [datetime2](7) NULL,
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_Field_IsRetired]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Field_IsDeleted]  DEFAULT ((0)),
	[Area] [float] NOT NULL CONSTRAINT [DF_Field_Area]  DEFAULT ((0.0)),
	[LegalDescription] [nvarchar](100) NULL,
	[MapGroup] [nvarchar](50) NULL,
	[ads_fldId] [int] NULL,
 CONSTRAINT [PK_Field] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FieldAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FieldAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_FieldID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_FieldAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_FieldAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FieldDeviceLookup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldDeviceLookup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FieldDeviceLookup](
	[fk_DeviceID] [bigint] NOT NULL,
	[DeviceFieldID] [varchar](150) NOT NULL,
	[fk_FieldID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_FieldDeviceLookup_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_FieldDeviceLookup] PRIMARY KEY CLUSTERED 
(
	[fk_DeviceID] ASC,
	[DeviceFieldID] ASC,
	[fk_FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldOrigin]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldOrigin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FieldOrigin](
	[fk_FieldID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_FieldOrigin_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_FieldOrigin_UpdateUTC]  DEFAULT (getutcdate()),
	[Origin] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FieldOrigin] PRIMARY KEY CLUSTERED 
(
	[fk_FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Formula]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Formula]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Formula](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[fk_MasterCropID] [int] NULL,
	[YieldGoalUnits] [nvarchar](50) NULL,
	[YieldGoalAvg] [float] NULL,
	[YieldGoalMin] [float] NULL,
	[YieldGoalMax] [float] NULL,
	[fk_NutrientID] [int] NULL,
	[Expression] [nvarchar](max) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Formula_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Formula_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Formula] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GeoFence]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GeoFence]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GeoFence](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MinLatitude] [float] NOT NULL,
	[MaxLatitude] [float] NOT NULL,
	[MinLongitude] [float] NOT NULL,
	[MaxLongitude] [float] NOT NULL,
	[PolygonXML] [xml] NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_GeoFence_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_GeoFence_UpdateUTC]  DEFAULT (getutcdate()),
	[IsVisible] [bit] NOT NULL CONSTRAINT [DF_Geofence_IsVisible]  DEFAULT ((1)),
	[GeometryJSON] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_GeoFence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GeofenceDispatch]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GeofenceDispatch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GeofenceDispatch](
	[fk_GeofenceID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_GeofenceDispatch_InsertUTC]  DEFAULT (getutcdate()),
	[DeviceSerialNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GeofenceDispatch] PRIMARY KEY CLUSTERED 
(
	[DeviceSerialNumber] ASC,
	[fk_GeofenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GeofenceExternalRef]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GeofenceExternalRef]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GeofenceExternalRef](
	[ifk_GeofenceID] [bigint] NOT NULL,
	[ExternalID] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_GeofenceExternalRef_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_GeofenceExternalRef] PRIMARY KEY CLUSTERED 
(
	[ifk_GeofenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GrownCrop]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrownCrop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GrownCrop](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_FieldID] [bigint] NOT NULL,
	[Boundary] [xml] NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_GrownCrop_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_GrownCrop_UpdateUTC]  DEFAULT (getutcdate()),
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_GrownCrop_IsRetired]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_GrownCrop_IsDeleted]  DEFAULT ((0)),
	[Area] [float] NOT NULL CONSTRAINT [DF_GrownCrop_Area]  DEFAULT ((0.0)),
	[fk_CropSeasonID] [bigint] NULL,
	[FirstPlantUTC] [datetime2](7) NULL,
	[LastHarvestUTC] [datetime2](7) NULL,
	[YieldGoal] [float] NULL,
	[BoundaryCollectedUTC] [datetime2](7) NULL,
	[ads_fldId] [int] NULL,
 CONSTRAINT [PK_GrownCrop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IconCategory]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IconCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IconCategory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_IconCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IconImage]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IconImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IconImage](
	[ID] [int] NOT NULL,
	[URL] [nvarchar](150) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MachineType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MachineType_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_IconCategory] [int] NOT NULL DEFAULT ((1)),
	[fk_IconType] [int] NOT NULL DEFAULT ((1)),
 CONSTRAINT [PK_IconImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IconType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IconType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IconType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_IconType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Implement]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Implement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Implement](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitCost] [float] NULL,
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_Implement_IsRetired]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Implement_IsDeleted]  DEFAULT ((0)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Implement_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Implement_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Implement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ImplementAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImplementAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ImplementAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_ImplementID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ImplementAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_ImplementAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JobTitle]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobTitle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JobTitle](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_JobTitle_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_JobTitle_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_JobTitle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[License]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[License]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[License](
	[ID] [bigint] IDENTITY(20000,1) NOT NULL,
	[fk_LicenseTypeID] [int] NOT NULL,
	[fk_ResellerOrgID] [bigint] NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[PurchasedAmount] [decimal](10, 3) NULL,
	[ConsumedAmount] [decimal](10, 3) NULL,
	[IsAssigned] [bit] NOT NULL,
	[ExpirationUTC] [datetime2](7) NULL,
	[IsDemo] [bit] NOT NULL,
	[PartNumber] [nvarchar](50) NULL,
	[ActivationID] [nvarchar](150) NULL,
	[SSOContactID] [nvarchar](150) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_License_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_License_UpdateUTC]  DEFAULT (getutcdate()),
	[EffectiveUTC] [datetime2](7) NULL,
	[PurchaseOrderNum] [nvarchar](250) NULL,
	[SalesOrderNum] [nvarchar](250) NULL,
	[SerialNumber] [nvarchar](250) NULL,
	[ReferenceText] [nvarchar](250) NULL,
	[fk_LicenseSourceID] [int] NOT NULL CONSTRAINT [DF_License_LicenseSource]  DEFAULT ((0)),
	[fk_adsMfaID] [int] NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[License_Backup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[License_Backup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[License_Backup](
	[ID] [bigint] IDENTITY(20000,1) NOT NULL,
	[fk_LicenseTypeID] [int] NOT NULL,
	[fk_ResellerOrgID] [bigint] NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[PurchasedAmount] [decimal](10, 3) NULL,
	[ConsumedAmount] [decimal](10, 3) NULL,
	[IsAssigned] [bit] NOT NULL,
	[ExpirationUTC] [datetime2](7) NULL,
	[IsDemo] [bit] NOT NULL,
	[PartNumber] [nvarchar](50) NULL,
	[ActivationID] [nvarchar](150) NULL,
	[SSOContactID] [nvarchar](150) NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
	[EffectiveUTC] [datetime2](7) NULL,
	[PurchaseOrderNum] [nvarchar](250) NULL,
	[SalesOrderNum] [nvarchar](250) NULL,
	[SerialNumber] [nvarchar](250) NULL,
	[ReferenceText] [nvarchar](250) NULL,
	[fk_LicenseSourceID] [int] NOT NULL,
	[fk_adsMfaID] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseConsumption]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseConsumption](
	[ID] [bigint] IDENTITY(20000,1) NOT NULL,
	[fk_AssignedByLoginID] [bigint] NOT NULL,
	[fk_LicenseTypeID] [int] NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[AmountUsed] [decimal](10, 3) NULL,
	[ExpirationUTC] [datetime2](7) NULL,
	[ConfirmationCode] [nvarchar](50) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseConsumption_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_LicenseConsumption] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseConsumptionDetails]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseConsumptionDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[fk_LicenseConsumptionID] [bigint] NOT NULL,
	[fk_LicenseID] [bigint] NOT NULL,
	[AmountUsed] [decimal](10, 3) NOT NULL,
 CONSTRAINT [PK_LicenseConsumptionDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseConsumptionField]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseConsumptionField](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[fk_LicenseConsumptionID] [bigint] NOT NULL,
	[fk_FieldID] [bigint] NOT NULL,
	[fk_SubscriptionLevelID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseConsumptionField_InsertUTC]  DEFAULT (getutcdate()),
	[ExpirationUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LicenseConsumptionField] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseConsumptionPolygon]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionPolygon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseConsumptionPolygon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[fk_LicenseConsumptionID] [bigint] NOT NULL,
	[Polygon] [nvarchar](max) NOT NULL,
	[Area] [decimal](10, 2) NULL,
	[PolygonIdentifier] [nvarchar](50) NOT NULL,
	[FeatureCode] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseConsumptionPolygon_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseConsumptionPolygon_UpdateUTC]  DEFAULT (getutcdate()),
	[ExpirationUTC] [datetime2](7) NULL,
 CONSTRAINT [PK_LicenseConsumptionPolygon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseConsumptionType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseConsumptionType](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_LicenseConsumptionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseSource]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseSource]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseSource](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseSource_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseSource_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_LicenseSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseType](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[fk_ObjectTypeID] [int] NOT NULL,
	[fk_LicenseConsumptionTypeID] [int] NOT NULL,
	[UsageExpirationPeriod] [int] NULL,
	[fk_LicenseTypeGroupID] [int] NULL,
 CONSTRAINT [PK_LicenseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseTypeDependency]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseTypeDependency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseTypeDependency](
	[fk_RequiredLicenseTypeID] [int] NOT NULL,
	[fk_DependentLicenseTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LicenseTypeDependency_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_LicenseTypeDependency] PRIMARY KEY CLUSTERED 
(
	[fk_RequiredLicenseTypeID] ASC,
	[fk_DependentLicenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LicenseTypeGroup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseTypeGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseTypeGroup](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseTypeRegion]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LicenseTypeRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LicenseTypeRegion](
	[fk_LicenseTypeID] [int] NOT NULL,
	[RegionBoundary] [varchar](max) NOT NULL,
 CONSTRAINT [PK_LicenseTypeRegion] PRIMARY KEY CLUSTERED 
(
	[fk_LicenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Login_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Login_UpdateUTC]  DEFAULT (getutcdate()),
	[TimezoneName] [varchar](50) NOT NULL CONSTRAINT [DF_Login_TimeZoneName]  DEFAULT ('UTC'),
	[IsMetric] [bit] NOT NULL CONSTRAINT [DF_Login_IsMetric]  DEFAULT ((0)),
	[LegalTermsAcceptedUTC] [datetime2](7) NULL,
	[SSOContactID] [nvarchar](50) NULL,
	[fk_CountryID] [int] NULL,
	[FirstName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NULL,
	[AreaMetric] [bit] NOT NULL CONSTRAINT [DF_Login_AreaMetric]  DEFAULT ((0)),
	[DistanceMetric] [bit] NOT NULL CONSTRAINT [DF_Login_DistanceMetric]  DEFAULT ((0)),
	[SpeedMetric] [bit] NOT NULL CONSTRAINT [DF_Login_SpeedMetric]  DEFAULT ((0)),
	[WeightMetric] [bit] NOT NULL CONSTRAINT [DF_Login_WeightMetric]  DEFAULT ((0)),
	[VolumeMetric] [bit] NOT NULL CONSTRAINT [DF_Login_VolumeMetric]  DEFAULT ((0)),
	[TemperatureMetric] [bit] NOT NULL CONSTRAINT [DF_Login_TemperatureMetric]  DEFAULT ((0)),
	[PressureMetric] [bit] NOT NULL CONSTRAINT [DF_Login_PressureMetric]  DEFAULT ((0)),
	[DepthMetric] [bit] NOT NULL CONSTRAINT [DF_Login_DepthMetric]  DEFAULT ((0)),
	[Uuid] [nvarchar](36) NULL,
	[Brand] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginAccessRole]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginAccessRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginAccessRole](
	[fk_LoginID] [bigint] NOT NULL,
	[fk_AccessRoleID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LoginAccessRole_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LoginAccessRole_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_LoginAccessRole] PRIMARY KEY CLUSTERED 
(
	[fk_LoginID] ASC,
	[fk_AccessRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoginNotification]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginNotification]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fk_LoginId] [bigint] NOT NULL,
	[fk_ApplicationNotificationTypeId] [int] NOT NULL,
	[fk_DeviceAmazonResourceId] [int] NOT NULL,
	[Culture] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoginNotification] PRIMARY KEY CLUSTERED 
(
	[fk_LoginId] ASC,
	[fk_ApplicationNotificationTypeId] ASC,
	[fk_DeviceAmazonResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoginOperator]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginOperator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginOperator](
	[fk_LoginID] [bigint] NOT NULL,
	[fk_OperatorID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LoginOperator_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_LoginOperator] PRIMARY KEY CLUSTERED 
(
	[fk_LoginID] ASC,
	[fk_OperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[fk_LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[fk_OperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoginUserFeature]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginUserFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginUserFeature](
	[fk_LoginID] [bigint] NOT NULL,
	[fk_UserFeatureID] [int] NOT NULL,
	[AccessLevel] [tinyint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LoginFeature] PRIMARY KEY CLUSTERED 
(
	[fk_LoginID] ASC,
	[fk_UserFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Make]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Make]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Make](
	[Code] [varchar](5) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Make_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Make_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Make] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterCommodity]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterCommodity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MasterCommodity](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MasterCommodity_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MasterCommodity_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_MasterCropID] [int] NOT NULL,
	[IsDefaultHarvest] [bit] NOT NULL,
	[StandardMoisture] [float] NULL,
	[HarvestDensity] [float] NULL,
 CONSTRAINT [PK_MasterCommodity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MasterCrop]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterCrop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MasterCrop](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MasterCrop_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MasterCrop_UpdateUTC]  DEFAULT (getutcdate()),
	[IconURL] [nvarchar](150) NULL,
 CONSTRAINT [PK_MasterCrop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MasterCropAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterCropAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MasterCropAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_MasterCropID] [int] NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MasterCropAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Material]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Material]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Material](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[fk_MaterialTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[fk_MaterialFormID] [int] NOT NULL,
	[fk_PurchaseUofMID] [int] NOT NULL,
	[fk_AppliedUofMID] [int] NOT NULL,
	[ConversionFactor] [float] NOT NULL,
	[UnitCost] [float] NULL,
	[DefaultTargetRate] [float] NULL,
	[fk_MasterCropID] [int] NULL,
	[Purity] [float] NULL,
	[EPANum] [nvarchar](50) NULL,
	[ActiveIngredient] [nvarchar](50) NULL,
	[InsertedUTC] [datetime2](7) NOT NULL,
	[UpdatedUTC] [datetime2](7) NOT NULL,
	[IsRetired] [bit] NOT NULL CONSTRAINT [DF_Material_IsRetired]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Material_IsDeleted]  DEFAULT ((0)),
	[SubType] [int] NULL,
	[AbnormalMeshPercentage] [float] NULL,
	[NormalMeshPercentage] [float] NULL,
	[Density] [float] NULL,
	[ads_CropVariety_ID] [int] NULL,
	[ads_Pesticides_ID] [int] NULL,
	[ads_FertilizerProducts_ID] [int] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MaterialAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaterialAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MaterialAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_MaterialID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_MaterialAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MaterialForm]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaterialForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MaterialForm](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialForm_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialForm_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_MaterialForm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MaterialFormUnitOfMeasure]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaterialFormUnitOfMeasure]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MaterialFormUnitOfMeasure](
	[fk_MaterialFormID] [int] NOT NULL,
	[fk_UofMID] [int] NOT NULL,
	[PurchaseUofM] [bit] NOT NULL CONSTRAINT [DF_MaterialFormUnitOfMeasure_PurchaseUofM]  DEFAULT ((1)),
	[AppliedUofM] [bit] NOT NULL CONSTRAINT [DF_MaterialFormUnitOfMeasure_AppliedUofM]  DEFAULT ((1)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialFormUnitOfMeasure_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialFormUnitOfMeasure_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_MaterialFormUnitOfMeasure] PRIMARY KEY CLUSTERED 
(
	[fk_MaterialFormID] ASC,
	[fk_UofMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MaterialNutrient]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaterialNutrient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MaterialNutrient](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_MaterialID] [bigint] NOT NULL,
	[fk_NutrientID] [int] NOT NULL,
	[Percentage] [float] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialNutrient_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialNutrient_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_MaterialNutrient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaterialType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MaterialType_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MobileCarrier]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MobileCarrier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MobileCarrier](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[EmailFormat] [nvarchar](150) NOT NULL,
	[fk_CountryID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MobileCarrier_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_MobileCarrier_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_MobileCarrier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Model]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Model](
	[ID] [int] IDENTITY(1001,1) NOT NULL,
	[fk_MakeCode] [varchar](5) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Model_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Model_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_DefaultIconImageID] [int] NOT NULL,
	[fk_AssetTypeID] [int] NULL,
	[fk_PlatformID] [int] NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotificationContact]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NotificationContact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NotificationContact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[fk_ApplicationNotificationTypeID] [int] NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[ads_fcnId] [int] NOT NULL,
	[SendNotification] [bit] NOT NULL,
	[SendEmail] [bit] NOT NULL,
	[SendSms] [bit] NOT NULL,
	[Culture] [nvarchar](100) NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_NotificationContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Nutrient]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nutrient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nutrient](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Abbrev] [nvarchar](10) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Nutrient_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Nutrient_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Nutrient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObjectType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ObjectType](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_ObjectType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OperationType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OperationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OperationType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IconURL] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_OperationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Operator]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Operator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Operator](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[OperatorID] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[fk_EmploymentStatus] [int] NOT NULL,
	[fk_JobTitleID] [bigint] NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Operator_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Operator_UpdateUTC]  DEFAULT (getutcdate()),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Operator_IsDeleted]  DEFAULT ((0)),
	[EPANum] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[PIN] [nvarchar](50) NULL,
	[UnitCost] [float] NOT NULL CONSTRAINT [DF_Operator_UnitCost]  DEFAULT ((0)),
	[ads_fcnId] [int] NULL,
 CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OperatorAlias]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OperatorAlias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OperatorAlias](
	[fk_OrgID] [bigint] NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[fk_OperatorID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OperatorAlias_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OperatorAlias] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OperatorGroup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OperatorGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OperatorGroup](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OperatorGroup_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OperatorGroup_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OperatorGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OperatorGroup_Operator]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OperatorGroup_Operator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OperatorGroup_Operator](
	[fk_OperatorGroupID] [bigint] NOT NULL,
	[fk_OperatorID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OperatorGroup_Operator]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OperatorGroup_Operator] PRIMARY KEY CLUSTERED 
(
	[fk_OperatorGroupID] ASC,
	[fk_OperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Organization](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Organization_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Organization_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_BrandID] [int] NOT NULL,
	[ServiceEvaluationInProcess] [bit] NOT NULL CONSTRAINT [DF_Organization_ServiceEvaluationInProcess]  DEFAULT ((0)),
	[ServiceEvaluationStartUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Organization_ServiceEvaluationStartUTC]  DEFAULT (dateadd(day,(-2),getutcdate())),
	[IsExempt] [bit] NOT NULL CONSTRAINT [DF_Organization_IsExempt]  DEFAULT ((0)),
	[TimezoneName] [varchar](50) NOT NULL CONSTRAINT [DF_Organization_TimezoneName]  DEFAULT ('UTC'),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Organization_IsDeleted]  DEFAULT ((0)),
	[ExternalOrgIdentifier] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Organization_ExternalOrgIdentifier]  DEFAULT (newid()),
	[IsMetric] [bit] NOT NULL CONSTRAINT [DF_Organization_IsMetric]  DEFAULT ((0)),
	[CurrencyCode] [varchar](3) NOT NULL CONSTRAINT [DF_Organization_CurrencyCode]  DEFAULT ('USD'),
	[DisableImportAssetCreation] [bit] NOT NULL CONSTRAINT [DF_Organization_DisableImportAssetCreation]  DEFAULT ((0)),
	[DisableImportOperatorCreation] [bit] NOT NULL CONSTRAINT [DF_Organization_DisableImportOperatorCreation]  DEFAULT ((0)),
	[fk_OrgOwner] [bigint] NULL,
	[WorkPhone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address1] [nvarchar](150) NULL,
	[Address2] [nvarchar](150) NULL,
	[City] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[WebUrl] [nvarchar](50) NULL,
	[MaxDesktopInstallations] [int] NOT NULL DEFAULT ((5)),
	[CellPhone] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL,
	[fk_OrganizationTypeID] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganizationCommodity]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrganizationCommodity](
	[fk_OrgID] [bigint] NOT NULL,
	[fk_MasterCommodityID] [int] NOT NULL,
	[Price] [float] NULL,
	[fk_HarvestUofMID] [int] NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrganizationCommodity_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrganizationCommodity_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrganizationCommodity] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[fk_MasterCommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrganizationCrop]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationCrop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrganizationCrop](
	[fk_OrgID] [bigint] NOT NULL,
	[fk_MasterCropID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrganizationCrop_InsertUTC]  DEFAULT (getutcdate()),
	[Color] [int] NULL,
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrganizationCrop_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrganizationCrop] PRIMARY KEY CLUSTERED 
(
	[fk_OrgID] ASC,
	[fk_MasterCropID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrganizationLogin]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationLogin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrganizationLogin](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[fk_LoginID] [bigint] NOT NULL,
	[IsPrimary] [bit] NOT NULL CONSTRAINT [DF_LoginOrganization_IsPrimary]  DEFAULT ((0)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_LoginOrganization_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrganizationLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uc_OrganizationLogin_OrgID_LoginID] UNIQUE NONCLUSTERED 
(
	[fk_OrgID] ASC,
	[fk_LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrganizationType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrganizationType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrganizationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgLicenseUnassigned]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgLicenseUnassigned]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgLicenseUnassigned](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UnassignedCount] [tinyint] NOT NULL CONSTRAINT [OrgLicenseUnassigned_UnassignedCount]  DEFAULT ((0)),
	[fk_OrgID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgLicenseUnassigned_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgLicenseUnassigned_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgLicenseUnassigned] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgLoginAccessRole]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgLoginAccessRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgLoginAccessRole](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgLoginID] [bigint] NOT NULL,
	[fk_AccessRoleID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgLoginAccessRole_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgLoginAccessRole_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgLoginAccessRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgLoginNotification]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgLoginNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fk_OrgLoginId] [bigint] NOT NULL,
	[fk_ApplicationNotificationTypeId] [int] NOT NULL,
	[fk_DeviceAmazonResourceId] [int] NOT NULL,
	[Culture] [nvarchar](100) NULL,
 CONSTRAINT [PK_OrgLoginNotification] PRIMARY KEY CLUSTERED 
(
	[fk_OrgLoginId] ASC,
	[fk_ApplicationNotificationTypeId] ASC,
	[fk_DeviceAmazonResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[orgLoginsWithOrgAdminFeature]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orgLoginsWithOrgAdminFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[orgLoginsWithOrgAdminFeature](
	[fk_OrgLoginID] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgLoginUserFeature]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgLoginUserFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgLoginUserFeature](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgLoginID] [bigint] NOT NULL,
	[fk_UserFeatureID] [int] NOT NULL,
	[AccessLevel] [tinyint] NOT NULL CONSTRAINT [DF_OrgLoginUserFeature_AccessLevel]  DEFAULT ((0)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgLoginUserFeature_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgLoginUserFeature_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgLoginUserFeature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgLoginUserFeature_backup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgLoginUserFeature_backup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgLoginUserFeature_backup](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgLoginID] [bigint] NOT NULL,
	[fk_UserFeatureID] [int] NOT NULL,
	[AccessLevel] [tinyint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgRelationship]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationship]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationship](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[fk_PrincipalOrgID] [bigint] NOT NULL,
	[fk_AssociatedOrgID] [bigint] NOT NULL,
	[fk_OrgRelationshipTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationship_InsertUTC]  DEFAULT (getutcdate()),
	[Alias] [nvarchar](35) NULL,
	[UpdateUTC] [datetime2](7) NOT NULL DEFAULT (getutcdate()),
	[HasFullAccess] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_OrgRelationship] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgRelationshipAccessRole]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationshipAccessRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationshipAccessRole](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgRelationshipID] [bigint] NOT NULL,
	[fk_AccessRoleID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipAccessRole_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipAccessRole_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgRelationshipAccessRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgRelationshipClient]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationshipClient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationshipClient](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgRelationshipID] [bigint] NOT NULL,
	[fk_ClientID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_OrgRelationshipClient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgRelationshipFarm]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationshipFarm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationshipFarm](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgRelationshipID] [bigint] NOT NULL,
	[fk_FarmID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipFarm_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipFarm_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgRelationshipFarm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgRelationshipField]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationshipField]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationshipField](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgRelationshipID] [bigint] NOT NULL,
	[fk_FieldID] [bigint] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_OrgRelationshipField] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrgRelationshipType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationshipType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationshipType](
	[ID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipType_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgRelationshipType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrgRelationshipYear]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgRelationshipYear]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgRelationshipYear](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_OrgRelationshipID] [bigint] NOT NULL,
	[Year] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipYear_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_OrgRelationshipYear_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_OrgRelationshipYear] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Platform]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Platform](
	[ID] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Platform_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Platform_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductivityThresholds]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductivityThresholds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductivityThresholds](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DigitalInputIsHigh] [bit] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ProductivityThresholds_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ProductivityThresholds_UpdateUTC]  DEFAULT (getutcdate()),
	[DelayedDurationThreshold] [int] NOT NULL,
	[IsDelayEnabled] [bit] NOT NULL DEFAULT ((0)),
	[DelayedSpeedThreshold] [float] NULL,
 CONSTRAINT [PK_ProductivityThresholds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Region]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Region_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Region_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ResourceText]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResourceText]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ResourceText](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fk_TextResourceID] [int] NOT NULL,
	[Culture] [varchar](5) NOT NULL,
	[ResourceText] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_ResourceText] UNIQUE NONCLUSTERED 
(
	[fk_TextResourceID] ASC,
	[Culture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ServiceCreditType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ServiceCreditType_UpdateUTC]  DEFAULT (getutcdate()),
	[PartNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_ServiceCreditType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServiceTypeDependency]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceTypeDependency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceTypeDependency](
	[fk_RequiredServiceTypeID] [int] NOT NULL,
	[fk_DependentServiceTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ServiceTypeDependency] PRIMARY KEY CLUSTERED 
(
	[fk_RequiredServiceTypeID] ASC,
	[fk_DependentServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServiceTypeTranslation]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceTypeTranslation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceTypeTranslation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fk_ServiceTypeID] [int] NOT NULL,
	[PartNumber] [varchar](50) NULL,
	[fk_TextResourceID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_ServiceTypeTranslation] UNIQUE NONCLUSTERED 
(
	[fk_ServiceTypeID] ASC,
	[PartNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceTypeUpgrade]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceTypeUpgrade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceTypeUpgrade](
	[fk_BaseServiceTypeID] [int] NOT NULL,
	[fk_UpgradeServiceTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_ServiceTypeUpgrade_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_ServiceTypeUpgrade] PRIMARY KEY CLUSTERED 
(
	[fk_BaseServiceTypeID] ASC,
	[fk_UpgradeServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Session]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Session]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Session](
	[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Session_ID]  DEFAULT (newid()),
	[fk_TaskID] [uniqueidentifier] NOT NULL,
	[StartUTC] [datetime2](7) NOT NULL,
	[EndUTC] [datetime2](7) NOT NULL,
	[Duration] [float] NOT NULL,
	[Area] [float] NOT NULL,
	[fk_FileID] [uniqueidentifier] NULL,
	[Notes] [nvarchar](max) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Session_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Session_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionAsset]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionAsset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionAsset](
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[fk_AssetID] [bigint] NOT NULL,
	[Duration] [float] NOT NULL,
	[Area] [float] NOT NULL,
	[UnitCost] [float] NOT NULL,
	[ChargeByArea] [bit] NOT NULL,
	[TotalCost] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_SessionAsset] PRIMARY KEY CLUSTERED 
(
	[fk_SessionID] ASC,
	[fk_AssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionCondition]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionCondition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionCondition](
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[RecordedUTC] [datetime2](7) NULL,
	[WindDirection] [float] NULL,
	[WindSpeed] [float] NULL,
	[WindGustSpeed] [float] NULL,
	[SkyConditions] [nvarchar](50) NULL,
	[Temperature] [float] NULL,
	[Humidity] [float] NULL,
	[SoilConditions] [nvarchar](50) NULL,
	[SoilType] [nvarchar](50) NULL,
	[GrowthStage] [nvarchar](50) NULL,
	[AppMethod] [nvarchar](50) NULL,
 CONSTRAINT [PK_SessionCondition] PRIMARY KEY CLUSTERED 
(
	[fk_SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionHarvest]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionHarvest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionHarvest](
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[fk_MasterCommodityID] [int] NULL,
	[Qty] [float] NOT NULL,
	[Area] [float] NOT NULL,
	[Moisture] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[TotalIncome] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_SessionHarvest] PRIMARY KEY CLUSTERED 
(
	[fk_SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionImplement]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionImplement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionImplement](
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[fk_ImplementID] [bigint] NOT NULL,
	[Area] [float] NOT NULL,
	[UnitCost] [float] NOT NULL,
	[TotalCost] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_SessionImplement] PRIMARY KEY CLUSTERED 
(
	[fk_SessionID] ASC,
	[fk_ImplementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionMaterial]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionMaterial](
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[fk_MaterialID] [bigint] NOT NULL,
	[Qty] [float] NOT NULL,
	[TargetRate] [float] NOT NULL,
	[Area] [float] NOT NULL,
	[UnitCost] [float] NOT NULL,
	[TotalCost] [decimal](19, 4) NOT NULL,
	[ParentID] [bigint] NULL,
 CONSTRAINT [PK_SessionMaterial] PRIMARY KEY CLUSTERED 
(
	[fk_SessionID] ASC,
	[fk_MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionOperator]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionOperator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionOperator](
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[fk_OperatorID] [bigint] NOT NULL,
	[Duration] [float] NOT NULL,
	[UnitCost] [float] NOT NULL,
	[TotalCost] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_SessionOperator] PRIMARY KEY CLUSTERED 
(
	[fk_SessionID] ASC,
	[fk_OperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SessionTankMix]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionTankMix]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionTankMix](
	[fk_TankMixID] [bigint] NOT NULL,
	[fk_SessionID] [uniqueidentifier] NOT NULL,
	[Total] [float] NOT NULL,
	[Carrier] [nvarchar](50) NULL,
	[TargetRate] [float] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_SessionTankMix] PRIMARY KEY CLUSTERED 
(
	[fk_TankMixID] ASC,
	[fk_SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SoilSample]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoilSample]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SoilSample](
	[fk_GroupID] [bigint] NOT NULL,
	[SampleID] [nvarchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[InsertUTC] [datetime2](7) NOT NULL,
	[UpdateUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SoilSample] PRIMARY KEY CLUSTERED 
(
	[fk_GroupID] ASC,
	[SampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SoilSampleGroup]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoilSampleGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SoilSampleGroup](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_FieldID] [bigint] NOT NULL,
	[DateSampledUTC] [datetime2](7) NOT NULL,
	[TimeLengthYears] [int] NOT NULL,
	[InsertedUTC] [datetime2](7) NOT NULL,
	[UpdatedUTC] [datetime2](7) NOT NULL,
	[IsRetired] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SoilSampleGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SubOperationType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubOperationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SubOperationType](
	[ID] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[fk_OperationTypeID] [int] NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
 CONSTRAINT [PK_SubOperationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_SubOperationType] UNIQUE NONCLUSTERED 
(
	[fk_OrgID] ASC,
	[fk_OperationTypeID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SubscriptionLevel]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubscriptionLevel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SubscriptionLevel](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_SubscriptionLevel_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_SubscriptionLevel_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_SubscriptionLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TankMix]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TankMix]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TankMix](
	[fk_MaterialID] [bigint] NOT NULL,
	[Carrier] [nvarchar](50) NULL,
	[Definition] [bit] NOT NULL,
	[Amount] [float] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_TankMix_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_TankMix_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_TankMixMaterial] PRIMARY KEY CLUSTERED 
(
	[fk_MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TankMixIngredient]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TankMixIngredient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TankMixIngredient](
	[fk_TankMixID] [bigint] NOT NULL,
	[fk_MaterialID] [bigint] NOT NULL,
	[Ratio] [float] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_TankMixIngredient_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_TankMixIngredient_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_TankMixIngredient] PRIMARY KEY CLUSTERED 
(
	[fk_TankMixID] ASC,
	[fk_MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Task]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Task]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Task](
	[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Task_ID]  DEFAULT (newid()),
	[Name] [nvarchar](50) NOT NULL,
	[fk_GrownCropID] [bigint] NOT NULL,
	[fk_OperationTypeID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Task_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Task_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_SubOperationTypeID] [int] NULL DEFAULT (NULL),
	[IsVerified] [bit] NOT NULL CONSTRAINT [DF_Task_IsVerified]  DEFAULT ((0)),
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TextResource]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TextResource]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TextResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceKey] [varchar](50) NOT NULL,
	[DefaultText] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TextResource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_TextResource] UNIQUE NONCLUSTERED 
(
	[ResourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThirdPartyAssetLink]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThirdPartyAssetLink]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ThirdPartyAssetLink](
	[AssetID] [bigint] NOT NULL,
	[ExternalID] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AssetID_ExternalID_Type] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC,
	[ExternalID] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UnitDomain]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitDomain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnitDomain](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UnitDomain_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UnitDomain_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UnitDomain] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfMeasure]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnitOfMeasure](
	[ID] [int] NOT NULL,
	[Singular] [nvarchar](50) NOT NULL,
	[Plural] [nvarchar](50) NOT NULL,
	[Abbrev] [nvarchar](10) NOT NULL,
	[fk_UnitSystemID] [int] NULL,
	[fk_UnitDomainID] [int] NULL,
	[Conversion] [float] NOT NULL CONSTRAINT [DF_UnitOfMeasure_Conversion]  DEFAULT ((0.0)),
	[Offset] [float] NOT NULL CONSTRAINT [DF_UnitOfMeasure_Offset]  DEFAULT ((0.0)),
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UnitOfMeasure_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UnitOfMeasure_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UnitOfMeasure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UnitSystem]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitSystem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnitSystem](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UnitSystem_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UnitSystem_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UnitSystem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserFeature]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserFeature](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Feature_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_Feature_UpdateUTC]  DEFAULT (getutcdate()),
	[fk_ApplicationID] [int] NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserLicense]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicense]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicense](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_OrgID] [bigint] NOT NULL,
	[SSOContactID] [nvarchar](150) NULL,
	[ActivationID] [nvarchar](150) NOT NULL,
	[fk_UserLicenseTypeID] [int] NOT NULL,
	[fk_UserLicenseExpiryModeID] [int] NOT NULL,
	[fk_UserLicenseStatusID] [int] NOT NULL,
	[ExpiryData] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [FK_UserLicense_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [FK_UserLicense_UpdateUTC]  DEFAULT (getutcdate()),
	[PartNumber] [nvarchar](50) NULL,
	[IsDemo] [bit] NOT NULL DEFAULT ((0)),
	[ReferenceText] [nvarchar](250) NULL,
	[PurchaseOrderNum] [nvarchar](250) NULL,
	[SalesOrderNum] [nvarchar](250) NULL,
	[SerialNumber] [nvarchar](250) NULL,
	[fk_LicenseSourceID] [int] NOT NULL CONSTRAINT [DF_UserLicense_LicenseSource]  DEFAULT ((0)),
 CONSTRAINT [PK_UserLicense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserLicenseExpiryMode]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseExpiryMode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseExpiryMode](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseExpiryMode_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserLicenseExpiryMode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserLicenseStatus]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseStatus](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseStatus_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserLicenseStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserLicenseType]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseType_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseType_UpdateUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserLicenseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserLicenseTypeTranslation]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseTypeTranslation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseTypeTranslation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fk_UserLicenseTypeID] [int] NOT NULL,
	[PartNumber] [varchar](50) NULL,
	[fk_TextResourceID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_UserLicenseTypeTranslation] UNIQUE NONCLUSTERED 
(
	[fk_UserLicenseTypeID] ASC,
	[PartNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLicenseUsage]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseUsage](
	[ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[fk_UserLicenseID] [bigint] NOT NULL,
	[fk_DeviceID] [bigint] NOT NULL,
	[EffectiveUTC] [datetime2](7) NOT NULL,
	[fk_UserLicenseUsageStatusID] [int] NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseUsage_InsertUTC]  DEFAULT (getutcdate()),
	[UpdateUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseUsage_UpdateUTC]  DEFAULT (getutcdate()),
	[ConfirmationCode] [nvarchar](10) NULL,
	[Consumption] [int] NOT NULL CONSTRAINT [DF_UserLicenseUsage_Consumption]  DEFAULT ((0)),
	[fk_AssignedbyUserID] [bigint] NOT NULL,
	[AssignedUTC] [datetime2](7) NOT NULL DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserLicenseUsage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserLicenseUsageDeliveryHistory]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseUsageDeliveryHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseUsageDeliveryHistory](
	[ID] [bigint] IDENTITY(1001,1) NOT NULL,
	[fk_UserLicenseUsageID] [bigint] NOT NULL,
	[fk_EntitlementDeliveryTypeID] [int] NOT NULL,
	[InitUser] [bigint] NULL,
	[DeliveryUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseUsageDeliveryHistory_CreateDate]  DEFAULT (getutcdate()),
	[PassCode] [varchar](2048) NOT NULL,
	[Address] [nvarchar](150) NULL,
 CONSTRAINT [PK_UserLicenseUsageDeliveryHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLicenseUsageStatus]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLicenseUsageStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLicenseUsageStatus](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[InsertUTC] [datetime2](7) NOT NULL CONSTRAINT [DF_UserLicenseUsageStatus_InsertUTC]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserLicenseUsageStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlertAssetGroup_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlertAssetGroup] ADD  CONSTRAINT [DF_AlertAssetGroup_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_LoginFeature_AccessLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LoginUserFeature] ADD  CONSTRAINT [DF_LoginFeature_AccessLevel]  DEFAULT ((0)) FOR [AccessLevel]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_LoginFeature_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LoginUserFeature] ADD  CONSTRAINT [DF_LoginFeature_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_LoginFeature_UpdateUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LoginUserFeature] ADD  CONSTRAINT [DF_LoginFeature_UpdateUTC]  DEFAULT (getutcdate()) FOR [UpdateUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_MasterCropAlias_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MasterCropAlias] ADD  CONSTRAINT [DF_MasterCropAlias_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NotificationContact_SendNotification]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NotificationContact] ADD  CONSTRAINT [DF_NotificationContact_SendNotification]  DEFAULT ((0)) FOR [SendNotification]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NotificationContact_SendEmail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NotificationContact] ADD  CONSTRAINT [DF_NotificationContact_SendEmail]  DEFAULT ((0)) FOR [SendEmail]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NotificationContact_SendSms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NotificationContact] ADD  CONSTRAINT [DF_NotificationContact_SendSms]  DEFAULT ((0)) FOR [SendSms]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrgRelationshipClient_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrgRelationshipClient] ADD  CONSTRAINT [DF_OrgRelationshipClient_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrgRelationshipClient_UpdateUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrgRelationshipClient] ADD  CONSTRAINT [DF_OrgRelationshipClient_UpdateUTC]  DEFAULT (getutcdate()) FOR [UpdateUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrgRelationshipField_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrgRelationshipField] ADD  CONSTRAINT [DF_OrgRelationshipField_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrgRelationshipField_UpdateUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrgRelationshipField] ADD  CONSTRAINT [DF_OrgRelationshipField_UpdateUTC]  DEFAULT (getutcdate()) FOR [UpdateUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServiceTypeDependency_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServiceTypeDependency] ADD  CONSTRAINT [DF_ServiceTypeDependency_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SoilSample_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoilSample] ADD  CONSTRAINT [DF_SoilSample_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SoilSample_UpdateUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoilSample] ADD  CONSTRAINT [DF_SoilSample_UpdateUTC]  DEFAULT (getutcdate()) FOR [UpdateUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SoilSampleGroup_InsertUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoilSampleGroup] ADD  CONSTRAINT [DF_SoilSampleGroup_InsertUTC]  DEFAULT (getutcdate()) FOR [InsertedUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SoilSampleGroup_UpdateUTC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoilSampleGroup] ADD  CONSTRAINT [DF_SoilSampleGroup_UpdateUTC]  DEFAULT (getutcdate()) FOR [UpdatedUTC]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SoilSampleGroup_IsRetired]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoilSampleGroup] ADD  CONSTRAINT [DF_SoilSampleGroup_IsRetired]  DEFAULT ((0)) FOR [IsRetired]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SoilSampleGroup_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoilSampleGroup] ADD  CONSTRAINT [DF_SoilSampleGroup_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRole_AccessRoleType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRole]'))
ALTER TABLE [dbo].[AccessRole]  WITH CHECK ADD  CONSTRAINT [FK_AccessRole_AccessRoleType] FOREIGN KEY([fk_AccessRoleType])
REFERENCES [dbo].[AccessRoleType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRole_AccessRoleType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRole]'))
ALTER TABLE [dbo].[AccessRole] CHECK CONSTRAINT [FK_AccessRole_AccessRoleType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRole_AccessRoleUsage]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRole]'))
ALTER TABLE [dbo].[AccessRole]  WITH CHECK ADD  CONSTRAINT [FK_AccessRole_AccessRoleUsage] FOREIGN KEY([fk_AccessRoleUsage])
REFERENCES [dbo].[AccessRoleUsage] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRole_AccessRoleUsage]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRole]'))
ALTER TABLE [dbo].[AccessRole] CHECK CONSTRAINT [FK_AccessRole_AccessRoleUsage]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRoleFeature_AccessRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRoleUserFeature]'))
ALTER TABLE [dbo].[AccessRoleUserFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessRoleFeature_AccessRole] FOREIGN KEY([fk_AccessRoleID])
REFERENCES [dbo].[AccessRole] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRoleFeature_AccessRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRoleUserFeature]'))
ALTER TABLE [dbo].[AccessRoleUserFeature] CHECK CONSTRAINT [FK_AccessRoleFeature_AccessRole]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRoleFeature_UserFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRoleUserFeature]'))
ALTER TABLE [dbo].[AccessRoleUserFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessRoleFeature_UserFeature] FOREIGN KEY([fk_UserFeatureID])
REFERENCES [dbo].[UserFeature] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccessRoleFeature_UserFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccessRoleUserFeature]'))
ALTER TABLE [dbo].[AccessRoleUserFeature] CHECK CONSTRAINT [FK_AccessRoleFeature_UserFeature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Alert_AlertType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alert]'))
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [fk_Alert_AlertType] FOREIGN KEY([fk_AlertTypeID])
REFERENCES [dbo].[AlertType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Alert_AlertType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alert]'))
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [fk_Alert_AlertType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Alert_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alert]'))
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [fk_Alert_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Alert_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alert]'))
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [fk_Alert_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAsset_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAsset]'))
ALTER TABLE [dbo].[AlertAsset]  WITH CHECK ADD  CONSTRAINT [fk_AlertAsset_Alert] FOREIGN KEY([fk_AlertID])
REFERENCES [dbo].[Alert] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAsset_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAsset]'))
ALTER TABLE [dbo].[AlertAsset] CHECK CONSTRAINT [fk_AlertAsset_Alert]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAsset_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAsset]'))
ALTER TABLE [dbo].[AlertAsset]  WITH CHECK ADD  CONSTRAINT [fk_AlertAsset_Asset] FOREIGN KEY([fk_AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAsset_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAsset]'))
ALTER TABLE [dbo].[AlertAsset] CHECK CONSTRAINT [fk_AlertAsset_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAssetGroup_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAssetGroup]'))
ALTER TABLE [dbo].[AlertAssetGroup]  WITH CHECK ADD  CONSTRAINT [fk_AlertAssetGroup_Alert] FOREIGN KEY([fk_AlertID])
REFERENCES [dbo].[Alert] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAssetGroup_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAssetGroup]'))
ALTER TABLE [dbo].[AlertAssetGroup] CHECK CONSTRAINT [fk_AlertAssetGroup_Alert]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAssetGroup_AssetGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAssetGroup]'))
ALTER TABLE [dbo].[AlertAssetGroup]  WITH CHECK ADD  CONSTRAINT [fk_AlertAssetGroup_AssetGroup] FOREIGN KEY([fk_AssetGroupID])
REFERENCES [dbo].[AssetGroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertAssetGroup_AssetGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertAssetGroup]'))
ALTER TABLE [dbo].[AlertAssetGroup] CHECK CONSTRAINT [fk_AlertAssetGroup_AssetGroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertContact_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertContact]'))
ALTER TABLE [dbo].[AlertContact]  WITH CHECK ADD  CONSTRAINT [fk_AlertContact_Alert] FOREIGN KEY([fk_AlertID])
REFERENCES [dbo].[Alert] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertContact_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertContact]'))
ALTER TABLE [dbo].[AlertContact] CHECK CONSTRAINT [fk_AlertContact_Alert]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertContact_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertContact]'))
ALTER TABLE [dbo].[AlertContact]  WITH CHECK ADD  CONSTRAINT [fk_AlertContact_Contact] FOREIGN KEY([fk_ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertContact_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertContact]'))
ALTER TABLE [dbo].[AlertContact] CHECK CONSTRAINT [fk_AlertContact_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertGeoFence_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertGeoFence]'))
ALTER TABLE [dbo].[AlertGeoFence]  WITH CHECK ADD  CONSTRAINT [fk_AlertGeoFence_Alert] FOREIGN KEY([fk_AlertID])
REFERENCES [dbo].[Alert] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertGeoFence_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertGeoFence]'))
ALTER TABLE [dbo].[AlertGeoFence] CHECK CONSTRAINT [fk_AlertGeoFence_Alert]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertGeoFence_GeoFence]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertGeoFence]'))
ALTER TABLE [dbo].[AlertGeoFence]  WITH CHECK ADD  CONSTRAINT [fk_AlertGeoFence_GeoFence] FOREIGN KEY([fk_GeoFenceID])
REFERENCES [dbo].[GeoFence] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertGeoFence_GeoFence]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertGeoFence]'))
ALTER TABLE [dbo].[AlertGeoFence] CHECK CONSTRAINT [fk_AlertGeoFence_GeoFence]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertParameter_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertParameter]'))
ALTER TABLE [dbo].[AlertParameter]  WITH CHECK ADD  CONSTRAINT [fk_AlertParameter_Alert] FOREIGN KEY([fk_AlertID])
REFERENCES [dbo].[Alert] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertParameter_Alert]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertParameter]'))
ALTER TABLE [dbo].[AlertParameter] CHECK CONSTRAINT [fk_AlertParameter_Alert]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertParameter_AlertParameterType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertParameter]'))
ALTER TABLE [dbo].[AlertParameter]  WITH CHECK ADD  CONSTRAINT [fk_AlertParameter_AlertParameterType] FOREIGN KEY([fk_AlertParameterTypeID])
REFERENCES [dbo].[AlertParameterType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AlertParameter_AlertParameterType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AlertParameter]'))
ALTER TABLE [dbo].[AlertParameter] CHECK CONSTRAINT [fk_AlertParameter_AlertParameterType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationNotificationType_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationNotificationType]'))
ALTER TABLE [dbo].[ApplicationNotificationType]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationNotificationType_Application] FOREIGN KEY([fk_ApplicationId])
REFERENCES [dbo].[Application] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationNotificationType_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationNotificationType]'))
ALTER TABLE [dbo].[ApplicationNotificationType] CHECK CONSTRAINT [FK_ApplicationNotificationType_Application]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationTypeLicenseType_ApplicationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationTypeLicenseType]'))
ALTER TABLE [dbo].[ApplicationTypeLicenseType]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationTypeLicenseType_ApplicationType] FOREIGN KEY([fk_ApplicationTypeID])
REFERENCES [dbo].[ApplicationType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationTypeLicenseType_ApplicationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationTypeLicenseType]'))
ALTER TABLE [dbo].[ApplicationTypeLicenseType] CHECK CONSTRAINT [FK_ApplicationTypeLicenseType_ApplicationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationTypeLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationTypeLicenseType]'))
ALTER TABLE [dbo].[ApplicationTypeLicenseType]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationTypeLicenseType_LicenseType] FOREIGN KEY([fk_LicenseTypeID])
REFERENCES [dbo].[LicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationTypeLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationTypeLicenseType]'))
ALTER TABLE [dbo].[ApplicationTypeLicenseType] CHECK CONSTRAINT [FK_ApplicationTypeLicenseType_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Asset_AssetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [fk_Asset_AssetType] FOREIGN KEY([fk_AssetTypeID])
REFERENCES [dbo].[AssetType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Asset_AssetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [fk_Asset_AssetType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Asset_IconImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [fk_Asset_IconImage] FOREIGN KEY([fk_IconImageID])
REFERENCES [dbo].[IconImage] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Asset_IconImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [fk_Asset_IconImage]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Asset_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [fk_Asset_Make] FOREIGN KEY([fk_MakeCode])
REFERENCES [dbo].[Make] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Asset_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [fk_Asset_Make]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_Model] FOREIGN KEY([fk_ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_Model]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetAlias_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetAlias]'))
ALTER TABLE [dbo].[AssetAlias]  WITH CHECK ADD  CONSTRAINT [FK_AssetAlias_Asset] FOREIGN KEY([fk_AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetAlias_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetAlias]'))
ALTER TABLE [dbo].[AssetAlias] CHECK CONSTRAINT [FK_AssetAlias_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetAlias]'))
ALTER TABLE [dbo].[AssetAlias]  WITH CHECK ADD  CONSTRAINT [FK_AssetAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetAlias]'))
ALTER TABLE [dbo].[AssetAlias] CHECK CONSTRAINT [FK_AssetAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetDevice_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice]  WITH CHECK ADD  CONSTRAINT [fk_AssetDevice_Asset] FOREIGN KEY([fk_AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetDevice_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice] CHECK CONSTRAINT [fk_AssetDevice_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetDevice_Device]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice]  WITH CHECK ADD  CONSTRAINT [fk_AssetDevice_Device] FOREIGN KEY([fk_DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetDevice_Device]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice] CHECK CONSTRAINT [fk_AssetDevice_Device]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetDevice_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice]  WITH CHECK ADD  CONSTRAINT [fk_AssetDevice_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetDevice_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice] CHECK CONSTRAINT [fk_AssetDevice_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetDevice_ProductivityThresholds]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice]  WITH CHECK ADD  CONSTRAINT [FK_AssetDevice_ProductivityThresholds] FOREIGN KEY([fk_ProductivityThresholdsID])
REFERENCES [dbo].[ProductivityThresholds] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetDevice_ProductivityThresholds]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetDevice]'))
ALTER TABLE [dbo].[AssetDevice] CHECK CONSTRAINT [FK_AssetDevice_ProductivityThresholds]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredCapability_AssetFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredCapability]'))
ALTER TABLE [dbo].[AssetFeatureRequiredCapability]  WITH CHECK ADD  CONSTRAINT [FK_AssetFeatureRequiredCapability_AssetFeature] FOREIGN KEY([fk_AssetFeatureID])
REFERENCES [dbo].[AssetFeature] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredCapability_AssetFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredCapability]'))
ALTER TABLE [dbo].[AssetFeatureRequiredCapability] CHECK CONSTRAINT [FK_AssetFeatureRequiredCapability_AssetFeature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredCapability_DeviceCapability]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredCapability]'))
ALTER TABLE [dbo].[AssetFeatureRequiredCapability]  WITH CHECK ADD  CONSTRAINT [FK_AssetFeatureRequiredCapability_DeviceCapability] FOREIGN KEY([fk_DeviceCapabilityID])
REFERENCES [dbo].[DeviceCapability] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredCapability_DeviceCapability]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredCapability]'))
ALTER TABLE [dbo].[AssetFeatureRequiredCapability] CHECK CONSTRAINT [FK_AssetFeatureRequiredCapability_DeviceCapability]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredServiceType_AssetFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredServiceType]'))
ALTER TABLE [dbo].[AssetFeatureRequiredServiceType]  WITH CHECK ADD  CONSTRAINT [FK_AssetFeatureRequiredServiceType_AssetFeature] FOREIGN KEY([fk_AssetFeatureID])
REFERENCES [dbo].[AssetFeature] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredServiceType_AssetFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredServiceType]'))
ALTER TABLE [dbo].[AssetFeatureRequiredServiceType] CHECK CONSTRAINT [FK_AssetFeatureRequiredServiceType_AssetFeature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredServiceType_ServiceTypeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredServiceType]'))
ALTER TABLE [dbo].[AssetFeatureRequiredServiceType]  WITH CHECK ADD  CONSTRAINT [FK_AssetFeatureRequiredServiceType_ServiceTypeID] FOREIGN KEY([fk_ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetFeatureRequiredServiceType_ServiceTypeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetFeatureRequiredServiceType]'))
ALTER TABLE [dbo].[AssetFeatureRequiredServiceType] CHECK CONSTRAINT [FK_AssetFeatureRequiredServiceType_ServiceTypeID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetGroup_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetGroup]'))
ALTER TABLE [dbo].[AssetGroup]  WITH CHECK ADD  CONSTRAINT [fk_AssetGroup_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetGroup_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetGroup]'))
ALTER TABLE [dbo].[AssetGroup] CHECK CONSTRAINT [fk_AssetGroup_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetGroupAsset_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetGroupAsset]'))
ALTER TABLE [dbo].[AssetGroupAsset]  WITH CHECK ADD  CONSTRAINT [fk_AssetGroupAsset_Asset] FOREIGN KEY([fk_AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetGroupAsset_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetGroupAsset]'))
ALTER TABLE [dbo].[AssetGroupAsset] CHECK CONSTRAINT [fk_AssetGroupAsset_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetGroupAsset_AssetGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetGroupAsset]'))
ALTER TABLE [dbo].[AssetGroupAsset]  WITH CHECK ADD  CONSTRAINT [fk_AssetGroupAsset_AssetGroup] FOREIGN KEY([fk_AssetGroupID])
REFERENCES [dbo].[AssetGroup] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_AssetGroupAsset_AssetGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetGroupAsset]'))
ALTER TABLE [dbo].[AssetGroupAsset] CHECK CONSTRAINT [fk_AssetGroupAsset_AssetGroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetLicenseUsage_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]'))
ALTER TABLE [dbo].[AssetLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_AssetLicenseUsage_Asset] FOREIGN KEY([fk_AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetLicenseUsage_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]'))
ALTER TABLE [dbo].[AssetLicenseUsage] CHECK CONSTRAINT [FK_AssetLicenseUsage_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetLicenseUsage_License]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]'))
ALTER TABLE [dbo].[AssetLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_AssetLicenseUsage_License] FOREIGN KEY([fk_LicenseID])
REFERENCES [dbo].[License] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetLicenseUsage_License]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]'))
ALTER TABLE [dbo].[AssetLicenseUsage] CHECK CONSTRAINT [FK_AssetLicenseUsage_License]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetLicenseUsage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]'))
ALTER TABLE [dbo].[AssetLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_AssetLicenseUsage_Login] FOREIGN KEY([fk_AssignedbyUserID])
REFERENCES [dbo].[Login] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetLicenseUsage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetLicenseUsage]'))
ALTER TABLE [dbo].[AssetLicenseUsage] CHECK CONSTRAINT [FK_AssetLicenseUsage_Login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Client_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Client]'))
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [fk_Client_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Client_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Client]'))
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [fk_Client_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientAlias_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientAlias]'))
ALTER TABLE [dbo].[ClientAlias]  WITH CHECK ADD  CONSTRAINT [FK_ClientAlias_Client] FOREIGN KEY([fk_ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientAlias_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientAlias]'))
ALTER TABLE [dbo].[ClientAlias] CHECK CONSTRAINT [FK_ClientAlias_Client]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientAlias]'))
ALTER TABLE [dbo].[ClientAlias]  WITH CHECK ADD  CONSTRAINT [FK_ClientAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientAlias]'))
ALTER TABLE [dbo].[ClientAlias] CHECK CONSTRAINT [FK_ClientAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientDeviceLookup_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientDeviceLookup]'))
ALTER TABLE [dbo].[ClientDeviceLookup]  WITH CHECK ADD  CONSTRAINT [FK_ClientDeviceLookup_Client] FOREIGN KEY([fk_ClientID])
REFERENCES [dbo].[Client] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientDeviceLookup_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientDeviceLookup]'))
ALTER TABLE [dbo].[ClientDeviceLookup] CHECK CONSTRAINT [FK_ClientDeviceLookup_Client]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_MobileCarrier]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_MobileCarrier] FOREIGN KEY([fk_MobileCarrierID])
REFERENCES [dbo].[MobileCarrier] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_MobileCarrier]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_MobileCarrier]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Contact_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [fk_Contact_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Contact_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [fk_Contact_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Country_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Region] FOREIGN KEY([fk_RegionID])
REFERENCES [dbo].[Region] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Country_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Region]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CropSeason_DefaultCommodity]') AND parent_object_id = OBJECT_ID(N'[dbo].[CropSeason]'))
ALTER TABLE [dbo].[CropSeason]  WITH CHECK ADD  CONSTRAINT [FK_CropSeason_DefaultCommodity] FOREIGN KEY([fk_DefaultCommodityID])
REFERENCES [dbo].[MasterCommodity] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CropSeason_DefaultCommodity]') AND parent_object_id = OBJECT_ID(N'[dbo].[CropSeason]'))
ALTER TABLE [dbo].[CropSeason] CHECK CONSTRAINT [FK_CropSeason_DefaultCommodity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CropSeason_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[CropSeason]'))
ALTER TABLE [dbo].[CropSeason]  WITH CHECK ADD  CONSTRAINT [FK_CropSeason_MasterCrop] FOREIGN KEY([fk_MasterCropID])
REFERENCES [dbo].[MasterCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CropSeason_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[CropSeason]'))
ALTER TABLE [dbo].[CropSeason] CHECK CONSTRAINT [FK_CropSeason_MasterCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CropSeason_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[CropSeason]'))
ALTER TABLE [dbo].[CropSeason]  WITH CHECK ADD  CONSTRAINT [FK_CropSeason_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CropSeason_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[CropSeason]'))
ALTER TABLE [dbo].[CropSeason] CHECK CONSTRAINT [FK_CropSeason_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DesktopInstallation_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[DesktopInstallation]'))
ALTER TABLE [dbo].[DesktopInstallation]  WITH CHECK ADD  CONSTRAINT [FK_DesktopInstallation_Organization] FOREIGN KEY([fk_OrgId])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DesktopInstallation_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[DesktopInstallation]'))
ALTER TABLE [dbo].[DesktopInstallation] CHECK CONSTRAINT [FK_DesktopInstallation_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Device_DealerOrganization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Device]'))
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_DealerOrganization] FOREIGN KEY([fk_DealerOrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Device_DealerOrganization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Device]'))
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_DealerOrganization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Device_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Device]'))
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [fk_Device_DeviceType] FOREIGN KEY([fk_DeviceTypeID])
REFERENCES [dbo].[DeviceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Device_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Device]'))
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [fk_Device_DeviceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceService_Device]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceService]'))
ALTER TABLE [dbo].[DeviceService]  WITH CHECK ADD  CONSTRAINT [FK_DeviceService_Device] FOREIGN KEY([fk_DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceService_Device]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceService]'))
ALTER TABLE [dbo].[DeviceService] CHECK CONSTRAINT [FK_DeviceService_Device]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceService_ResellerOrgId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceService]'))
ALTER TABLE [dbo].[DeviceService]  WITH CHECK ADD  CONSTRAINT [FK_DeviceService_ResellerOrgId] FOREIGN KEY([fk_ResellerOrgId])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceService_ResellerOrgId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceService]'))
ALTER TABLE [dbo].[DeviceService] CHECK CONSTRAINT [FK_DeviceService_ResellerOrgId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceService_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceService]'))
ALTER TABLE [dbo].[DeviceService]  WITH CHECK ADD  CONSTRAINT [FK_DeviceService_ServiceType] FOREIGN KEY([fk_ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceService_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceService]'))
ALTER TABLE [dbo].[DeviceService] CHECK CONSTRAINT [FK_DeviceService_ServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_DeviceServiceDeliveryHistory_DeliveryType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceServiceDeliveryHistory]'))
ALTER TABLE [dbo].[DeviceServiceDeliveryHistory]  WITH CHECK ADD  CONSTRAINT [fk_DeviceServiceDeliveryHistory_DeliveryType] FOREIGN KEY([fk_EntitlementDeliveryTypeID])
REFERENCES [dbo].[EntitlementDeliveryType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_DeviceServiceDeliveryHistory_DeliveryType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceServiceDeliveryHistory]'))
ALTER TABLE [dbo].[DeviceServiceDeliveryHistory] CHECK CONSTRAINT [fk_DeviceServiceDeliveryHistory_DeliveryType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_DeviceServiceDeliveryHistory_DeviceService]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceServiceDeliveryHistory]'))
ALTER TABLE [dbo].[DeviceServiceDeliveryHistory]  WITH CHECK ADD  CONSTRAINT [fk_DeviceServiceDeliveryHistory_DeviceService] FOREIGN KEY([fk_DeviceServiceID])
REFERENCES [dbo].[DeviceService] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_DeviceServiceDeliveryHistory_DeviceService]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceServiceDeliveryHistory]'))
ALTER TABLE [dbo].[DeviceServiceDeliveryHistory] CHECK CONSTRAINT [fk_DeviceServiceDeliveryHistory_DeviceService]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_DeviceType_DeviceTypeRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceType]'))
ALTER TABLE [dbo].[DeviceType]  WITH CHECK ADD  CONSTRAINT [fk_DeviceType_DeviceTypeRole] FOREIGN KEY([fk_DeviceTypeRoleID])
REFERENCES [dbo].[DeviceTypeRole] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_DeviceType_DeviceTypeRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceType]'))
ALTER TABLE [dbo].[DeviceType] CHECK CONSTRAINT [fk_DeviceType_DeviceTypeRole]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeCapability_DeviceCapability]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeCapability]'))
ALTER TABLE [dbo].[DeviceTypeCapability]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeCapability_DeviceCapability] FOREIGN KEY([fk_DeviceCapabilityID])
REFERENCES [dbo].[DeviceCapability] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeCapability_DeviceCapability]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeCapability]'))
ALTER TABLE [dbo].[DeviceTypeCapability] CHECK CONSTRAINT [FK_DeviceTypeCapability_DeviceCapability]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeCapability_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeCapability]'))
ALTER TABLE [dbo].[DeviceTypeCapability]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeCapability_DeviceType] FOREIGN KEY([fk_DeviceTypeID])
REFERENCES [dbo].[DeviceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeCapability_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeCapability]'))
ALTER TABLE [dbo].[DeviceTypeCapability] CHECK CONSTRAINT [FK_DeviceTypeCapability_DeviceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeServiceType_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeServiceType]'))
ALTER TABLE [dbo].[DeviceTypeServiceType]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeServiceType_DeviceType] FOREIGN KEY([fk_DeviceTypeID])
REFERENCES [dbo].[DeviceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeServiceType_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeServiceType]'))
ALTER TABLE [dbo].[DeviceTypeServiceType] CHECK CONSTRAINT [FK_DeviceTypeServiceType_DeviceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeServiceType_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeServiceType]'))
ALTER TABLE [dbo].[DeviceTypeServiceType]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeServiceType_ServiceType] FOREIGN KEY([fk_ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeServiceType_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeServiceType]'))
ALTER TABLE [dbo].[DeviceTypeServiceType] CHECK CONSTRAINT [FK_DeviceTypeServiceType_ServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeUserLicenseType_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeUserLicenseType]'))
ALTER TABLE [dbo].[DeviceTypeUserLicenseType]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeUserLicenseType_DeviceType] FOREIGN KEY([fk_DeviceTypeID])
REFERENCES [dbo].[DeviceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeUserLicenseType_DeviceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeUserLicenseType]'))
ALTER TABLE [dbo].[DeviceTypeUserLicenseType] CHECK CONSTRAINT [FK_DeviceTypeUserLicenseType_DeviceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeUserLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeUserLicenseType]'))
ALTER TABLE [dbo].[DeviceTypeUserLicenseType]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeUserLicenseType_LicenseType] FOREIGN KEY([fk_UserLicenseTypeID])
REFERENCES [dbo].[UserLicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DeviceTypeUserLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeviceTypeUserLicenseType]'))
ALTER TABLE [dbo].[DeviceTypeUserLicenseType] CHECK CONSTRAINT [FK_DeviceTypeUserLicenseType_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Farm_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[Farm]'))
ALTER TABLE [dbo].[Farm]  WITH CHECK ADD  CONSTRAINT [FK_Farm_Client] FOREIGN KEY([fk_ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Farm_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[Farm]'))
ALTER TABLE [dbo].[Farm] CHECK CONSTRAINT [FK_Farm_Client]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Farm_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Farm]'))
ALTER TABLE [dbo].[Farm]  WITH CHECK ADD  CONSTRAINT [FK_Farm_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Farm_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Farm]'))
ALTER TABLE [dbo].[Farm] CHECK CONSTRAINT [FK_Farm_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FarmAlias_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[FarmAlias]'))
ALTER TABLE [dbo].[FarmAlias]  WITH CHECK ADD  CONSTRAINT [FK_FarmAlias_Farm] FOREIGN KEY([fk_FarmID])
REFERENCES [dbo].[Farm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FarmAlias_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[FarmAlias]'))
ALTER TABLE [dbo].[FarmAlias] CHECK CONSTRAINT [FK_FarmAlias_Farm]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FarmAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[FarmAlias]'))
ALTER TABLE [dbo].[FarmAlias]  WITH CHECK ADD  CONSTRAINT [FK_FarmAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FarmAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[FarmAlias]'))
ALTER TABLE [dbo].[FarmAlias] CHECK CONSTRAINT [FK_FarmAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FarmDeviceLookup_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[FarmDeviceLookup]'))
ALTER TABLE [dbo].[FarmDeviceLookup]  WITH CHECK ADD  CONSTRAINT [FK_FarmDeviceLookup_Farm] FOREIGN KEY([fk_FarmID])
REFERENCES [dbo].[Farm] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FarmDeviceLookup_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[FarmDeviceLookup]'))
ALTER TABLE [dbo].[FarmDeviceLookup] CHECK CONSTRAINT [FK_FarmDeviceLookup_Farm]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Field_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
ALTER TABLE [dbo].[Field]  WITH CHECK ADD  CONSTRAINT [FK_Field_Farm] FOREIGN KEY([fk_FarmID])
REFERENCES [dbo].[Farm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Field_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
ALTER TABLE [dbo].[Field] CHECK CONSTRAINT [FK_Field_Farm]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Field_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
ALTER TABLE [dbo].[Field]  WITH CHECK ADD  CONSTRAINT [FK_Field_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Field_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
ALTER TABLE [dbo].[Field] CHECK CONSTRAINT [FK_Field_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldAlias_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldAlias]'))
ALTER TABLE [dbo].[FieldAlias]  WITH CHECK ADD  CONSTRAINT [FK_FieldAlias_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldAlias_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldAlias]'))
ALTER TABLE [dbo].[FieldAlias] CHECK CONSTRAINT [FK_FieldAlias_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldAlias]'))
ALTER TABLE [dbo].[FieldAlias]  WITH CHECK ADD  CONSTRAINT [FK_FieldAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldAlias]'))
ALTER TABLE [dbo].[FieldAlias] CHECK CONSTRAINT [FK_FieldAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldDeviceLookup_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldDeviceLookup]'))
ALTER TABLE [dbo].[FieldDeviceLookup]  WITH CHECK ADD  CONSTRAINT [FK_FieldDeviceLookup_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldDeviceLookup_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldDeviceLookup]'))
ALTER TABLE [dbo].[FieldDeviceLookup] CHECK CONSTRAINT [FK_FieldDeviceLookup_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldOrigin_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldOrigin]'))
ALTER TABLE [dbo].[FieldOrigin]  WITH CHECK ADD  CONSTRAINT [FK_FieldOrigin_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldOrigin_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldOrigin]'))
ALTER TABLE [dbo].[FieldOrigin] CHECK CONSTRAINT [FK_FieldOrigin_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Formula_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formula]'))
ALTER TABLE [dbo].[Formula]  WITH CHECK ADD  CONSTRAINT [FK_Formula_MasterCrop] FOREIGN KEY([fk_MasterCropID])
REFERENCES [dbo].[MasterCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Formula_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formula]'))
ALTER TABLE [dbo].[Formula] CHECK CONSTRAINT [FK_Formula_MasterCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Formula_Nutrient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formula]'))
ALTER TABLE [dbo].[Formula]  WITH CHECK ADD  CONSTRAINT [FK_Formula_Nutrient] FOREIGN KEY([fk_NutrientID])
REFERENCES [dbo].[Nutrient] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Formula_Nutrient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formula]'))
ALTER TABLE [dbo].[Formula] CHECK CONSTRAINT [FK_Formula_Nutrient]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Formula_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formula]'))
ALTER TABLE [dbo].[Formula]  WITH CHECK ADD  CONSTRAINT [FK_Formula_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Formula_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formula]'))
ALTER TABLE [dbo].[Formula] CHECK CONSTRAINT [FK_Formula_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_GeoFence_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[GeoFence]'))
ALTER TABLE [dbo].[GeoFence]  WITH CHECK ADD  CONSTRAINT [fk_GeoFence_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_GeoFence_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[GeoFence]'))
ALTER TABLE [dbo].[GeoFence] CHECK CONSTRAINT [fk_GeoFence_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GeoFenceDispatch_Geofence]') AND parent_object_id = OBJECT_ID(N'[dbo].[GeofenceDispatch]'))
ALTER TABLE [dbo].[GeofenceDispatch]  WITH CHECK ADD  CONSTRAINT [FK_GeoFenceDispatch_Geofence] FOREIGN KEY([fk_GeofenceID])
REFERENCES [dbo].[GeoFence] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GeoFenceDispatch_Geofence]') AND parent_object_id = OBJECT_ID(N'[dbo].[GeofenceDispatch]'))
ALTER TABLE [dbo].[GeofenceDispatch] CHECK CONSTRAINT [FK_GeoFenceDispatch_Geofence]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GrownCrop_CropSeasonID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GrownCrop]'))
ALTER TABLE [dbo].[GrownCrop]  WITH CHECK ADD  CONSTRAINT [FK_GrownCrop_CropSeasonID] FOREIGN KEY([fk_CropSeasonID])
REFERENCES [dbo].[CropSeason] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GrownCrop_CropSeasonID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GrownCrop]'))
ALTER TABLE [dbo].[GrownCrop] CHECK CONSTRAINT [FK_GrownCrop_CropSeasonID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GrownCrop_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[GrownCrop]'))
ALTER TABLE [dbo].[GrownCrop]  WITH CHECK ADD  CONSTRAINT [FK_GrownCrop_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GrownCrop_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[GrownCrop]'))
ALTER TABLE [dbo].[GrownCrop] CHECK CONSTRAINT [FK_GrownCrop_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IconImage_IconCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[IconImage]'))
ALTER TABLE [dbo].[IconImage]  WITH CHECK ADD  CONSTRAINT [FK_IconImage_IconCategory] FOREIGN KEY([fk_IconCategory])
REFERENCES [dbo].[IconCategory] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IconImage_IconCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[IconImage]'))
ALTER TABLE [dbo].[IconImage] CHECK CONSTRAINT [FK_IconImage_IconCategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IconImage_IconType]') AND parent_object_id = OBJECT_ID(N'[dbo].[IconImage]'))
ALTER TABLE [dbo].[IconImage]  WITH CHECK ADD  CONSTRAINT [FK_IconImage_IconType] FOREIGN KEY([fk_IconType])
REFERENCES [dbo].[IconType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IconImage_IconType]') AND parent_object_id = OBJECT_ID(N'[dbo].[IconImage]'))
ALTER TABLE [dbo].[IconImage] CHECK CONSTRAINT [FK_IconImage_IconType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Implement_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Implement]'))
ALTER TABLE [dbo].[Implement]  WITH CHECK ADD  CONSTRAINT [FK_Implement_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Implement_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Implement]'))
ALTER TABLE [dbo].[Implement] CHECK CONSTRAINT [FK_Implement_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ImplementAlias_Implement]') AND parent_object_id = OBJECT_ID(N'[dbo].[ImplementAlias]'))
ALTER TABLE [dbo].[ImplementAlias]  WITH CHECK ADD  CONSTRAINT [FK_ImplementAlias_Implement] FOREIGN KEY([fk_ImplementID])
REFERENCES [dbo].[Implement] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ImplementAlias_Implement]') AND parent_object_id = OBJECT_ID(N'[dbo].[ImplementAlias]'))
ALTER TABLE [dbo].[ImplementAlias] CHECK CONSTRAINT [FK_ImplementAlias_Implement]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ImplementAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[ImplementAlias]'))
ALTER TABLE [dbo].[ImplementAlias]  WITH CHECK ADD  CONSTRAINT [FK_ImplementAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ImplementAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[ImplementAlias]'))
ALTER TABLE [dbo].[ImplementAlias] CHECK CONSTRAINT [FK_ImplementAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobTitle_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobTitle]'))
ALTER TABLE [dbo].[JobTitle]  WITH CHECK ADD  CONSTRAINT [FK_JobTitle_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobTitle_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobTitle]'))
ALTER TABLE [dbo].[JobTitle] CHECK CONSTRAINT [FK_JobTitle_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_LicenseSource]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License]  WITH CHECK ADD  CONSTRAINT [FK_License_LicenseSource] FOREIGN KEY([fk_LicenseSourceID])
REFERENCES [dbo].[LicenseSource] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_LicenseSource]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License] CHECK CONSTRAINT [FK_License_LicenseSource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License]  WITH CHECK ADD  CONSTRAINT [FK_License_LicenseType] FOREIGN KEY([fk_LicenseTypeID])
REFERENCES [dbo].[LicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License] CHECK CONSTRAINT [FK_License_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License]  WITH CHECK ADD  CONSTRAINT [FK_License_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License] CHECK CONSTRAINT [FK_License_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_ResellerOrg]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License]  WITH CHECK ADD  CONSTRAINT [FK_License_ResellerOrg] FOREIGN KEY([fk_ResellerOrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_License_ResellerOrg]') AND parent_object_id = OBJECT_ID(N'[dbo].[License]'))
ALTER TABLE [dbo].[License] CHECK CONSTRAINT [FK_License_ResellerOrg]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumption_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]'))
ALTER TABLE [dbo].[LicenseConsumption]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumption_LicenseType] FOREIGN KEY([fk_LicenseTypeID])
REFERENCES [dbo].[LicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumption_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]'))
ALTER TABLE [dbo].[LicenseConsumption] CHECK CONSTRAINT [FK_LicenseConsumption_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumption_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]'))
ALTER TABLE [dbo].[LicenseConsumption]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumption_Login] FOREIGN KEY([fk_AssignedByLoginID])
REFERENCES [dbo].[Login] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumption_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]'))
ALTER TABLE [dbo].[LicenseConsumption] CHECK CONSTRAINT [FK_LicenseConsumption_Login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumption_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]'))
ALTER TABLE [dbo].[LicenseConsumption]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumption_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumption_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumption]'))
ALTER TABLE [dbo].[LicenseConsumption] CHECK CONSTRAINT [FK_LicenseConsumption_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionDetails_License]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionDetails]'))
ALTER TABLE [dbo].[LicenseConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumptionDetails_License] FOREIGN KEY([fk_LicenseID])
REFERENCES [dbo].[License] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionDetails_License]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionDetails]'))
ALTER TABLE [dbo].[LicenseConsumptionDetails] CHECK CONSTRAINT [FK_LicenseConsumptionDetails_License]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionDetails_LicenseConsumption]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionDetails]'))
ALTER TABLE [dbo].[LicenseConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumptionDetails_LicenseConsumption] FOREIGN KEY([fk_LicenseConsumptionID])
REFERENCES [dbo].[LicenseConsumption] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionDetails_LicenseConsumption]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionDetails]'))
ALTER TABLE [dbo].[LicenseConsumptionDetails] CHECK CONSTRAINT [FK_LicenseConsumptionDetails_LicenseConsumption]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionField_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]'))
ALTER TABLE [dbo].[LicenseConsumptionField]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumptionField_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionField_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]'))
ALTER TABLE [dbo].[LicenseConsumptionField] CHECK CONSTRAINT [FK_LicenseConsumptionField_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionField_LicenseConsumption]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]'))
ALTER TABLE [dbo].[LicenseConsumptionField]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumptionField_LicenseConsumption] FOREIGN KEY([fk_LicenseConsumptionID])
REFERENCES [dbo].[LicenseConsumption] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionField_LicenseConsumption]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]'))
ALTER TABLE [dbo].[LicenseConsumptionField] CHECK CONSTRAINT [FK_LicenseConsumptionField_LicenseConsumption]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionField_SubscriptionLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]'))
ALTER TABLE [dbo].[LicenseConsumptionField]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumptionField_SubscriptionLevel] FOREIGN KEY([fk_SubscriptionLevelID])
REFERENCES [dbo].[SubscriptionLevel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionField_SubscriptionLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionField]'))
ALTER TABLE [dbo].[LicenseConsumptionField] CHECK CONSTRAINT [FK_LicenseConsumptionField_SubscriptionLevel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionPolygon_LicenseConsumption]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionPolygon]'))
ALTER TABLE [dbo].[LicenseConsumptionPolygon]  WITH CHECK ADD  CONSTRAINT [FK_LicenseConsumptionPolygon_LicenseConsumption] FOREIGN KEY([fk_LicenseConsumptionID])
REFERENCES [dbo].[LicenseConsumption] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseConsumptionPolygon_LicenseConsumption]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseConsumptionPolygon]'))
ALTER TABLE [dbo].[LicenseConsumptionPolygon] CHECK CONSTRAINT [FK_LicenseConsumptionPolygon_LicenseConsumption]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseType_LicenseConsumptionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseType]'))
ALTER TABLE [dbo].[LicenseType]  WITH CHECK ADD  CONSTRAINT [FK_LicenseType_LicenseConsumptionType] FOREIGN KEY([fk_LicenseConsumptionTypeID])
REFERENCES [dbo].[LicenseConsumptionType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseType_LicenseConsumptionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseType]'))
ALTER TABLE [dbo].[LicenseType] CHECK CONSTRAINT [FK_LicenseType_LicenseConsumptionType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseType_LicenseTypeGroupID]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseType]'))
ALTER TABLE [dbo].[LicenseType]  WITH CHECK ADD  CONSTRAINT [FK_LicenseType_LicenseTypeGroupID] FOREIGN KEY([fk_LicenseTypeGroupID])
REFERENCES [dbo].[LicenseTypeGroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseType_LicenseTypeGroupID]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseType]'))
ALTER TABLE [dbo].[LicenseType] CHECK CONSTRAINT [FK_LicenseType_LicenseTypeGroupID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseType_ObjectType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseType]'))
ALTER TABLE [dbo].[LicenseType]  WITH CHECK ADD  CONSTRAINT [FK_LicenseType_ObjectType] FOREIGN KEY([fk_ObjectTypeID])
REFERENCES [dbo].[ObjectType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseType_ObjectType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseType]'))
ALTER TABLE [dbo].[LicenseType] CHECK CONSTRAINT [FK_LicenseType_ObjectType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LicenseTypeDependency_DependentLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseTypeDependency]'))
ALTER TABLE [dbo].[LicenseTypeDependency]  WITH CHECK ADD  CONSTRAINT [fk_LicenseTypeDependency_DependentLicenseType_LicenseType] FOREIGN KEY([fk_DependentLicenseTypeID])
REFERENCES [dbo].[LicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LicenseTypeDependency_DependentLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseTypeDependency]'))
ALTER TABLE [dbo].[LicenseTypeDependency] CHECK CONSTRAINT [fk_LicenseTypeDependency_DependentLicenseType_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LicenseTypeDependency_RequiredLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseTypeDependency]'))
ALTER TABLE [dbo].[LicenseTypeDependency]  WITH CHECK ADD  CONSTRAINT [fk_LicenseTypeDependency_RequiredLicenseType_LicenseType] FOREIGN KEY([fk_RequiredLicenseTypeID])
REFERENCES [dbo].[LicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LicenseTypeDependency_RequiredLicenseType_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseTypeDependency]'))
ALTER TABLE [dbo].[LicenseTypeDependency] CHECK CONSTRAINT [fk_LicenseTypeDependency_RequiredLicenseType_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseTypeRegion_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseTypeRegion]'))
ALTER TABLE [dbo].[LicenseTypeRegion]  WITH CHECK ADD  CONSTRAINT [FK_LicenseTypeRegion_LicenseType] FOREIGN KEY([fk_LicenseTypeID])
REFERENCES [dbo].[LicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LicenseTypeRegion_LicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LicenseTypeRegion]'))
ALTER TABLE [dbo].[LicenseTypeRegion] CHECK CONSTRAINT [FK_LicenseTypeRegion_LicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Country] FOREIGN KEY([fk_CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginNotification_ApplicationNotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginNotification]'))
ALTER TABLE [dbo].[LoginNotification]  WITH CHECK ADD  CONSTRAINT [FK_LoginNotification_ApplicationNotificationType] FOREIGN KEY([fk_ApplicationNotificationTypeId])
REFERENCES [dbo].[ApplicationNotificationType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginNotification_ApplicationNotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginNotification]'))
ALTER TABLE [dbo].[LoginNotification] CHECK CONSTRAINT [FK_LoginNotification_ApplicationNotificationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginNotification_DeviceAmazonResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginNotification]'))
ALTER TABLE [dbo].[LoginNotification]  WITH CHECK ADD  CONSTRAINT [FK_LoginNotification_DeviceAmazonResource] FOREIGN KEY([fk_DeviceAmazonResourceId])
REFERENCES [dbo].[DeviceAmazonResource] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginNotification_DeviceAmazonResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginNotification]'))
ALTER TABLE [dbo].[LoginNotification] CHECK CONSTRAINT [FK_LoginNotification_DeviceAmazonResource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginNotification_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginNotification]'))
ALTER TABLE [dbo].[LoginNotification]  WITH CHECK ADD  CONSTRAINT [FK_LoginNotification_Login] FOREIGN KEY([fk_LoginId])
REFERENCES [dbo].[Login] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginNotification_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginNotification]'))
ALTER TABLE [dbo].[LoginNotification] CHECK CONSTRAINT [FK_LoginNotification_Login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginOperator_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginOperator]'))
ALTER TABLE [dbo].[LoginOperator]  WITH CHECK ADD  CONSTRAINT [FK_LoginOperator_Login] FOREIGN KEY([fk_LoginID])
REFERENCES [dbo].[Login] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginOperator_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginOperator]'))
ALTER TABLE [dbo].[LoginOperator] CHECK CONSTRAINT [FK_LoginOperator_Login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginOperator_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginOperator]'))
ALTER TABLE [dbo].[LoginOperator]  WITH CHECK ADD  CONSTRAINT [FK_LoginOperator_Operator] FOREIGN KEY([fk_OperatorID])
REFERENCES [dbo].[Operator] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginOperator_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginOperator]'))
ALTER TABLE [dbo].[LoginOperator] CHECK CONSTRAINT [FK_LoginOperator_Operator]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MasterCommodity_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[MasterCommodity]'))
ALTER TABLE [dbo].[MasterCommodity]  WITH CHECK ADD  CONSTRAINT [FK_MasterCommodity_MasterCrop] FOREIGN KEY([fk_MasterCropID])
REFERENCES [dbo].[MasterCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MasterCommodity_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[MasterCommodity]'))
ALTER TABLE [dbo].[MasterCommodity] CHECK CONSTRAINT [FK_MasterCommodity_MasterCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MasterCropAlias_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[MasterCropAlias]'))
ALTER TABLE [dbo].[MasterCropAlias]  WITH CHECK ADD  CONSTRAINT [FK_MasterCropAlias_MasterCrop] FOREIGN KEY([fk_MasterCropID])
REFERENCES [dbo].[MasterCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MasterCropAlias_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[MasterCropAlias]'))
ALTER TABLE [dbo].[MasterCropAlias] CHECK CONSTRAINT [FK_MasterCropAlias_MasterCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MasterCropAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[MasterCropAlias]'))
ALTER TABLE [dbo].[MasterCropAlias]  WITH CHECK ADD  CONSTRAINT [FK_MasterCropAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MasterCropAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[MasterCropAlias]'))
ALTER TABLE [dbo].[MasterCropAlias] CHECK CONSTRAINT [FK_MasterCropAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_AppliedUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_AppliedUnit] FOREIGN KEY([fk_AppliedUofMID])
REFERENCES [dbo].[UnitOfMeasure] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_AppliedUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_AppliedUnit]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MasterCrop] FOREIGN KEY([fk_MasterCropID])
REFERENCES [dbo].[MasterCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MasterCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_MaterialForm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialForm] FOREIGN KEY([fk_MaterialFormID])
REFERENCES [dbo].[MaterialForm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_MaterialForm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialForm]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_MaterialType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([fk_MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_MaterialType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_PurchaseUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_PurchaseUnit] FOREIGN KEY([fk_PurchaseUofMID])
REFERENCES [dbo].[UnitOfMeasure] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Material_PurchaseUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[Material]'))
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_PurchaseUnit]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialAlias_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialAlias]'))
ALTER TABLE [dbo].[MaterialAlias]  WITH CHECK ADD  CONSTRAINT [FK_MaterialAlias_Material] FOREIGN KEY([fk_MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialAlias_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialAlias]'))
ALTER TABLE [dbo].[MaterialAlias] CHECK CONSTRAINT [FK_MaterialAlias_Material]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialAlias]'))
ALTER TABLE [dbo].[MaterialAlias]  WITH CHECK ADD  CONSTRAINT [FK_MaterialAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialAlias]'))
ALTER TABLE [dbo].[MaterialAlias] CHECK CONSTRAINT [FK_MaterialAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialFormUnitOfMeasure_MaterialForm]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialFormUnitOfMeasure]'))
ALTER TABLE [dbo].[MaterialFormUnitOfMeasure]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormUnitOfMeasure_MaterialForm] FOREIGN KEY([fk_MaterialFormID])
REFERENCES [dbo].[MaterialForm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialFormUnitOfMeasure_MaterialForm]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialFormUnitOfMeasure]'))
ALTER TABLE [dbo].[MaterialFormUnitOfMeasure] CHECK CONSTRAINT [FK_MaterialFormUnitOfMeasure_MaterialForm]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialFormUnitOfMeasure_UnitOfMeasure]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialFormUnitOfMeasure]'))
ALTER TABLE [dbo].[MaterialFormUnitOfMeasure]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormUnitOfMeasure_UnitOfMeasure] FOREIGN KEY([fk_UofMID])
REFERENCES [dbo].[UnitOfMeasure] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialFormUnitOfMeasure_UnitOfMeasure]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialFormUnitOfMeasure]'))
ALTER TABLE [dbo].[MaterialFormUnitOfMeasure] CHECK CONSTRAINT [FK_MaterialFormUnitOfMeasure_UnitOfMeasure]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialNutrient_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialNutrient]'))
ALTER TABLE [dbo].[MaterialNutrient]  WITH CHECK ADD  CONSTRAINT [FK_MaterialNutrient_Material] FOREIGN KEY([fk_MaterialID])
REFERENCES [dbo].[Material] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialNutrient_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialNutrient]'))
ALTER TABLE [dbo].[MaterialNutrient] CHECK CONSTRAINT [FK_MaterialNutrient_Material]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialNutrient_Nutrient]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialNutrient]'))
ALTER TABLE [dbo].[MaterialNutrient]  WITH CHECK ADD  CONSTRAINT [FK_MaterialNutrient_Nutrient] FOREIGN KEY([fk_NutrientID])
REFERENCES [dbo].[Nutrient] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaterialNutrient_Nutrient]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaterialNutrient]'))
ALTER TABLE [dbo].[MaterialNutrient] CHECK CONSTRAINT [FK_MaterialNutrient_Nutrient]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MobileCarrier_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[MobileCarrier]'))
ALTER TABLE [dbo].[MobileCarrier]  WITH CHECK ADD  CONSTRAINT [FK_MobileCarrier_Country] FOREIGN KEY([fk_CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MobileCarrier_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[MobileCarrier]'))
ALTER TABLE [dbo].[MobileCarrier] CHECK CONSTRAINT [FK_MobileCarrier_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_AssetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_AssetType] FOREIGN KEY([fk_AssetTypeID])
REFERENCES [dbo].[AssetType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_AssetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_AssetType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_IconImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_IconImage] FOREIGN KEY([fk_DefaultIconImageID])
REFERENCES [dbo].[IconImage] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_IconImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_IconImage]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Make] FOREIGN KEY([fk_MakeCode])
REFERENCES [dbo].[Make] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Make]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_PlatformID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_PlatformID] FOREIGN KEY([fk_PlatformID])
REFERENCES [dbo].[Platform] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_PlatformID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_PlatformID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NotificationContact_REF_ApplicationNotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[NotificationContact]'))
ALTER TABLE [dbo].[NotificationContact]  WITH CHECK ADD  CONSTRAINT [FK_NotificationContact_REF_ApplicationNotificationType] FOREIGN KEY([fk_ApplicationNotificationTypeID])
REFERENCES [dbo].[ApplicationNotificationType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NotificationContact_REF_ApplicationNotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[NotificationContact]'))
ALTER TABLE [dbo].[NotificationContact] CHECK CONSTRAINT [FK_NotificationContact_REF_ApplicationNotificationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NotificationContact_REF_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[NotificationContact]'))
ALTER TABLE [dbo].[NotificationContact]  WITH CHECK ADD  CONSTRAINT [FK_NotificationContact_REF_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NotificationContact_REF_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[NotificationContact]'))
ALTER TABLE [dbo].[NotificationContact] CHECK CONSTRAINT [FK_NotificationContact_REF_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_JobTitle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Operator]'))
ALTER TABLE [dbo].[Operator]  WITH CHECK ADD  CONSTRAINT [FK_Operator_JobTitle] FOREIGN KEY([fk_JobTitleID])
REFERENCES [dbo].[JobTitle] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_JobTitle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Operator]'))
ALTER TABLE [dbo].[Operator] CHECK CONSTRAINT [FK_Operator_JobTitle]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Operator]'))
ALTER TABLE [dbo].[Operator]  WITH CHECK ADD  CONSTRAINT [FK_Operator_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[Operator]'))
ALTER TABLE [dbo].[Operator] CHECK CONSTRAINT [FK_Operator_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Operator]'))
ALTER TABLE [dbo].[Operator]  WITH CHECK ADD  CONSTRAINT [FK_Operator_Status] FOREIGN KEY([fk_EmploymentStatus])
REFERENCES [dbo].[EmploymentStatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Operator]'))
ALTER TABLE [dbo].[Operator] CHECK CONSTRAINT [FK_Operator_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorAlias_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorAlias]'))
ALTER TABLE [dbo].[OperatorAlias]  WITH CHECK ADD  CONSTRAINT [FK_OperatorAlias_Operator] FOREIGN KEY([fk_OperatorID])
REFERENCES [dbo].[Operator] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorAlias_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorAlias]'))
ALTER TABLE [dbo].[OperatorAlias] CHECK CONSTRAINT [FK_OperatorAlias_Operator]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorAlias]'))
ALTER TABLE [dbo].[OperatorAlias]  WITH CHECK ADD  CONSTRAINT [FK_OperatorAlias_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorAlias_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorAlias]'))
ALTER TABLE [dbo].[OperatorAlias] CHECK CONSTRAINT [FK_OperatorAlias_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorGroup_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorGroup]'))
ALTER TABLE [dbo].[OperatorGroup]  WITH CHECK ADD  CONSTRAINT [FK_OperatorGroup_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorGroup_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorGroup]'))
ALTER TABLE [dbo].[OperatorGroup] CHECK CONSTRAINT [FK_OperatorGroup_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_OperatorGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorGroup_Operator]'))
ALTER TABLE [dbo].[OperatorGroup_Operator]  WITH CHECK ADD  CONSTRAINT [FK_Operator_OperatorGroup] FOREIGN KEY([fk_OperatorGroupID])
REFERENCES [dbo].[OperatorGroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Operator_OperatorGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorGroup_Operator]'))
ALTER TABLE [dbo].[OperatorGroup_Operator] CHECK CONSTRAINT [FK_Operator_OperatorGroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorGroup_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorGroup_Operator]'))
ALTER TABLE [dbo].[OperatorGroup_Operator]  WITH CHECK ADD  CONSTRAINT [FK_OperatorGroup_Operator] FOREIGN KEY([fk_OperatorID])
REFERENCES [dbo].[Operator] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OperatorGroup_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperatorGroup_Operator]'))
ALTER TABLE [dbo].[OperatorGroup_Operator] CHECK CONSTRAINT [FK_OperatorGroup_Operator]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Organization_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [fk_Organization_Brand] FOREIGN KEY([fk_BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Organization_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [fk_Organization_Brand]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organization_Currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Currency] FOREIGN KEY([CurrencyCode])
REFERENCES [dbo].[Currency] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organization_Currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Currency]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organization_OrganizationLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_OrganizationLogin] FOREIGN KEY([fk_OrgOwner])
REFERENCES [dbo].[OrganizationLogin] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organization_OrganizationLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organization_OrganizationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_OrganizationType] FOREIGN KEY([fk_OrganizationTypeID])
REFERENCES [dbo].[OrganizationType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organization_OrganizationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organization]'))
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCommodity_HarvestUofM]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]'))
ALTER TABLE [dbo].[OrganizationCommodity]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCommodity_HarvestUofM] FOREIGN KEY([fk_HarvestUofMID])
REFERENCES [dbo].[UnitOfMeasure] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCommodity_HarvestUofM]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]'))
ALTER TABLE [dbo].[OrganizationCommodity] CHECK CONSTRAINT [FK_OrganizationCommodity_HarvestUofM]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCommodity_MasterCommodity]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]'))
ALTER TABLE [dbo].[OrganizationCommodity]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCommodity_MasterCommodity] FOREIGN KEY([fk_MasterCommodityID])
REFERENCES [dbo].[MasterCommodity] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCommodity_MasterCommodity]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]'))
ALTER TABLE [dbo].[OrganizationCommodity] CHECK CONSTRAINT [FK_OrganizationCommodity_MasterCommodity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCommodity_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]'))
ALTER TABLE [dbo].[OrganizationCommodity]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCommodity_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCommodity_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCommodity]'))
ALTER TABLE [dbo].[OrganizationCommodity] CHECK CONSTRAINT [FK_OrganizationCommodity_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCrop_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCrop]'))
ALTER TABLE [dbo].[OrganizationCrop]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCrop_MasterCrop] FOREIGN KEY([fk_MasterCropID])
REFERENCES [dbo].[MasterCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCrop_MasterCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCrop]'))
ALTER TABLE [dbo].[OrganizationCrop] CHECK CONSTRAINT [FK_OrganizationCrop_MasterCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCrop_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCrop]'))
ALTER TABLE [dbo].[OrganizationCrop]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCrop_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationCrop_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationCrop]'))
ALTER TABLE [dbo].[OrganizationCrop] CHECK CONSTRAINT [FK_OrganizationCrop_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LoginOrganization_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationLogin]'))
ALTER TABLE [dbo].[OrganizationLogin]  WITH CHECK ADD  CONSTRAINT [fk_LoginOrganization_Login] FOREIGN KEY([fk_LoginID])
REFERENCES [dbo].[Login] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LoginOrganization_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationLogin]'))
ALTER TABLE [dbo].[OrganizationLogin] CHECK CONSTRAINT [fk_LoginOrganization_Login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginOrganization_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationLogin]'))
ALTER TABLE [dbo].[OrganizationLogin]  WITH CHECK ADD  CONSTRAINT [FK_LoginOrganization_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoginOrganization_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationLogin]'))
ALTER TABLE [dbo].[OrganizationLogin] CHECK CONSTRAINT [FK_LoginOrganization_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLicenseUnassigned_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLicenseUnassigned]'))
ALTER TABLE [dbo].[OrgLicenseUnassigned]  WITH CHECK ADD  CONSTRAINT [FK_OrgLicenseUnassigned_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLicenseUnassigned_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLicenseUnassigned]'))
ALTER TABLE [dbo].[OrgLicenseUnassigned] CHECK CONSTRAINT [FK_OrgLicenseUnassigned_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginAccessRole_AccessRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginAccessRole]'))
ALTER TABLE [dbo].[OrgLoginAccessRole]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginAccessRole_AccessRole] FOREIGN KEY([fk_AccessRoleID])
REFERENCES [dbo].[AccessRole] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginAccessRole_AccessRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginAccessRole]'))
ALTER TABLE [dbo].[OrgLoginAccessRole] CHECK CONSTRAINT [FK_OrgLoginAccessRole_AccessRole]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginAccessRole_OrgLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginAccessRole]'))
ALTER TABLE [dbo].[OrgLoginAccessRole]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginAccessRole_OrgLogin] FOREIGN KEY([fk_OrgLoginID])
REFERENCES [dbo].[OrganizationLogin] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginAccessRole_OrgLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginAccessRole]'))
ALTER TABLE [dbo].[OrgLoginAccessRole] CHECK CONSTRAINT [FK_OrgLoginAccessRole_OrgLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginNotification_ApplicationNotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]'))
ALTER TABLE [dbo].[OrgLoginNotification]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginNotification_ApplicationNotificationType] FOREIGN KEY([fk_ApplicationNotificationTypeId])
REFERENCES [dbo].[ApplicationNotificationType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginNotification_ApplicationNotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]'))
ALTER TABLE [dbo].[OrgLoginNotification] CHECK CONSTRAINT [FK_OrgLoginNotification_ApplicationNotificationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginNotification_DeviceAmazonResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]'))
ALTER TABLE [dbo].[OrgLoginNotification]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginNotification_DeviceAmazonResource] FOREIGN KEY([fk_DeviceAmazonResourceId])
REFERENCES [dbo].[DeviceAmazonResource] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginNotification_DeviceAmazonResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]'))
ALTER TABLE [dbo].[OrgLoginNotification] CHECK CONSTRAINT [FK_OrgLoginNotification_DeviceAmazonResource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginNotification_OrganizationLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]'))
ALTER TABLE [dbo].[OrgLoginNotification]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginNotification_OrganizationLogin] FOREIGN KEY([fk_OrgLoginId])
REFERENCES [dbo].[OrganizationLogin] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginNotification_OrganizationLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginNotification]'))
ALTER TABLE [dbo].[OrgLoginNotification] CHECK CONSTRAINT [FK_OrgLoginNotification_OrganizationLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginUserFeature_OrgLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginUserFeature]'))
ALTER TABLE [dbo].[OrgLoginUserFeature]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginUserFeature_OrgLogin] FOREIGN KEY([fk_OrgLoginID])
REFERENCES [dbo].[OrganizationLogin] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginUserFeature_OrgLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginUserFeature]'))
ALTER TABLE [dbo].[OrgLoginUserFeature] CHECK CONSTRAINT [FK_OrgLoginUserFeature_OrgLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginUserFeature_UserFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginUserFeature]'))
ALTER TABLE [dbo].[OrgLoginUserFeature]  WITH CHECK ADD  CONSTRAINT [FK_OrgLoginUserFeature_UserFeature] FOREIGN KEY([fk_UserFeatureID])
REFERENCES [dbo].[UserFeature] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgLoginUserFeature_UserFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgLoginUserFeature]'))
ALTER TABLE [dbo].[OrgLoginUserFeature] CHECK CONSTRAINT [FK_OrgLoginUserFeature_UserFeature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_OrgRelationship_AssociatedOrgID_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationship]'))
ALTER TABLE [dbo].[OrgRelationship]  WITH CHECK ADD  CONSTRAINT [fk_OrgRelationship_AssociatedOrgID_Organization] FOREIGN KEY([fk_AssociatedOrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_OrgRelationship_AssociatedOrgID_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationship]'))
ALTER TABLE [dbo].[OrgRelationship] CHECK CONSTRAINT [fk_OrgRelationship_AssociatedOrgID_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_OrgRelationship_OrgRelationshipType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationship]'))
ALTER TABLE [dbo].[OrgRelationship]  WITH CHECK ADD  CONSTRAINT [fk_OrgRelationship_OrgRelationshipType] FOREIGN KEY([fk_OrgRelationshipTypeID])
REFERENCES [dbo].[OrgRelationshipType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_OrgRelationship_OrgRelationshipType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationship]'))
ALTER TABLE [dbo].[OrgRelationship] CHECK CONSTRAINT [fk_OrgRelationship_OrgRelationshipType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_OrgRelationship_PrincipalOrgID_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationship]'))
ALTER TABLE [dbo].[OrgRelationship]  WITH CHECK ADD  CONSTRAINT [fk_OrgRelationship_PrincipalOrgID_Organization] FOREIGN KEY([fk_PrincipalOrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_OrgRelationship_PrincipalOrgID_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationship]'))
ALTER TABLE [dbo].[OrgRelationship] CHECK CONSTRAINT [fk_OrgRelationship_PrincipalOrgID_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipAccessRole_AccessRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipAccessRole]'))
ALTER TABLE [dbo].[OrgRelationshipAccessRole]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipAccessRole_AccessRole] FOREIGN KEY([fk_AccessRoleID])
REFERENCES [dbo].[AccessRole] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipAccessRole_AccessRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipAccessRole]'))
ALTER TABLE [dbo].[OrgRelationshipAccessRole] CHECK CONSTRAINT [FK_OrgRelationshipAccessRole_AccessRole]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipAccessRole_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipAccessRole]'))
ALTER TABLE [dbo].[OrgRelationshipAccessRole]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipAccessRole_OrgRelationship] FOREIGN KEY([fk_OrgRelationshipID])
REFERENCES [dbo].[OrgRelationship] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipAccessRole_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipAccessRole]'))
ALTER TABLE [dbo].[OrgRelationshipAccessRole] CHECK CONSTRAINT [FK_OrgRelationshipAccessRole_OrgRelationship]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipClient_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipClient]'))
ALTER TABLE [dbo].[OrgRelationshipClient]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipClient_Client] FOREIGN KEY([fk_ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipClient_Client]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipClient]'))
ALTER TABLE [dbo].[OrgRelationshipClient] CHECK CONSTRAINT [FK_OrgRelationshipClient_Client]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipClient_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipClient]'))
ALTER TABLE [dbo].[OrgRelationshipClient]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipClient_OrgRelationship] FOREIGN KEY([fk_OrgRelationshipID])
REFERENCES [dbo].[OrgRelationship] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipClient_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipClient]'))
ALTER TABLE [dbo].[OrgRelationshipClient] CHECK CONSTRAINT [FK_OrgRelationshipClient_OrgRelationship]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipFarm_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipFarm]'))
ALTER TABLE [dbo].[OrgRelationshipFarm]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipFarm_Farm] FOREIGN KEY([fk_FarmID])
REFERENCES [dbo].[Farm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipFarm_Farm]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipFarm]'))
ALTER TABLE [dbo].[OrgRelationshipFarm] CHECK CONSTRAINT [FK_OrgRelationshipFarm_Farm]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipFarm_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipFarm]'))
ALTER TABLE [dbo].[OrgRelationshipFarm]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipFarm_OrgRelationship] FOREIGN KEY([fk_OrgRelationshipID])
REFERENCES [dbo].[OrgRelationship] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipFarm_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipFarm]'))
ALTER TABLE [dbo].[OrgRelationshipFarm] CHECK CONSTRAINT [FK_OrgRelationshipFarm_OrgRelationship]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipField_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipField]'))
ALTER TABLE [dbo].[OrgRelationshipField]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipField_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipField_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipField]'))
ALTER TABLE [dbo].[OrgRelationshipField] CHECK CONSTRAINT [FK_OrgRelationshipField_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipField_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipField]'))
ALTER TABLE [dbo].[OrgRelationshipField]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipField_OrgRelationship] FOREIGN KEY([fk_OrgRelationshipID])
REFERENCES [dbo].[OrgRelationship] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipField_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipField]'))
ALTER TABLE [dbo].[OrgRelationshipField] CHECK CONSTRAINT [FK_OrgRelationshipField_OrgRelationship]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipYear_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipYear]'))
ALTER TABLE [dbo].[OrgRelationshipYear]  WITH CHECK ADD  CONSTRAINT [FK_OrgRelationshipYear_OrgRelationship] FOREIGN KEY([fk_OrgRelationshipID])
REFERENCES [dbo].[OrgRelationship] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrgRelationshipYear_OrgRelationship]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrgRelationshipYear]'))
ALTER TABLE [dbo].[OrgRelationshipYear] CHECK CONSTRAINT [FK_OrgRelationshipYear_OrgRelationship]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductivityThresholds_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductivityThresholds]'))
ALTER TABLE [dbo].[ProductivityThresholds]  WITH CHECK ADD  CONSTRAINT [FK_ProductivityThresholds_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductivityThresholds_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductivityThresholds]'))
ALTER TABLE [dbo].[ProductivityThresholds] CHECK CONSTRAINT [FK_ProductivityThresholds_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ResourceText_TextResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[ResourceText]'))
ALTER TABLE [dbo].[ResourceText]  WITH CHECK ADD  CONSTRAINT [FK_ResourceText_TextResource] FOREIGN KEY([fk_TextResourceID])
REFERENCES [dbo].[TextResource] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ResourceText_TextResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[ResourceText]'))
ALTER TABLE [dbo].[ResourceText] CHECK CONSTRAINT [FK_ResourceText_TextResource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeDependency_DependentServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeDependency]'))
ALTER TABLE [dbo].[ServiceTypeDependency]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypeDependency_DependentServiceType] FOREIGN KEY([fk_DependentServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeDependency_DependentServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeDependency]'))
ALTER TABLE [dbo].[ServiceTypeDependency] CHECK CONSTRAINT [FK_ServiceTypeDependency_DependentServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeDependency_RequiredServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeDependency]'))
ALTER TABLE [dbo].[ServiceTypeDependency]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypeDependency_RequiredServiceType] FOREIGN KEY([fk_RequiredServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeDependency_RequiredServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeDependency]'))
ALTER TABLE [dbo].[ServiceTypeDependency] CHECK CONSTRAINT [FK_ServiceTypeDependency_RequiredServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeTranslation_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeTranslation]'))
ALTER TABLE [dbo].[ServiceTypeTranslation]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypeTranslation_ServiceType] FOREIGN KEY([fk_ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeTranslation_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeTranslation]'))
ALTER TABLE [dbo].[ServiceTypeTranslation] CHECK CONSTRAINT [FK_ServiceTypeTranslation_ServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeTranslation_TextResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeTranslation]'))
ALTER TABLE [dbo].[ServiceTypeTranslation]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypeTranslation_TextResource] FOREIGN KEY([fk_TextResourceID])
REFERENCES [dbo].[TextResource] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeTranslation_TextResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeTranslation]'))
ALTER TABLE [dbo].[ServiceTypeTranslation] CHECK CONSTRAINT [FK_ServiceTypeTranslation_TextResource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeUpgrade_BaseServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeUpgrade]'))
ALTER TABLE [dbo].[ServiceTypeUpgrade]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypeUpgrade_BaseServiceType] FOREIGN KEY([fk_BaseServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeUpgrade_BaseServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeUpgrade]'))
ALTER TABLE [dbo].[ServiceTypeUpgrade] CHECK CONSTRAINT [FK_ServiceTypeUpgrade_BaseServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeUpgrade_UpgradeServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeUpgrade]'))
ALTER TABLE [dbo].[ServiceTypeUpgrade]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypeUpgrade_UpgradeServiceType] FOREIGN KEY([fk_UpgradeServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiceTypeUpgrade_UpgradeServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiceTypeUpgrade]'))
ALTER TABLE [dbo].[ServiceTypeUpgrade] CHECK CONSTRAINT [FK_ServiceTypeUpgrade_UpgradeServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_Task]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Task] FOREIGN KEY([fk_TaskID])
REFERENCES [dbo].[Task] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_Task]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Task]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionAsset_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionAsset]'))
ALTER TABLE [dbo].[SessionAsset]  WITH CHECK ADD  CONSTRAINT [FK_SessionAsset_Asset] FOREIGN KEY([fk_AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionAsset_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionAsset]'))
ALTER TABLE [dbo].[SessionAsset] CHECK CONSTRAINT [FK_SessionAsset_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionAsset_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionAsset]'))
ALTER TABLE [dbo].[SessionAsset]  WITH CHECK ADD  CONSTRAINT [FK_SessionAsset_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionAsset_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionAsset]'))
ALTER TABLE [dbo].[SessionAsset] CHECK CONSTRAINT [FK_SessionAsset_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionCondition_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionCondition]'))
ALTER TABLE [dbo].[SessionCondition]  WITH CHECK ADD  CONSTRAINT [FK_SessionCondition_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionCondition_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionCondition]'))
ALTER TABLE [dbo].[SessionCondition] CHECK CONSTRAINT [FK_SessionCondition_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionHarvest_MasterCommodity]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionHarvest]'))
ALTER TABLE [dbo].[SessionHarvest]  WITH CHECK ADD  CONSTRAINT [FK_SessionHarvest_MasterCommodity] FOREIGN KEY([fk_MasterCommodityID])
REFERENCES [dbo].[MasterCommodity] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionHarvest_MasterCommodity]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionHarvest]'))
ALTER TABLE [dbo].[SessionHarvest] CHECK CONSTRAINT [FK_SessionHarvest_MasterCommodity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionHarvest_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionHarvest]'))
ALTER TABLE [dbo].[SessionHarvest]  WITH CHECK ADD  CONSTRAINT [FK_SessionHarvest_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionHarvest_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionHarvest]'))
ALTER TABLE [dbo].[SessionHarvest] CHECK CONSTRAINT [FK_SessionHarvest_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionImplement_Implement]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionImplement]'))
ALTER TABLE [dbo].[SessionImplement]  WITH CHECK ADD  CONSTRAINT [FK_SessionImplement_Implement] FOREIGN KEY([fk_ImplementID])
REFERENCES [dbo].[Implement] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionImplement_Implement]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionImplement]'))
ALTER TABLE [dbo].[SessionImplement] CHECK CONSTRAINT [FK_SessionImplement_Implement]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionImplement_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionImplement]'))
ALTER TABLE [dbo].[SessionImplement]  WITH CHECK ADD  CONSTRAINT [FK_SessionImplement_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionImplement_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionImplement]'))
ALTER TABLE [dbo].[SessionImplement] CHECK CONSTRAINT [FK_SessionImplement_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionMaterial_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionMaterial]'))
ALTER TABLE [dbo].[SessionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SessionMaterial_Material] FOREIGN KEY([fk_MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionMaterial_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionMaterial]'))
ALTER TABLE [dbo].[SessionMaterial] CHECK CONSTRAINT [FK_SessionMaterial_Material]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionMaterial_Parent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionMaterial]'))
ALTER TABLE [dbo].[SessionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SessionMaterial_Parent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Material] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionMaterial_Parent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionMaterial]'))
ALTER TABLE [dbo].[SessionMaterial] CHECK CONSTRAINT [FK_SessionMaterial_Parent]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionMaterial_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionMaterial]'))
ALTER TABLE [dbo].[SessionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SessionMaterial_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionMaterial_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionMaterial]'))
ALTER TABLE [dbo].[SessionMaterial] CHECK CONSTRAINT [FK_SessionMaterial_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionOperator_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionOperator]'))
ALTER TABLE [dbo].[SessionOperator]  WITH CHECK ADD  CONSTRAINT [FK_SessionOperator_Operator] FOREIGN KEY([fk_OperatorID])
REFERENCES [dbo].[Operator] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionOperator_Operator]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionOperator]'))
ALTER TABLE [dbo].[SessionOperator] CHECK CONSTRAINT [FK_SessionOperator_Operator]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionOperator_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionOperator]'))
ALTER TABLE [dbo].[SessionOperator]  WITH CHECK ADD  CONSTRAINT [FK_SessionOperator_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionOperator_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionOperator]'))
ALTER TABLE [dbo].[SessionOperator] CHECK CONSTRAINT [FK_SessionOperator_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionTankMix_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionTankMix]'))
ALTER TABLE [dbo].[SessionTankMix]  WITH CHECK ADD  CONSTRAINT [FK_SessionTankMix_Session] FOREIGN KEY([fk_SessionID])
REFERENCES [dbo].[Session] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionTankMix_Session]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionTankMix]'))
ALTER TABLE [dbo].[SessionTankMix] CHECK CONSTRAINT [FK_SessionTankMix_Session]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionTankMix_TankMix]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionTankMix]'))
ALTER TABLE [dbo].[SessionTankMix]  WITH CHECK ADD  CONSTRAINT [FK_SessionTankMix_TankMix] FOREIGN KEY([fk_TankMixID])
REFERENCES [dbo].[TankMix] ([fk_MaterialID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SessionTankMix_TankMix]') AND parent_object_id = OBJECT_ID(N'[dbo].[SessionTankMix]'))
ALTER TABLE [dbo].[SessionTankMix] CHECK CONSTRAINT [FK_SessionTankMix_TankMix]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoilSample_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[SoilSample]'))
ALTER TABLE [dbo].[SoilSample]  WITH CHECK ADD  CONSTRAINT [FK_SoilSample_Group] FOREIGN KEY([fk_GroupID])
REFERENCES [dbo].[SoilSampleGroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoilSample_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[SoilSample]'))
ALTER TABLE [dbo].[SoilSample] CHECK CONSTRAINT [FK_SoilSample_Group]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoilSampleGroup_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[SoilSampleGroup]'))
ALTER TABLE [dbo].[SoilSampleGroup]  WITH CHECK ADD  CONSTRAINT [FK_SoilSampleGroup_Field] FOREIGN KEY([fk_FieldID])
REFERENCES [dbo].[Field] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoilSampleGroup_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[SoilSampleGroup]'))
ALTER TABLE [dbo].[SoilSampleGroup] CHECK CONSTRAINT [FK_SoilSampleGroup_Field]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SubOperationType_OperationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubOperationType]'))
ALTER TABLE [dbo].[SubOperationType]  WITH CHECK ADD  CONSTRAINT [fk_SubOperationType_OperationType] FOREIGN KEY([fk_OperationTypeID])
REFERENCES [dbo].[OperationType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SubOperationType_OperationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubOperationType]'))
ALTER TABLE [dbo].[SubOperationType] CHECK CONSTRAINT [fk_SubOperationType_OperationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SubOperationType_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubOperationType]'))
ALTER TABLE [dbo].[SubOperationType]  WITH CHECK ADD  CONSTRAINT [fk_SubOperationType_Organization] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SubOperationType_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubOperationType]'))
ALTER TABLE [dbo].[SubOperationType] CHECK CONSTRAINT [fk_SubOperationType_Organization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TankMix_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[TankMix]'))
ALTER TABLE [dbo].[TankMix]  WITH CHECK ADD  CONSTRAINT [FK_TankMix_Material] FOREIGN KEY([fk_MaterialID])
REFERENCES [dbo].[Material] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TankMix_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[TankMix]'))
ALTER TABLE [dbo].[TankMix] CHECK CONSTRAINT [FK_TankMix_Material]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TankMixIngredient_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[TankMixIngredient]'))
ALTER TABLE [dbo].[TankMixIngredient]  WITH CHECK ADD  CONSTRAINT [FK_TankMixIngredient_Material] FOREIGN KEY([fk_MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TankMixIngredient_Material]') AND parent_object_id = OBJECT_ID(N'[dbo].[TankMixIngredient]'))
ALTER TABLE [dbo].[TankMixIngredient] CHECK CONSTRAINT [FK_TankMixIngredient_Material]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TankMixIngredient_TankMix]') AND parent_object_id = OBJECT_ID(N'[dbo].[TankMixIngredient]'))
ALTER TABLE [dbo].[TankMixIngredient]  WITH CHECK ADD  CONSTRAINT [FK_TankMixIngredient_TankMix] FOREIGN KEY([fk_TankMixID])
REFERENCES [dbo].[TankMix] ([fk_MaterialID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TankMixIngredient_TankMix]') AND parent_object_id = OBJECT_ID(N'[dbo].[TankMixIngredient]'))
ALTER TABLE [dbo].[TankMixIngredient] CHECK CONSTRAINT [FK_TankMixIngredient_TankMix]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_GrownCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_GrownCrop] FOREIGN KEY([fk_GrownCropID])
REFERENCES [dbo].[GrownCrop] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_GrownCrop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_GrownCrop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_OperationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_OperationType] FOREIGN KEY([fk_OperationTypeID])
REFERENCES [dbo].[OperationType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_OperationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_OperationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Task_SubOperationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [fk_Task_SubOperationType] FOREIGN KEY([fk_SubOperationTypeID])
REFERENCES [dbo].[SubOperationType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Task_SubOperationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [fk_Task_SubOperationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThirdPartyAssetLink_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThirdPartyAssetLink]'))
ALTER TABLE [dbo].[ThirdPartyAssetLink]  WITH CHECK ADD  CONSTRAINT [FK_ThirdPartyAssetLink_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThirdPartyAssetLink_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThirdPartyAssetLink]'))
ALTER TABLE [dbo].[ThirdPartyAssetLink] CHECK CONSTRAINT [FK_ThirdPartyAssetLink_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UnitOfMeasure_UnitDomain]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfMeasure]'))
ALTER TABLE [dbo].[UnitOfMeasure]  WITH CHECK ADD  CONSTRAINT [FK_UnitOfMeasure_UnitDomain] FOREIGN KEY([fk_UnitDomainID])
REFERENCES [dbo].[UnitDomain] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UnitOfMeasure_UnitDomain]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfMeasure]'))
ALTER TABLE [dbo].[UnitOfMeasure] CHECK CONSTRAINT [FK_UnitOfMeasure_UnitDomain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UnitOfMeasure_UnitSystem]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfMeasure]'))
ALTER TABLE [dbo].[UnitOfMeasure]  WITH CHECK ADD  CONSTRAINT [FK_UnitOfMeasure_UnitSystem] FOREIGN KEY([fk_UnitSystemID])
REFERENCES [dbo].[UnitSystem] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UnitOfMeasure_UnitSystem]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfMeasure]'))
ALTER TABLE [dbo].[UnitOfMeasure] CHECK CONSTRAINT [FK_UnitOfMeasure_UnitSystem]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserFeature_ApplicationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserFeature]'))
ALTER TABLE [dbo].[UserFeature]  WITH CHECK ADD  CONSTRAINT [FK_UserFeature_ApplicationID] FOREIGN KEY([fk_ApplicationID])
REFERENCES [dbo].[Application] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserFeature_ApplicationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserFeature]'))
ALTER TABLE [dbo].[UserFeature] CHECK CONSTRAINT [FK_UserFeature_ApplicationID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_ExpiryMode]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense]  WITH CHECK ADD  CONSTRAINT [FK_UserLicense_ExpiryMode] FOREIGN KEY([fk_UserLicenseExpiryModeID])
REFERENCES [dbo].[UserLicenseExpiryMode] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_ExpiryMode]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense] CHECK CONSTRAINT [FK_UserLicense_ExpiryMode]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_LicenseSource]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense]  WITH CHECK ADD  CONSTRAINT [FK_UserLicense_LicenseSource] FOREIGN KEY([fk_LicenseSourceID])
REFERENCES [dbo].[LicenseSource] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_LicenseSource]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense] CHECK CONSTRAINT [FK_UserLicense_LicenseSource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_Organziation]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense]  WITH CHECK ADD  CONSTRAINT [FK_UserLicense_Organziation] FOREIGN KEY([fk_OrgID])
REFERENCES [dbo].[Organization] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_Organziation]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense] CHECK CONSTRAINT [FK_UserLicense_Organziation]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense]  WITH CHECK ADD  CONSTRAINT [FK_UserLicense_Status] FOREIGN KEY([fk_UserLicenseStatusID])
REFERENCES [dbo].[UserLicenseStatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense] CHECK CONSTRAINT [FK_UserLicense_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_UserLicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense]  WITH CHECK ADD  CONSTRAINT [FK_UserLicense_UserLicenseType] FOREIGN KEY([fk_UserLicenseTypeID])
REFERENCES [dbo].[UserLicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicense_UserLicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicense]'))
ALTER TABLE [dbo].[UserLicense] CHECK CONSTRAINT [FK_UserLicense_UserLicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseTypeTranslation_TextResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseTypeTranslation]'))
ALTER TABLE [dbo].[UserLicenseTypeTranslation]  WITH CHECK ADD  CONSTRAINT [FK_UserLicenseTypeTranslation_TextResource] FOREIGN KEY([fk_TextResourceID])
REFERENCES [dbo].[TextResource] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseTypeTranslation_TextResource]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseTypeTranslation]'))
ALTER TABLE [dbo].[UserLicenseTypeTranslation] CHECK CONSTRAINT [FK_UserLicenseTypeTranslation_TextResource]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseTypeTranslation_UserLicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseTypeTranslation]'))
ALTER TABLE [dbo].[UserLicenseTypeTranslation]  WITH CHECK ADD  CONSTRAINT [FK_UserLicenseTypeTranslation_UserLicenseType] FOREIGN KEY([fk_UserLicenseTypeID])
REFERENCES [dbo].[UserLicenseType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseTypeTranslation_UserLicenseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseTypeTranslation]'))
ALTER TABLE [dbo].[UserLicenseTypeTranslation] CHECK CONSTRAINT [FK_UserLicenseTypeTranslation_UserLicenseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_Device]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_UserLicenseUsage_Device] FOREIGN KEY([fk_DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_Device]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage] CHECK CONSTRAINT [FK_UserLicenseUsage_Device]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_UserLicenseUsage_Login] FOREIGN KEY([fk_AssignedbyUserID])
REFERENCES [dbo].[Login] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage] CHECK CONSTRAINT [FK_UserLicenseUsage_Login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_UserLicenseUsage_Status] FOREIGN KEY([fk_UserLicenseUsageStatusID])
REFERENCES [dbo].[UserLicenseUsageStatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage] CHECK CONSTRAINT [FK_UserLicenseUsage_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_UserLicense]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage]  WITH CHECK ADD  CONSTRAINT [FK_UserLicenseUsage_UserLicense] FOREIGN KEY([fk_UserLicenseID])
REFERENCES [dbo].[UserLicense] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserLicenseUsage_UserLicense]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsage]'))
ALTER TABLE [dbo].[UserLicenseUsage] CHECK CONSTRAINT [FK_UserLicenseUsage_UserLicense]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserLicenseUsageDeliveryHistory_DeliveryType]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsageDeliveryHistory]'))
ALTER TABLE [dbo].[UserLicenseUsageDeliveryHistory]  WITH CHECK ADD  CONSTRAINT [fk_UserLicenseUsageDeliveryHistory_DeliveryType] FOREIGN KEY([fk_EntitlementDeliveryTypeID])
REFERENCES [dbo].[EntitlementDeliveryType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserLicenseUsageDeliveryHistory_DeliveryType]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsageDeliveryHistory]'))
ALTER TABLE [dbo].[UserLicenseUsageDeliveryHistory] CHECK CONSTRAINT [fk_UserLicenseUsageDeliveryHistory_DeliveryType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserLicenseUsageDeliveryHistory_UserLicenseUsage]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsageDeliveryHistory]'))
ALTER TABLE [dbo].[UserLicenseUsageDeliveryHistory]  WITH CHECK ADD  CONSTRAINT [fk_UserLicenseUsageDeliveryHistory_UserLicenseUsage] FOREIGN KEY([fk_UserLicenseUsageID])
REFERENCES [dbo].[UserLicenseUsage] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserLicenseUsageDeliveryHistory_UserLicenseUsage]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLicenseUsageDeliveryHistory]'))
ALTER TABLE [dbo].[UserLicenseUsageDeliveryHistory] CHECK CONSTRAINT [fk_UserLicenseUsageDeliveryHistory_UserLicenseUsage]
GO
/****** Object:  DdlTrigger [rds_deny_backups_trigger]    Script Date: 5/29/2018 2:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE parent_class_desc = 'DATABASE' AND name = N'rds_deny_backups_trigger')
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [rds_deny_backups_trigger] ON DATABASE WITH EXECUTE AS ''dbo'' FOR
 ADD_ROLE_MEMBER, GRANT_DATABASE AS BEGIN
   SET NOCOUNT ON;
   SET ANSI_PADDING ON;
 
   DECLARE @data xml;
   DECLARE @user sysname;
   DECLARE @role sysname;
   DECLARE @type sysname;
   DECLARE @sql NVARCHAR(MAX);
   DECLARE @permissions TABLE(name sysname PRIMARY KEY);
   
   SELECT @data = EVENTDATA();
   SELECT @type = @data.value(''(/EVENT_INSTANCE/EventType)[1]'', ''sysname'');
    
   IF @type = ''ADD_ROLE_MEMBER'' BEGIN
      SELECT @user = @data.value(''(/EVENT_INSTANCE/ObjectName)[1]'', ''sysname''),
       @role = @data.value(''(/EVENT_INSTANCE/RoleName)[1]'', ''sysname'');

      IF @role IN (''db_owner'', ''db_backupoperator'') BEGIN
         SELECT @sql = ''DENY BACKUP DATABASE, BACKUP LOG TO '' + QUOTENAME(@user);
         EXEC(@sql);
      END
   END ELSE IF @type = ''GRANT_DATABASE'' BEGIN
      INSERT INTO @permissions(name)
      SELECT Permission.value(''(text())[1]'', ''sysname'') FROM
       @data.nodes(''/EVENT_INSTANCE/Permissions/Permission'')
      AS DatabasePermissions(Permission);
      
      IF EXISTS (SELECT * FROM @permissions WHERE name IN (''BACKUP DATABASE'',
       ''BACKUP LOG''))
         RAISERROR(''Cannot grant backup database or backup log'', 15, 1) WITH LOG;       
   END
END

'
GO
ENABLE TRIGGER [rds_deny_backups_trigger] ON DATABASE
GO
