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
CREATE TRIGGER UpdateLastTradedPrice
ON Trades
AFTER INSERT
AS
BEGIN
    DECLARE @StockID INT, @Price DECIMAL(18, 2);
    
    SELECT @StockID = stockID, @Price = price
    FROM inserted;
    
    UPDATE PriceHistory
    SET closePrice = @Price
    WHERE stockID = @StockID
    AND tradeDate = (SELECT MAX(tradeDate) FROM Trades WHERE stockID = @StockID);
END;
GO
--INSERT INTO Trades values ( 1, 1, 1, 5, 160.00, getdate())
--select * from PriceHistory
--select * from Trades
--use stockMarketDB3