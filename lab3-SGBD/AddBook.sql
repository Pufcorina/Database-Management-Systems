USE [BookLibrary]
GO
/****** Object:  StoredProcedure [dbo].[AddBook]    Script Date: 5/2/2018 7:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[AddBook]
	-- Add the parameters for the stored procedure here
	@bookCode int,
	@isbn varchar(50),
	@title varchar(200),
	@author varchar(200),
	@volume int,
	@appearanceYear int,
	@appearancePlace varchar(100),
	@mentionsBook varchar(200),
	@registrationDateBook date,
	@pid int,
	@gid int,
	@bcid int,
	@lid int,
	@did int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 begin tran
		begin try
			if dbo.checkFormatNumber(@bookCode) = 0
			begin
				RAISERROR('Book code is not a number', 14, 1)				
			end

			if dbo.checkFormatName(@title) = 0
			begin
				RAISERROR('Title is invalid', 14, 1)				
			end

			if dbo.checkFormatName(@author) = 0
			begin
				RAISERROR('Author is invalid', 14, 1)				
			end
			
			if dbo.checkFormatNumber(@volume) = 0
			begin
				RAISERROR('Volume is not a number', 14, 1)				
			end

			if dbo.checkFormatNumber(@appearanceYear) = 0
			begin
				RAISERROR('Appearance Year is not a number', 14, 1)				
			end

			if dbo.checkFormatName(@appearancePlace) = 0
			begin
				RAISERROR('Appearance Place is invalid', 14, 1)				
			end

			if dbo.checkFormatDate(@registrationDateBook) = 0
			begin
				RAISERROR('Registration Date is invalid', 14, 1)				
			end
			
			if dbo.checkFormatNumber(@pid) = 0
			begin
				RAISERROR('Publishing ID is not a number', 14, 1)				
			end

			if dbo.checkFormatNumber(@gid) = 0
			begin
				RAISERROR('Group ID is not a number', 14, 1)				
			end

			if dbo.checkFormatNumber(@bcid) = 0
			begin
				RAISERROR('Book Group ID is not a number', 14, 1)				
			end

			if dbo.checkFormatNumber(@lid) = 0
			begin
				RAISERROR('Language ID is not a number', 14, 1)				
			end

			if dbo.checkFormatNumber(@did) = 0
			begin
				RAISERROR('Domain ID is not a number', 14, 1)				
			end

			insert into Books values(@bookCode, @isbn, @title, @author, @volume, @appearanceYear, @appearancePlace, @mentionsBook, @registrationDateBook, @pid, @gid, @bcid, @lid, @did)
			print 'Insert book complet'
			commit tran
			select 'Transaction committed'
		end try

		begin catch
			rollback tran
			select 'Book transaction rollbacked'
			return 1
		end catch
		return 0
	end