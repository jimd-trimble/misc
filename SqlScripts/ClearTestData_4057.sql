use UserOp

--SELECT [Filter1].[fk_DeviceTypeID] AS [fk_DeviceTypeID],
--     [Filter1].[ID1] AS [ID],
--	 [Filter1].[fk_OrgID] AS [fk_OrgID],
--	 [Filter1].[fk_DealerOrgID] AS [fk_DealerOrgID],
--	 [Extent3].[fk_DeviceTypeRoleID] AS [fk_DeviceTypeRoleID],
--	 [Filter1].[SerialNumber] AS [SerialNumber],
--	 [Filter1].[fk_AssetID] AS [fk_AssetID],
--	 [Filter1].[Name] AS [Name],
--	 [Filter1].[DCDeviceID] AS [DCDeviceID],
--	 [Filter1].[SMHCalibrationOffset] AS [SMHCalibrationOffset]
--FROM   (SELECT [Extent1].[ID] AS [ID1], 
--	[Extent1].[fk_DeviceTypeID] AS [fk_DeviceTypeID],
--	[Extent1].[SerialNumber] AS [SerialNumber],
--	[Extent1].[Name] AS [Name],
--	[Extent1].[fk_DealerOrgID] AS [fk_DealerOrgID],
--	[Extent1].[DCDeviceID] AS [DCDeviceID],
--	[Extent2].[fk_OrgID] AS [fk_OrgID],
--	[Extent2].[fk_AssetID] AS [fk_AssetID],
--	[Extent2].[SMHCalibrationOffset] AS [SMHCalibrationOffset]
--FROM  [dbo].[Device] AS [Extent1]        
--	INNER JOIN [dbo].[AssetDevice] AS [Extent2] ON [Extent1].[ID] = [Extent2].[fk_DeviceID]
--		WHERE [Extent2].[IsCurrent] = 1 ) AS [Filter1]
--	INNER JOIN [dbo].[DeviceType] AS [Extent3] ON [Filter1].[fk_DeviceTypeID] = [Extent3].[ID]
--		WHERE [Filter1].[ID1] = @p__linq__0"
declare @sn varchar = 'SN 1156024';
declare @sunday datetime = (SELECT DATEADD(wk,DATEDIFF(wk,0,GETDATE()),0));
delete from AssetDevice;
delete from Asset;
delete from Device;
delete from Organization where InsertUTC > @sunday;
delete from DeviceMongoProperties;
select * from DeviceMongoProperties where SerialNumber = @sn;
select * from Device where SerialNumber = @sn;
select * from Asset where SerialNumber = @sn;
select * from AssetDevice ad where ad.fk_DeviceID = 11121;
select * from Organization where InsertUTC > @sunday; 