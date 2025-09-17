SELECT
    e.first_name,
    e.last_name,
    e.email,
    e.office_id AS employee_office,
    o.office_id AS office_table_id
FROM Employees e
INNER JOIN offices o
ON e.office_id = o.office_id;

SELECT
     Product_name,
     Product_line,
     Product_vendor
FROM Products
LEFT JOIN ProductLine
ON Products.product_line = ProductLine.product_line;

SELECT
    ordered_date,
    shipped_date,
    status,
    customer_id
FROM Orders 
RIGHT JOIN Customers
ON Orders.customer_id = Customers.customer_id
WHERE order_id > 10;
