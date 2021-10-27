-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Makes it so all of the following code will affect ecommerce_db
USE ecommerce_db;

CREATE TABLE category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL, -- add how to validate the value is a decimal
    stock INT NOT NULL, -- set default value to ten and validate the value is numeric
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE SET NULL-- references the Category model's id
);

CREATE TABLE tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(30)
);

CREATE producttag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT, 
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE SET NULL, -- references the Product model's id
    tag_id INT, 
    FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE SET NULL -- references the Tag model's id
);