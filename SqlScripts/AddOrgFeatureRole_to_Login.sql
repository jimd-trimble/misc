use [UserOp]

declare @org int = (select ID from Organization where Name like ('%illon%'));
-- find 17487'3 and replace with @org
declare @login int = (select ID from Login where UserName like ('%illon%'));
--find 6233'7 and replace with @login
declare @orgLogin int = (select ID from OrganizationLogin where fk_OrgID = @org);
--find 5005'9 and replace with @orgLogin

---- This would be an update not an insert, unless the org doesn't exist.
----SET IDENTITY_INSERT [dbo].[Organization] ON
----INSERT INTO [dbo].[Organization] ([ID], [Name], [InsertUTC], [UpdateUTC], [fk_BrandID], [ServiceEvaluationInProcess], [ServiceEvaluationStartUTC], [IsExempt], [TimezoneName], [IsDeleted], [ExternalOrgIdentifier], [IsMetric], [CurrencyCode], [DisableImportAssetCreation], [DisableImportOperatorCreation], [fk_OrgOwner], [WorkPhone], [Email], [Address1], [Address2], [City], [ZipCode], [State], [Country], [ContactPerson], [WebUrl], [MaxDesktopInstallations], [CellPhone], [HomePhone], [fk_OrganizationTypeID]) 
----VALUES (@org, N'Jim Dillon', N'2017-12-06 16:39:13', N'2017-12-06 16:39:13', 3, 0, N'0001-01-01 00:00:00', 0, N'UTC', 0, N'7e8b6303-c7f2-4726-8b1a-2fc6ab90797b', 1, N'USD', 0, 0, @orgLogin, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 0)
----SET IDENTITY_INSERT [dbo].[Organization] OFF
----GO

---- need licenses
--SET IDENTITY_INSERT [dbo].[License] ON
--INSERT INTO [dbo].[License] ([ID], [fk_LicenseTypeID], [fk_ResellerOrgID], [fk_OrgID], [PurchasedAmount], [ConsumedAmount], [IsAssigned], [ExpirationUTC], [IsDemo], [PartNumber], [ActivationID], [SSOContactID], [InsertUTC], [UpdateUTC], [EffectiveUTC], [PurchaseOrderNum], [SalesOrderNum], [SerialNumber], [ReferenceText], [fk_LicenseSourceID]) VALUES (33441, 57, @org, @org, CAST(365.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1, N'2018-12-13 23:49:26', 0, NULL, N'', N'', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'', N'', NULL, NULL, 3)
--INSERT INTO [dbo].[License] ([ID], [fk_LicenseTypeID], [fk_ResellerOrgID], [fk_OrgID], [PurchasedAmount], [ConsumedAmount], [IsAssigned], [ExpirationUTC], [IsDemo], [PartNumber], [ActivationID], [SSOContactID], [InsertUTC], [UpdateUTC], [EffectiveUTC], [PurchaseOrderNum], [SalesOrderNum], [SerialNumber], [ReferenceText], [fk_LicenseSourceID]) VALUES (33442, 58, @org, @org, CAST(365.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1, N'2018-12-13 23:49:26', 0, NULL, N'', N'', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'Support', N'Support', NULL, NULL, 3)
--INSERT INTO [dbo].[License] ([ID], [fk_LicenseTypeID], [fk_ResellerOrgID], [fk_OrgID], [PurchasedAmount], [ConsumedAmount], [IsAssigned], [ExpirationUTC], [IsDemo], [PartNumber], [ActivationID], [SSOContactID], [InsertUTC], [UpdateUTC], [EffectiveUTC], [PurchaseOrderNum], [SalesOrderNum], [SerialNumber], [ReferenceText], [fk_LicenseSourceID]) VALUES (33443, 58, @org, @org, CAST(365.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1, N'2018-12-13 23:49:26', 0, NULL, N'', N'', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'Support', N'Support', NULL, NULL, 3)
--INSERT INTO [dbo].[License] ([ID], [fk_LicenseTypeID], [fk_ResellerOrgID], [fk_OrgID], [PurchasedAmount], [ConsumedAmount], [IsAssigned], [ExpirationUTC], [IsDemo], [PartNumber], [ActivationID], [SSOContactID], [InsertUTC], [UpdateUTC], [EffectiveUTC], [PurchaseOrderNum], [SalesOrderNum], [SerialNumber], [ReferenceText], [fk_LicenseSourceID]) VALUES (33444, 64, @org, @org, CAST(365.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1, NULL, 0, NULL, N'', N'', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'Support', N'Support', NULL, NULL, 3)
--INSERT INTO [dbo].[License] ([ID], [fk_LicenseTypeID], [fk_ResellerOrgID], [fk_OrgID], [PurchasedAmount], [ConsumedAmount], [IsAssigned], [ExpirationUTC], [IsDemo], [PartNumber], [ActivationID], [SSOContactID], [InsertUTC], [UpdateUTC], [EffectiveUTC], [PurchaseOrderNum], [SalesOrderNum], [SerialNumber], [ReferenceText], [fk_LicenseSourceID]) VALUES (33445, 68, @org, @org, CAST(365.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1, N'2018-12-13 23:49:26', 0, NULL, N'', N'', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'2017-12-13 23:49:59', N'Support', N'Support', NULL, NULL, 3)
--SET IDENTITY_INSERT [dbo].[License] OFF


------ The LoginAccessRole is currently only set to 1008: ConnectedFarm Access. Leave it alone for now and inherit permissions via OrgLoginAccessRole.
------ Remove User
------ LoginAccessRole sets OrgAdmin and OperatorManager
------ Check if you have/want 1001 (org admin), 1008 (connecte farm access), 1006 (Trimble Admin), 1007 (Trimble Support), 1001 (orgadmin), 1026 (Trimble Beta), or 1027 (Operator Manager).
------INSERT INTO [dbo].[LoginAccessRole] ([fk_LoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (@login, 1001, N'2017-12-11 21:51:34', N'2017-12-11 21:51:34')
----INSERT INTO [dbo].[LoginAccessRole] ([fk_LoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (@login, 1006, N'2017-12-06 16:40:56', N'2017-12-06 16:40:56')
----INSERT INTO [dbo].[LoginAccessRole] ([fk_LoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (@login, 1007, N'2017-12-06 16:40:57', N'2017-12-06 16:40:57')
----INSERT INTO [dbo].[LoginAccessRole] ([fk_LoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (@login, 1010, N'2017-12-06 16:40:57', N'2017-12-06 16:40:57')
----INSERT INTO [dbo].[LoginAccessRole] ([fk_LoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (@login, 1026, N'2017-12-06 16:40:57', N'2017-12-06 16:40:57')
----INSERT INTO [dbo].[LoginAccessRole] ([fk_LoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (@login, 1027, N'2017-12-06 16:40:57', N'2017-12-06 16:40:57')
----GO

---- OrgLoginAccessRole also sets OrgAdmin and OperatorManager. You are currently an OrgAdmin, create a new operator with operatorMnager permissions to test a user with only OM permissions.
--SET IDENTITY_INSERT [dbo].[OrgLoginAccessRole] ON
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17961, @orgLogin, 1027, N'2017-12-06 16:39:20', N'2017-12-06 16:39:20')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17962, @orgLogin, 1, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17963, @orgLogin, 2, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17964, @orgLogin, 3, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17965, @orgLogin, 1002, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17966, @orgLogin, 1003, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17967, @orgLogin, 1004, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17968, @orgLogin, 1005, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--INSERT INTO [dbo].[OrgLoginAccessRole] ([ID], [fk_OrgLoginID], [fk_AccessRoleID], [InsertUTC], [UpdateUTC]) VALUES (17969, @orgLogin, 1009, N'2017-12-06 16:40:51', N'2017-12-06 16:40:51')
--SET IDENTITY_INSERT [dbo].[OrgLoginAccessRole] OFF
--GO

---- TESTS
select * from Organization o
inner join OrganizationType t on o.fk_OrganizationTypeID = t.ID
where o.ID = @org;
select * from Login where ID = @login;
select * from OrganizationLogin;
select * from AccessRole;
select * from LoginAccessRole lar
inner join AccessRole ar on ar.ID = lar.fk_AccessRoleID 
where fk_LoginID = @login;

---- OrgLoginAccessRoles from Rogue
----1	Advisor
----2	Soil Sampler
----3	Applicator
----1002	Irrigate-IQ Farmer
----1003	Irrigate-IQ Dealer
----1004	Irrigate-IQ Support
----1005	Irrigate-IQ Admin
----1009	Reseller
select * from OrgLoginAccessRole olar
inner join AccessRole ar on olar.fk_AccessRoleID = ar.ID
where fk_OrgLoginID = @orgLogin;

---- Not Necessary: select * from UserFeature;
---- Not Necessary: select * from AccessRoleUserFeature where fk_UserFeatureID = 90;

---- Not Necessary: select * from UserLicense;