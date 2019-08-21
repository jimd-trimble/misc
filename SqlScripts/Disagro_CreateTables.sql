PRINT '*****************************************************************'
PRINT '*** TABS-7783_Add_Purchase_Order_Tables.sql'
PRINT '*****************************************************************'

USE [$(DatabaseName)]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'PurchaseOrderStatus')
BEGIN

	CREATE TABLE [dbo].[PurchaseOrderStatus](
		[ID] [bigint] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[InsertUTC] [datetime2](7) NOT NULL,
		[UpdateUTC] [datetime2](7) NOT NULL,
	 CONSTRAINT [PK_PurchaseOrderStatus] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'PurchaseOrder')
BEGIN

	CREATE TABLE [dbo].[PurchaseOrder](
		[ID] [bigint] NOT NULL,
		[fk_OrgID] [bigint] NOT NULL,
		[fk_StatusID] [bigint] NOT NULL,
		[OrderNumber] [bigint] NULL,
		[InsertUTC] [datetime2](7) NOT NULL,
		[UpdateUTC] [datetime2](7) NOT NULL,
	 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrder_Organization')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Organization] FOREIGN KEY([fk_OrgID])
	REFERENCES [dbo].[Organization] ([ID])
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrder_Organization')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Organization]
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrder_PurchaseOrderStatus')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_PurchaseOrderStatus] FOREIGN KEY([fk_StatusID])
	REFERENCES [dbo].[PurchaseOrderStatus] ([ID])
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrder_PurchaseOrderStatus')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_PurchaseOrderStatus]
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'PurchaseOrderHistory')
BEGIN

	CREATE TABLE [dbo].[PurchaseOrderHistory](
		[ID] [bigint] NOT NULL,
		[fk_PurchaseOrderID] [bigint] NOT NULL,
		[fk_StatusID] [bigint] NOT NULL,
		[fk_LoginID] [bigint] NOT NULL,
		[InsertUTC] [datetime2](7) NOT NULL,
		CONSTRAINT [PK_PurchaseOrderHistory] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderHistory_Login')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderHistory_Login] FOREIGN KEY([fk_LoginID])
	REFERENCES [dbo].[Login] ([ID])
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderHistory_Login')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderHistory] CHECK CONSTRAINT [FK_PurchaseOrderHistory_Login]
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderHistory_PurchaseOrder')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderHistory_PurchaseOrder] FOREIGN KEY([fk_PurchaseOrderID])
	REFERENCES [dbo].[PurchaseOrder] ([ID])
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderHistory_PurchaseOrder')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderHistory] CHECK CONSTRAINT [FK_PurchaseOrderHistory_PurchaseOrder]
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderHistory_PurchaseOrderStatus')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderHistory_PurchaseOrderStatus] FOREIGN KEY([fk_StatusID])
	REFERENCES [dbo].[PurchaseOrderStatus] ([ID])
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderHistory_PurchaseOrderStatus')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderHistory] CHECK CONSTRAINT [FK_PurchaseOrderHistory_PurchaseOrderStatus]
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'PurchaseOrderMaterial')
BEGIN

	CREATE TABLE [dbo].[PurchaseOrderMaterial](
		[ID] [bigint] NOT NULL,
		[fk_PurchaseOrderID] [bigint] NOT NULL,
		[fk_MaterialID] [bigint] NOT NULL,
		[fk_UnitID] [int] NOT NULL,
		[Quantity] [float] NOT NULL,
		[CostPerUnit] [float] NOT NULL,
	 CONSTRAINT [PK_PurchaseOrderMaterial] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[PurchaseOrderMaterial] ADD  CONSTRAINT [DF_PurchaseOrderMaterial_Quantity]  DEFAULT ((0)) FOR [Quantity]

	ALTER TABLE [dbo].[PurchaseOrderMaterial] ADD  CONSTRAINT [DF_PurchaseOrderMaterial_CostPerUnit]  DEFAULT ((0)) FOR [CostPerUnit]

END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderMaterial_Material')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderMaterial_Material] FOREIGN KEY([fk_MaterialID])
	REFERENCES [dbo].[Material] ([ID])
END
GO
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderMaterial_Material')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderMaterial] CHECK CONSTRAINT [FK_PurchaseOrderMaterial_Material]
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderMaterial_PurchaseOrder')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderMaterial_PurchaseOrder] FOREIGN KEY([fk_PurchaseOrderID])
	REFERENCES [dbo].[PurchaseOrder] ([ID])
END
GO
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderMaterial_PurchaseOrder')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderMaterial] CHECK CONSTRAINT [FK_PurchaseOrderMaterial_PurchaseOrder]
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderMaterial_UnitOfMeasure')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderMaterial_UnitOfMeasure] FOREIGN KEY([fk_UnitID])
	REFERENCES [dbo].[UnitOfMeasure] ([ID])
END
GO
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS WHERE CONSTRAINT_NAME=N'FK_PurchaseOrderMaterial_UnitOfMeasure')
BEGIN
	ALTER TABLE [dbo].[PurchaseOrderMaterial] CHECK CONSTRAINT [FK_PurchaseOrderMaterial_UnitOfMeasure]
END
GO


