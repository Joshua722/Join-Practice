USE northwind;

-- List the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.
-- SELECT ProductID, ProductName, UnitPrice, CategoryName
-- FROM products
-- JOIN categories
-- ON categories.CategoryID = products.CategoryID
-- ORDER BY CategoryName,ProductName;

-- List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
-- SELECT ProductID, ProductName,UnitPrice,CompanyName
-- FROM products
-- JOIN suppliers
-- ON suppliers.SupplierID = products.SupplierID
-- WHERE UnitPrice > 75
-- ORDER BY ProductName;

-- List the product id, product name, unit price, supplier name, and category name of every product. Order by product name.
-- SELECT ProductID, ProductName,UnitPrice,suppliers.CompanyName,categories.CategoryName
-- FROM products
-- JOIN suppliers
-- ON suppliers.SupplierID = products.SupplierID
-- JOIN categories 
-- ON products.CategoryID = categories.CategoryID
-- ORDER BY ProductName;

-- What is the product name and categories of the most expensive products?
-- SELECT ProductName, CategoryName
-- FROM products
-- JOIN categories
-- ON categories.CategoryID = products.CategoryID
-- WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products)
-- ORDER BY ProductName;

-- List the order id,ship name,ship address, and shipping company name of every order that shuipped to Germany
SELECT OrderID,ShipVia,ShipAddress,ShipName
FROM orders
WHERE ShipCountry LIKE "Germany";

-- List the order id, order date,ship name, ship address of all orders that ordered "Sasquatch Ale?"
SELECT OrderID,OrderDate,ShipName,ShipAddress
FROM orders
JOIN orderdetails
ON orderdetails.ProductID = products.ProductID
WHERE ProductID LIKE "%Sasquatch Ale%"
ORDER BY ProductName;