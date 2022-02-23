DROP DATABASE IF EXISTS "schema2441";
CREATE DATABASE "schema2441";
USE "schema2441";
CREATE TABLE "suppliers" (
	"supplierid" SERIAL,
	"name" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("supplierid")
);

CREATE TABLE "products" (
	"productid" SERIAL,
	"supplierid" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"price" INTEGER,
	 PRIMARY KEY ("productid"),
	 CONSTRAINT "products_fk0" FOREIGN KEY ("supplierid") REFERENCES "suppliers" ("supplierid")
);

CREATE TABLE "deals" (
	"dealid" SERIAL,
	"topseller" BOOLEAN,
	"toprated" BOOLEAN,
	"trending" BOOLEAN,
	"newestarrival" BOOLEAN,
	"productid" INTEGER,
	 PRIMARY KEY ("dealid"),
	 CONSTRAINT "deals_fk0" FOREIGN KEY ("productid") REFERENCES "products" ("productid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"email" TEXT,
	"password" TEXT,
	"createdat" TIMESTAMP,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "addresses" (
	"addressid" SERIAL,
	"userid" INTEGER,
	"address" TEXT,
	"address2" TEXT,
	"city" TEXT,
	"state" TEXT,
	"zipcode" TEXT,
	"firstname" TEXT,
	"lastname" TEXT,
	 PRIMARY KEY ("addressid"),
	 CONSTRAINT "addresses_fk0" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "orders" (
	"orderid" SERIAL,
	"userid" INTEGER,
	"addressid" INTEGER,
	"status" TEXT,
	"createdat" TIMESTAMP,
	 PRIMARY KEY ("orderid"),
	 CONSTRAINT "orders_fk0" FOREIGN KEY ("userid") REFERENCES "users" ("userid"),
	 CONSTRAINT "orders_fk1" FOREIGN KEY ("addressid") REFERENCES "addresses" ("addressid")
);

CREATE TABLE "orderitems" (
	"orderitemid" SERIAL,
	"orderid" INTEGER,
	"productid" INTEGER,
	 PRIMARY KEY ("orderitemid"),
	 CONSTRAINT "orderitems_fk1" FOREIGN KEY ("productid") REFERENCES "products" ("productid"),
	 CONSTRAINT "orderitems_fk0" FOREIGN KEY ("orderid") REFERENCES "orders" ("orderid")
);
