DROP DATABASE IF EXISTS "schema1840";
CREATE DATABASE "schema1840";
USE "schema1840";
CREATE TABLE "shoppingcart_item" (
	"shoppingcartitemid" INT,
	"shoppingcartlineid" INT,
	"quantity" INT,
	"unitprice" INT,
	"productname" VARCHAR,
	"productclass" VARCHAR
);

CREATE TABLE "shoppingcart_line" (
	"shoppingcartlineid" INT,
	"shoppingcartid" INT
);

CREATE TABLE "shoppingcart" (
	"shoppingcartid" INT
);
