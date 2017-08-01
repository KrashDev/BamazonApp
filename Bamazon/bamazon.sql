create database Bamazon;

use Bamazon;
CREATE TABLE products (
    id integer(30)auto_increment not null,
    product_name varchar(30) not null,
    department_name varchar(30) not null,
    price integer(10) not null,
    stock_quantity integer(10) not null,
    primary key(id)
    );
    
	insert into products(product_name, department_name, price, stock_quantity)
    values("Swiffer Mop", "Home and Kitchen", 14, 412);
    select * from products;
    
	insert into products(product_name, department_name, price, stock_quantity)
    values("Lightbulb", "Tools and Home Improvement", 8, 9999), ("Spatula", "Home and Kitchen", 12, 212), ("Hary Potter Book", "Books", 10, 135), ("Schwinn Bicycle", "Outdoor REcreation", 175, 45), ("Chaco Sandals", "Clothing, Shoes and Jewelry", 70, 32), ("Swatch Watch", "Clothing, Shoes and Jewelry", 38, 197), ("Sargento Cheese", "Grocery and Gourmet Food", 4, 87), ("Canon Printer", "Printers", 65, 47), ("Spiral Notebook", "Office Products", 3, 2105);
    select * from products;