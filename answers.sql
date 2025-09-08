--> QUESTION 1 
--> This shows employees that have a valid matching office

SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

--> QUESTION 2
--> This ensures all products show up, even if they don’t have details in productlines
 
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

--> QUESTION 3
-->This shows the first 10 orders, even if some customers are not listed.

SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
