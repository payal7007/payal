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
CREATE TRIGGER UpdateBalancestoTrade
ON Trades
AFTER INSERT
AS
BEGIN

    -- Update buyer's balance
    UPDATE Balances
    SET amount = amount - (select quantity from inserted) *(select price from inserted),
        lastUpdated = GETDATE()
    WHERE userID = (select buyerUserID from inserted);

    -- Update seller's balance
    UPDATE Balances
    SET amount = amount + (select quantity from inserted) *(select price from inserted),
        lastUpdated = GETDATE()
    WHERE userID = (select sellerUserID from inserted);
END

GO
--select * from Stocks
--select * from Trades
--delete from Trades where tradeID between 7 and 10

--INSERT INTO Trades VALUES ( 1, 2, 1, 5, 150.55,getdate())
