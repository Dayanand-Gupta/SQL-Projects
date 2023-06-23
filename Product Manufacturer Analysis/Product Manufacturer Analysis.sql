use ftips;

create table product(
Code int(10),
Name varchar(20),
Price int(10),
Manufacturer int(10)
)

insert into product (Code, Name, Price, Manufacturer) values
(1, "Hard drive", 240, 5),
(2, "Memory", 120, 6),
(3, "Zip drive", 150, 4),
(4, "Floppy disk", 5, 6),
(5, "Monitor", 240, 1),
(6, "DVD drive", 180, 2),
(7, "CD drive", 90, 2),
(8, "Printer", 270, 3),
(9, "Toner cartridge", 66, 3),
(10, "DVD burner", 180,2);

select * from product;

create table Manufactures(
code int(10),
Name varchar(20)
);

insert into manufactures values
(1, "sony"),
(2, "Creative Labs"),
(3, "Hewlett Packard"),
(4, "Iomega"),
(5, "Fujitsu"),
(6, "Winchester");

select * from manufactures;

#1. Select the names of all the products in the store
select name from product;

#2. Select the names and the prices of all the products in the store
select name, price from product;

#3. Select the name of the products with a price less than or equal to $200.
select name, price from product where price <= 200;

#4. Select all the products with a price between $60 and $120.
select * from product where price between 60 and 120;

#5. Select the name and price in cents (i.e. the price must be multiplied by 100).
select name, price*100 New_Price from product;

#6. Compute the average price of all the products
select avg(price) from product;

#7. Compute the average price of all products with manufacturer code equal to 2
select avg(price) from product where Manufacturer = 2;

#8. Compute the number of products with a price larger than or equal to $180
select count(code) from product where price >= 180;

#9. Select the name and price of all products with a price larger than or equal to $180, and sort first by price
/* (in descending order), and then by name (in ascending order) */
select name, price from product where price >= 180 order by price desc, name;

#10. Select all the data from the products, including all the data for each product's manufacturer
select * from product join manufactures on product.manufacturer = manufactures.code;

#11. Select the product name, price, and manufacturer name of all the products.
select product.name, price, manufactures.name from product join manufactures
on product.Manufacturer = manufactures.code;

#12. Select the average price of each manufacturer's products, showing only the manufacturer's code.
select manufacturer, avg(price) from product group by Manufacturer;

#13. Select the average price of each manufacturer's products, showing the manufacturer's name. 
select manufactures.name, avg(product.price) from product join manufactures
on product.Manufacturer = manufactures.code group by product.Manufacturer;

#14. Select the names of manufacturer whose products have an average price larger than or equal to $150.
select manufactures.name, avg(product.price) from product join manufactures
on product.manufacturer = manufactures.code group by product.manufacturer having avg(product.price) >= 150;

#15. Select the name and price of the cheapest product. 
select name, price from product where price in (select min(price) from product);

#16. Select the name of each manufacturer along with the name and price of its most expensive product.
select product.name, max(price), manufactures.name from product join manufactures
on product.manufacturer = manufactures.code group by product.Manufacturer;

#17. Add a new product: Loudspeakers, $70, manufacturer 2. 
insert into product (code, Name, price, manufacturer) values
(11, "Loudspeakers", 70, 2);

#18.  Update the name of product 8 to "Laser Printer". 
update product set name = "Laser Printer" where code = 8;

#19.  Apply a 10% discount to all products. 
select *, price*0.9 Offer_price from product;

#20.  Apply a 10% discount to all products with a price larger than or equal to $120. 
update product set price = price*0.9 where price >= 120;

