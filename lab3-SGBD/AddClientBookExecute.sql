USE [BookLibrary]
GO
/****** Object:  StoredProcedure [dbo].[mainLab3SGBD]    Script Date: 5/2/2018 7:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[mainLab3SGBD]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	execute AddClientBook '5788', 'asa', 'asaf', '2970613060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '2017-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 1997, 'Cluj', 'nada', '2017-08-09', 1, 1, 1, 1, 1, 
							'2017-08-09', '2017-08-09', 'asa'
	execute AddClientBook '5788', 'asa', 'asaf', '2970613A060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '20817-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 1997, 'Cluj', 'nada', '2017-08-09', 1, 1, 1, 1, 1, 
							'2017-08-09', '2017-08-09', 'asa'
	execute AddClientBook '5788', 'asa', 'asaf', '2970613060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '2017-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 199, 'Cluj', 'nada', '2017-08-09', 1, 1, 15, 1, 1, 
							'2017-08-09', '2017-08-09', 'asa'
	execute AddClientBook '5788', 'asa', 'asaf', '2970613060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '2017-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 1997, 'Cluj', 'nada', '2017-08-09', 1, 1, 1, 1, 1, 
							'2017-08-09', '2017-08-090', 'asa'

	execute AddClientBook2 '5788', 'asa', 'asaf', '2970613060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '2017-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 1997, 'Cluj', 'nada', '2017-08-09', 1, 1, 1, 1, 1, 
							'2017-08-09', '2017-08-09', 'asa'
	execute AddClientBook2 '5788', 'asa', 'asaf', '2970613A060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '20817-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 1997, 'Cluj', 'nada', '2017-08-09', 1, 1, 1, 1, 1, 
							'2017-08-09', '2017-08-09', 'asa'
	execute AddClientBook2 '5788', 'asa', 'asaf', '2970613060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '2017-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 199, 'Cluj', 'nada', '2017-08-09', 1, 1, 15, 1, 1, 
							'2017-08-09', '2017-08-09', 'asa'
	execute AddClientBook2 '5788', 'asa', 'asaf', '2970613060024', '456', 'gfggsg', 'kjskjdsk', 'ClujNapoca', 'Cluj', '0752610817', 'faf@da', '2017-08-09', '4', '0', 'dajgd',
							234, '12344', 'carte', 'autor', 2, 1997, 'Cluj', 'nada', '2017-08-09', 1, 1, 1, 1, 1, 
							'2017-08-09', '2017-08-090', 'asa'


END
