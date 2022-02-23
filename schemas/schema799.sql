DROP DATABASE IF EXISTS "schema799";
CREATE DATABASE "schema799";
USE "schema799";
CREATE TABLE "product_catalog" (
	"itemid" VARCHAR,
	"description" TEXT,
	"name" VARCHAR,
	"price" FLOAT8,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "orders" (
	"orderid" INT8,
	"customeremail" VARCHAR,
	"customername" VARCHAR,
	"discount" FLOAT8,
	"ordervalue" FLOAT8,
	"retailprice" FLOAT8,
	"shippingdiscount" FLOAT8,
	"shippingfee" FLOAT8,
	 PRIMARY KEY ("orderid")
);

CREATE TABLE "order_items" (
	"id" INT8,
	"productid" VARCHAR,
	"quantity" INT4,
	"order_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk2bff474f65938e8" FOREIGN KEY ("order_id") REFERENCES "orders" ("orderid")
);

CREATE TABLE "inventory" (
	"itemid" VARCHAR,
	"link" VARCHAR,
	"location" VARCHAR,
	"quantity" INT4,
	 PRIMARY KEY ("itemid")
);
