DROP DATABASE IF EXISTS "schema620";
CREATE DATABASE "schema620";
USE "schema620";
CREATE TABLE "users" (
	"id" INT,
	"type" ENUM,
	"username" STRING,
	"pwhash" STRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"userid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_orders_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"name" STRING,
	"price" INT,
	"description" TEXT,
	"quantity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cartitem" (
	"id" INT,
	"quantity" INT,
	"productid" INT,
	"orderid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_cartitem_to_orders" FOREIGN KEY ("orderid") REFERENCES "orders" ("id"),
	 CONSTRAINT "fkeycon_cartitem_to_products" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);
