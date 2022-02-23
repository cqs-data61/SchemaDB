DROP DATABASE IF EXISTS "schema1020";
CREATE DATABASE "schema1020";
USE "schema1020";
CREATE TABLE "sizes" (
	"id" INT,
	"name" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sequelizemeta" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "rols" (
	"id" INT,
	"name" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" INT,
	"name" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "colors" (
	"id" INT,
	"name" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"image" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brands" (
	"id" INT,
	"name" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"model" VARCHAR,
	"desc1" TEXT,
	"desc2" TEXT,
	"image1" VARCHAR,
	"image2" VARCHAR,
	"image3" VARCHAR,
	"image4" VARCHAR,
	"keywords" TEXT,
	"stock" INT,
	"price" DECIMAL,
	"discount" INT,
	"cuotas" INT,
	"activate" INT,
	"brandid" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "products_ibfk_1" FOREIGN KEY ("brandid") REFERENCES "brands" ("id")
);

CREATE TABLE "sizeproducts" (
	"id" INT,
	"productid" INT,
	"sizeid" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "sizeproducts_ibfk_2" FOREIGN KEY ("sizeid") REFERENCES "sizes" ("id"),
	 CONSTRAINT "sizeproducts_ibfk_1" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);

CREATE TABLE "colorproducts" (
	"id" INT,
	"productid" INT,
	"colorid" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "colorproducts_ibfk_2" FOREIGN KEY ("colorid") REFERENCES "colors" ("id"),
	 CONSTRAINT "colorproducts_ibfk_1" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);

CREATE TABLE "categoryproducts" (
	"id" INT,
	"productid" INT,
	"categoryid" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "categoryproducts_ibfk_2" FOREIGN KEY ("categoryid") REFERENCES "categories" ("id"),
	 CONSTRAINT "categoryproducts_ibfk_1" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);

CREATE TABLE "addresses" (
	"id" INT,
	"street" VARCHAR,
	"number" INT,
	"apt" INT,
	"city" VARCHAR,
	"country" VARCHAR,
	"zipcode" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"addressid" INT,
	"image" VARCHAR,
	"rolid" INT,
	"genreid" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_ibfk_3" FOREIGN KEY ("genreid") REFERENCES "genres" ("id"),
	 CONSTRAINT "users_ibfk_2" FOREIGN KEY ("rolid") REFERENCES "rols" ("id"),
	 CONSTRAINT "users_ibfk_1" FOREIGN KEY ("addressid") REFERENCES "addresses" ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"status" VARCHAR,
	"payment" VARCHAR,
	"userid" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orders_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "orderproducts" (
	"id" INT,
	"productid" INT,
	"orderid" INT,
	"quantity" INT,
	"total" DECIMAL,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orderproducts_ibfk_1" FOREIGN KEY ("productid") REFERENCES "products" ("id"),
	 CONSTRAINT "orderproducts_ibfk_2" FOREIGN KEY ("orderid") REFERENCES "orders" ("id")
);
