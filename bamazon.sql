CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR(50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price DECIMAL(10,4) NOT NULL,
stock_quantity INT(10) NOT NULL,
primary key (item_id)
);


INSERT INTO products(ProductName, DepartmentName, Price, StockQuantity)
VALUES("Apple", "Produce", "1.99","100"),
				("Grapes", "Produce", "4.85", "99"),
                ("Bread", "Bakery", "2.00", "15")





SELECT * FROM bamazon.products;
