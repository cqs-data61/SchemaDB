DROP DATABASE IF EXISTS "schema2241";
CREATE DATABASE "schema2241";
USE "schema2241";
CREATE TABLE "product_catalog" (
	"itemid" VARCHAR,
	"description" TEXT,
	"name" VARCHAR,
	"price" FLOAT,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "orders" (
	"orderid" BIGINT,
	"customeremail" VARCHAR,
	"customername" VARCHAR,
	"discount" FLOAT,
	"ordervalue" FLOAT,
	"retailprice" FLOAT,
	"shippingdiscount" FLOAT,
	"shippingfee" FLOAT,
	 PRIMARY KEY ("orderid")
);

CREATE TABLE "order_items" (
	"id" INT,
	"productid" VARCHAR,
	"quantity" INT,
	"order_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk2bff474f65938e8" FOREIGN KEY ("order_id") REFERENCES "orders" ("orderid")
);

CREATE TABLE "inventory" (
	"itemid" VARCHAR,
	"link" VARCHAR,
	"location" VARCHAR,
	"quantity" INT,
	 PRIMARY KEY ("itemid")
);
