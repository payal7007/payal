-- Users
--use stockMarketDB3
INSERT INTO Users VALUES ( 'jiya', 'jiya@gmail.com', 5000.00, 1)
INSERT INTO Users VALUES ( 'riya',  'riya@gmail.com', 7500.00,2)
select * from Users

INSERT INTO Brokers VALUES ( 'yash')
INSERT INTO Brokers VALUES ( 'riyansh')
select * from Stocks
-- Stocks
INSERT INTO Stocks VALUES(1,'AAPL', 'Apple Inc.', 'Technology', 'Consumer Electronics',50)
INSERT INTO Stocks VALUES(2, 'MSFT', 'Microsoft Corporation',  'Technology', 'Software',10)
-- Orders
use stockMarketDB1
--select * from Trades
 INSERT INTO Orders VALUES   ( 1, 1, 'Buy', 10, 150.25, getdate(),  'Pending')
INSERT INTO Orders VALUES     ( 2, 2, 'Sell', 5, 100.50,getdate() ,  'Pending')

-- Trades
INSERT INTO Trades VALUES ( 1, 2, 1, 5, 150.55,getdate())
INSERT INTO Trades VALUES ( 1, 1, 2, 10, 310.25, getdate())
select * from Portfolio
-- Balances
INSERT INTO Balances VALUES( 1, 4000.00, getdate())
 INSERT INTO Balances values ( 2, 7000.00, getdate())

-- Transactions
INSERT INTO Transactions VALUES ( 1, 1, 'Buy', 10, 150.25, getdate())
INSERT INTO Transactions VALUES ( 2, 2, 'Sell', 5, 300.50, getdate())



-- Portfolio
INSERT INTO Portfolio VALUES ( 1, 1, 150,'profit')
INSERT INTO Portfolio VALUES ( 2, 2, 75 ,'lose')

INSERT INTO Watchlist VALUES ( 1, 2)
INSERT INTO Watchlist VALUES ( 2, 1)

INSERT INTO PriceHistory VALUES ( 1, 145.00, 155.00, 142.50, 152.75, 10000, getdate())
INSERT INTO PriceHistory VALUES ( 1, 153.00, 158.50, 150.25, 157.50, 12000, getdate())


INSERT INTO Exchange VALUES (1, 'AAPL', 'Apple Inc.',  157.50,   120000,   'NSE',getdate())
INSERT INTO Exchange VALUES (2, 'MSFT', 'Microsoft Corporation',  310.25,  85000,  'BSE',getdate())



	
