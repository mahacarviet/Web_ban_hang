CREATE DATABASE myshop;
use myshop;

-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin'

-- SELECT product_id, product_name, products.brand_id, products.category_id, model_year, list_price, brand_name, category_name    
-- 							FROM `products` join `brands` on `products`.brand_id = `brands`.brand_id 
-- 							join `categories` on `products`.category_id = `categories`.category_id  
-- 							WHERE product_id = 1;

SELECT brands.brand_id, brand_name, COUNT(products.brand_id) AS Bike
  FROM brands join products where brands.brand_id = products.brand_id
  GROUP BY brands.brand_id;

create table test(
  brand_id INT  PRIMARY KEY ,
  brand_name VARCHAR (255) NOT NULL,
  bike int
  )

drop table test

INSERT INTO test(brand_id, brand_name, bike)
SELECT brands.brand_id, brand_name, COUNT(products.brand_id) AS Bike
  FROM brands join products where brands.brand_id = products.brand_id
  GROUP BY brands.brand_id;

select * from test


select count(brand_id)
from products

-- create tables
CREATE TABLE categories (
  category_id INT PRIMARY KEY ,
  category_name VARCHAR (255) NOT NULL
);

CREATE TABLE brands (
  brand_id INT  PRIMARY KEY ,
  brand_name VARCHAR (255) NOT NULL
);

CREATE TABLE products (
  product_id INT  PRIMARY KEY ,
  product_name VARCHAR (255) NOT NULL,
  list_price DECIMAL (10, 2) NOT NULL,
  infor_product text
);

-- Insert database

INSERT INTO brands(brand_id,brand_name) VALUES(1,'Electra');
INSERT INTO brands(brand_id,brand_name) VALUES(2,'Haro');
INSERT INTO brands(brand_id,brand_name) VALUES(3,'Heller');
INSERT INTO brands(brand_id,brand_name) VALUES(4,'Pure Cycles');
INSERT INTO brands(brand_id,brand_name) VALUES(5,'Ritchey');
INSERT INTO brands(brand_id,brand_name) VALUES(6,'Strider');
INSERT INTO brands(brand_id,brand_name) VALUES(7,'Sun Bicycles');
INSERT INTO brands(brand_id,brand_name) VALUES(8,'Surly');
INSERT INTO brands(brand_id,brand_name) VALUES(9,'Trek');


INSERT INTO categories(category_id,category_name) VALUES(1,'Children Bicycles');
INSERT INTO categories(category_id,category_name) VALUES(2,'Comfort Bicycles');
INSERT INTO categories(category_id,category_name) VALUES(3,'Cruisers Bicycles');
INSERT INTO categories(category_id,category_name) VALUES(4,'Cyclocross Bicycles');
INSERT INTO categories(category_id,category_name) VALUES(5,'Electric Bikes');
INSERT INTO categories(category_id,category_name) VALUES(6,'Mountain Bikes');
INSERT INTO categories(category_id,category_name) VALUES(7,'Road Bikes');


INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Trek 820 - 2016',9,6,2016,379.99);

INSERT INTO products(product_id, product_name, list_price, infor_product) VALUES(1,'Trek 820 - 2016', 100, n'Giới thiệu sản phẩm');
INSERT INTO products(product_id, product_name, list_price, infor_product) VALUES(2,'Trek 820 - 2016', 100, n'Giới thiệu sản phẩm');
INSERT INTO products(product_id, product_name, list_price, infor_product) VALUES(3,'Trek 820 - 2016', 100, n'Giới thiệu sản phẩm');
INSERT INTO products(product_id, product_name, list_price, infor_product) VALUES(4,'Trek 820 - 2016', 100, n'Giới thiệu sản phẩm');












