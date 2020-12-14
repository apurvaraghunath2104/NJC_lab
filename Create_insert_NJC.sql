 /*Setup a local database, create a table, insert some records using any database client*/
 
 CREATE DATABASE IF NOT EXISTS store;
 USE store;
 
 CREATE TABLE IF NOT EXISTS product (
	 product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	 product_name  VARCHAR(50) NOT NULL,
	 quantity   INT DEFAULT 0,
	 price      DECIMAL(5,2)  NOT NULL);
     
     
insert into product (product_id, product_name, quantity, price) values (1, 'Vanilla Beans', 2, 399.19);
insert into product (product_id, product_name, quantity, price) values (2, 'Rice - Wild', 11, 319.53);
insert into product (product_id, product_name, quantity, price) values (3, 'Orange Roughy 6/8 Oz', 5, 341.01);
insert into product (product_id, product_name, quantity, price) values (4, 'Mushroom - Chanterelle, Dry', 9, 760.8);
insert into product (product_id, product_name, quantity, price) values (5, 'Bread - Italian Sesame Poly', 11, 630.08);
insert into product (product_id, product_name, quantity, price) values (6, 'Cheese Cloth No 100', 15, 687.0);
insert into product (product_id, product_name, quantity, price) values (7, 'Sobe - Cranberry Grapefruit', 9, 400.19);
insert into product (product_id, product_name, quantity, price) values (8, 'Cup - 8oz Coffee Perforated', 15, 914.7);
insert into product (product_id, product_name, quantity, price) values (9, 'Wine - Chenin Blanc K.w.v.', 9, 49.65);
insert into product (product_id, product_name, quantity, price) values (10, 'Cake - Mini Potato Pancake', 12, 23.09);
insert into product (product_id, product_name, quantity, price) values (11, 'Sauce - Rosee', 13, 313.17);
insert into product (product_id, product_name, quantity, price) values (12, 'Flour - Rye', 4, 351.24);
insert into product (product_id, product_name, quantity, price) values (13, 'Yeast Dry - Fermipan', 7, 535.49);
insert into product (product_id, product_name, quantity, price) values (14, 'Triple Sec - Mcguinness', 2, 992.23);
insert into product (product_id, product_name, quantity, price) values (15, 'Wine - Niagara Peninsula Vqa', 14, 275.54);
insert into product (product_id, product_name, quantity, price) values (16, 'Tortillas - Flour, 8', 10, 336.97);
insert into product (product_id, product_name, quantity, price) values (17, 'Wine - Chateauneuf Du Pape', 12, 159.08);
insert into product (product_id, product_name, quantity, price) values (18, 'Dawn Professionl Pot And Pan', 2, 162.64);
insert into product (product_id, product_name, quantity, price) values (19, 'Soup - Campbells, Minestrone', 1, 273.83);
insert into product (product_id, product_name, quantity, price) values (20, 'Puree - Strawberry', 9, 953.03);
insert into product (product_id, product_name, quantity, price) values (21, 'Oil - Hazelnut', 8, 559.2);
insert into product (product_id, product_name, quantity, price) values (22, 'Cheese - Marble', 9, 753.77);
insert into product (product_id, product_name, quantity, price) values (23, 'Dr. Pepper - 355ml', 15, 814.05);
insert into product (product_id, product_name, quantity, price) values (24, 'Juice - Orange, Concentrate', 6, 475.44);
insert into product (product_id, product_name, quantity, price) values (25, 'Glove - Cutting', 4, 303.82);

/*Write SQL to retrieve records from the above table using the same database client*/

select * from product;

select product_id, product_name  
from product
where quantity = 15;

select count(product_id) as prod_count
from product
where price < 100; 