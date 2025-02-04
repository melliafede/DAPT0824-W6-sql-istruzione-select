use AdventureWorksDW;

select * from dimproduct;

select	ProductKey, ProductAlternateKey, EnglishProductName,
		Color, StandardCost, FinishedGoodsFlag
from dimproduct
where FinishedGoodsFlag = 1;

select ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice, (ListPrice - StandardCost) as Markup
from dimproduct
where ProductAlternateKey like "FR%" or ProductAlternateKey like "BK%"
order by ProductKey;

select ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice, (ListPrice - StandardCost) as Markup
from dimproduct
where FinishedGoodsFlag = 1 and ListPrice between 1000 and 2000
order by ProductKey;

select * from dimemployee;

select EmployeeKey, FirstName, LastName, Title, SalesPersonFlag
from dimemployee
where SalespersonFlag = 1;

select salesordernumber, orderdate, productkey, orderQuantity, UnitPrice, TotalProductCost, SalesAmount, (SalesAmount - TotalProductCost) as Profitto 
from factresellersales
where ProductKey in (597, 598, 477, 214) and OrderDate > "2020-01-01"
order by OrderDate;
