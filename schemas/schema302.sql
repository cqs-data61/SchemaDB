DROP DATABASE IF EXISTS "schema302";
CREATE DATABASE "schema302";
USE "schema302";
CREATE TABLE "customer" (
	"customername" VARCHAR,
	"customeraddress" VARCHAR,
	 PRIMARY KEY ("customername")
);

CREATE TABLE "storage" (
	"ingredientname" VARCHAR,
	"stockamount" INTEGER,
	"unit" VARCHAR,
	"amountdelivered" INTEGER,
	"timedelivered" DATE,
	 PRIMARY KEY ("ingredientname")
);

CREATE TABLE "cookies" (
	"cookiename" VARCHAR,
	 PRIMARY KEY ("cookiename")
);

CREATE TABLE "pallets" (
	"palletnbr" INTEGER,
	"cookiename" VARCHAR,
	"timeproduced" DATETIME,
	"deliveredtime" DATETIME,
	"blockedornot" BOOLEAN,
	 PRIMARY KEY ("palletnbr"),
	 CONSTRAINT "fkeycon_pallets_to_cookies" FOREIGN KEY ("cookiename") REFERENCES "cookies" ("cookiename")
);

CREATE TABLE "orders" (
	"ordernbr" INTEGER,
	"ordertime" DATE,
	"deliveredtime" DATETIME,
	"palletnbr" INTEGER,
	"customername" VARCHAR,
	 PRIMARY KEY ("ordernbr"),
	 CONSTRAINT "fkeycon_orders_to_customer" FOREIGN KEY ("customername") REFERENCES "customer" ("customername"),
	 CONSTRAINT "fkeycon_orders_to_pallets" FOREIGN KEY ("palletnbr") REFERENCES "pallets" ("palletnbr")
);

CREATE TABLE "orderspecification" (
	"quantity" INTEGER,
	"ordernbr" INTEGER,
	"cookiename" VARCHAR,
	 CONSTRAINT "fkeycon_orderspecification_to_cookies" FOREIGN KEY ("cookiename") REFERENCES "cookies" ("cookiename"),
	 CONSTRAINT "fkeycon_orderspecification_to_orders" FOREIGN KEY ("ordernbr") REFERENCES "orders" ("ordernbr")
);

CREATE TABLE "recipe" (
	"amount" INTEGER,
	"cookiename" VARCHAR,
	"ingredientname" VARCHAR,
	 CONSTRAINT "fkeycon_recipe_to_storage" FOREIGN KEY ("ingredientname") REFERENCES "storage" ("ingredientname"),
	 CONSTRAINT "fkeycon_recipe_to_cookies" FOREIGN KEY ("cookiename") REFERENCES "cookies" ("cookiename")
);
