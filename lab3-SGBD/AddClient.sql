USE [BookLibrary]
GO
/****** Object:  StoredProcedure [dbo].[AddClient]    Script Date: 5/2/2018 7:41:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[AddClient]
	-- Add the parameters for the stored procedure here
	@clientCode varchar(max),
	@firstName varchar(max),
	@secondName varchar(max),
	@cnp varchar(max),
	@ci_serie varchar(max),
	@ci varchar(max),
	@address varchar(max),
	@city varchar(max),
	@district varchar(max),
	@phone varchar(max),
	@email varchar(max),
	@registrationDateClient varchar(max),
	@cgid varchar(max),
	@active varchar(max),
	@mentionsClient varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    begin tran
		begin try
			if dbo.checkFormatNumber(@clientCode) = 0
			begin
				RAISERROR('ClientCode is not a number', 14, 1)
			end

			if dbo.checkFormatName(@firstName) = 0
			begin
				RAISERROR('FirstName is invalid', 14, 1)				
			end

			if dbo.checkFormatName(@secondName) = 0
			begin
				RAISERROR('SecondName is invalid', 14, 1)				
			end

			if dbo.checkFormatCNP(@cnp) = 0
			begin
				RAISERROR('CNP is invalid', 14, 1)				
			end

			if dbo.checkFormatNumber(@ci_serie) = 0
			begin
				RAISERROR('CI Serie is not a number', 14, 1)				
			end
	
			if dbo.checkFormatName(@ci) = 0
			begin
				RAISERROR('CI is invalid', 14, 1)				
			end

			if dbo.checkFormatName(@city) = 0
			begin
				RAISERROR('City is invalid', 14, 1)				
			end

			if dbo.checkFormatName(@district) = 0
			begin
				RAISERROR('District is invalid', 14, 1)				
			end

			if dbo.checkFormatPhone(@phone) = 0
			begin
				RAISERROR('Phone is invalid', 14, 1)				
			end

			if dbo.checkFormatMail(@email) = 0
			begin
				RAISERROR('Mail is invalid', 14, 1)				
			end

			if dbo.checkFormatDate(@registrationDateClient) = 0
			begin
				RAISERROR('Registration Date is invalid', 14, 1)				
			end

			if dbo.checkFormatNumber(@active) = 0 and (not @active like '%[01]')
			begin
				RAISERROR('Active has to be 0 or 1', 14, 1)				
			end

			if dbo.checkFormatNumber(@cgid) = 0
			begin
				RAISERROR('Client Group ID is not a number', 14, 1)				
			end

			insert into Clients values(@clientCode, @firstName, @secondName, @cnp, @ci_serie, @ci, @address, @city, @district, @phone, @email, @registrationDateClient, @cgid, @active, @mentionsClient)
			print 'Insert client complet'
			commit tran
			select 'Transaction committed'
		end try

		begin catch
			rollback tran
			select 'Client transaction rollbacked'
		end catch
	end