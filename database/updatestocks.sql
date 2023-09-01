-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER updateStock1
ON Orders
AFTER insert
AS
BEGIN
    SET NOCOUNT ON;

	declare @orderType varchar(10);
	DECLARE @quantity int;
	declare @stockID int;

	if @orderType = 'sell'
	THEN
	update Stocks set quantity  = quantity - @quantity
	where stockID = @stockID;
	end IF;

GO

--INSERT INTO Orders VALUES( 2, 2, 'Sell', 5, 200.50,getdate() ,  'Pending')
--select * from Stocks
