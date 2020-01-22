SELECT TOP 5 * FROM  [Sales].[SalesOrderHeader]


SELECT MAX([OrderDate]) AS MaxOrderDate,
		MIN([OrderDate]) AS MinOrderDate
FROM  [Sales].[SalesOrderHeader]

select SalesOrderNumber, OrderDate, AccountNumber, SubTotal, TaxAmt, TotalDue, (TaxAmt/SubTotal)*100
from [Sales].[SalesOrderHeader]
where OrderDate between '01/01/2012' and '12/31/2012'
		and TotalDue > 10000
		and Status = 5