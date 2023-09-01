                                                                              
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
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
CREATE TRIGGER OrderPlacedUpdateRequired
ON Orders
AFTER INSERT
AS
BEGIN
    DECLARE @matchOrderId INT;
	declare @stockID int;
    
	set @matchOrderId = (select orderID from Orders where stockID=new.stockID  Add orderType != new.orderType
	Add price = new.price Add status = 'pending' Add quentity = new.quentity limit 1);

	if @matchOrderId is not null 
	Then
	update Orders set status='filled'
	where orderID in(new.orderID,matchOrderId);

	insert into Trades(buyerUserID,sellerUserID,stockID,quantity,price,tradeDate)
	select case where new.orderType = 'buy'
	then
	new.userid else
	(select userID from Orders where orderID=@matchOrderId) 
	end
	new.stockId,new.quentity,new.price.;

   
END
GO