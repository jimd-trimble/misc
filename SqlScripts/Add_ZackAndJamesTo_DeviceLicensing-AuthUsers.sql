--USE [tst-DeviceLicensing]
--GO

--INSERT INTO [dbo].[AuthorizedUser]
--           ([Uuid]
--           ,[Email]
--           ,[FirstName]
--           ,[LastName]
--           ,[InsertUTC]
--           ,[UpdateUTC])
--     VALUES
--           ('9e77d338-827e-46d9-b503-2d28f9dba8ad'
--           ,'zach_gettman@trimble.com'
--           ,'Zach'
--           ,'Gettman'
--           ,SYSDATETIME()
--           ,SYSDATETIME()),
--		   ('734e95b5-27a4-4162-84b4-c6a87ee1c9cf'
--           ,'james_hodgson@trimble.com'
--           ,'James'
--           ,'Hodgson'
--           ,SYSDATETIME()
--           ,SYSDATETIME())
--GO

select * from AuthorizedUser au
where au.Uuid in ('9e77d338-827e-46d9-b503-2d28f9dba8ad', '734e95b5-27a4-4162-84b4-c6a87ee1c9cf')

