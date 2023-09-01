create database stockMarketDB3
use stockMarketDB3

CREATE TABLE Users (
    userID INT PRIMARY KEY identity,
    userName VARCHAR(50) ,
    email VARCHAR(100) ,
	brokerID INT,
);
CREATE TABLE Brokers (
    brokerID INT PRIMARY KEY identity,
    brokerName VARCHAR(50),
	CommissionRate  decimal(10,2)
    
)

CREATE TABLE Stocks (
    stockID INT PRIMARY KEY identity,
	brokerID INT,
    symbol VARCHAR(10) ,
    stockName VARCHAR(100) ,
    sector VARCHAR(50),
    Industry VARCHAR(50),
	quantity int
)
CREATE TABLE Orders (
    orderID INT PRIMARY KEY identity,
    userID INT ,
    stockID INT,
    orderType VARCHAR(10) ,
    quantity INT ,
    price DECIMAL(18, 2),
    placedDate DATETIME default getdate() ,
    status VARCHAR(20),
    
)

CREATE TABLE Trades (
    tradeID INT PRIMARY KEY identity,
    buyerUserID INT,
    sellerUserID INT,
    stockID INT,
    quantity INT ,
    price DECIMAL(18, 2) ,
    tradeDate DATETIME default getdate(),
   
);
select * from Portfolio
CREATE TABLE Balances (
    balanceID INT PRIMARY KEY identity,
    userID INT,
    amount DECIMAL(18, 2) ,
    lastUpdated DATETIME ,

);

CREATE TABLE Transactions (
    transactionID INT PRIMARY KEY identity,
    userID INT,
    stockID INT,
    transactionType VARCHAR(10) ,
    quantity INT,
    price DECIMAL(10, 2),
    transactionDate DATETIME default getdate()
  
);

CREATE TABLE Portfolio (
    portfolioID INT PRIMARY KEY identity,
    userID INT,
    stockID INT,
    quantity INT ,
	profitLossStatus varchar(20)
);
drop table Exchange
select * from Portfolio
CREATE TABLE Watchlist (
    watchlistID INT PRIMARY KEY identity,
    userID INT,
    stockID INT
);

CREATE TABLE PriceHistory (
    priceHistoryID INT PRIMARY KEY identity,
    stockID INT,
    openPrice DECIMAL(10, 2) ,
    highPrice DECIMAL(10, 2),
    lowPrice DECIMAL(10, 2) ,
    closePrice DECIMAL(10, 2),
    volume INT,
    tradeDate DATETIME 
);
select * from PriceHistory

CREATE TABLE Exchange (
	exchangeId int primary key identity,
    StockID INT,
    symbol VARCHAR(10) ,
    [Name] VARCHAR(10) ,
    LastPrice DECIMAL(10, 2),
    Volume INT,
	exchangeType varchar(10),
	 MarketDate DATETIME default getdate() 
);
select * from Stocks

select * from Orders
select * from Trades
select * from Exchange
