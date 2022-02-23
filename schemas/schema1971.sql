DROP DATABASE IF EXISTS "schema1971";
CREATE DATABASE "schema1971";
USE "schema1971";
CREATE TABLE "storage" (
	"ingredientname" VARCHAR,
	"amount" INT,
	"unit" VARCHAR,
	 PRIMARY KEY ("ingredientname")
);

CREATE TABLE "storageupdates" (
	"storage_id" INT,
	"ingredientname" VARCHAR,
	"amount" INT,
	"updatetime" DATETIME,
	 PRIMARY KEY ("storage_id"),
	 CONSTRAINT "fkeycon_storageupdates_to_storage" FOREIGN KEY ("ingredientname") REFERENCES "storage" ("ingredientname")
);

CREATE TABLE "customers" (
	"customer_id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "orders" (
	"order_id" INT,
	"customer_id" INT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fkeycon_orders_to_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id")
);

CREATE TABLE "recipes" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "pallets" (
	"pallet_id" INT,
	"cookie" VARCHAR,
	"order_id" INT,
	"production_date" DATETIME,
	"delivereddate" DATETIME,
	"blocked" BOOLEAN,
	"location" VARCHAR,
	 PRIMARY KEY ("pallet_id"),
	 CONSTRAINT "fkeycon_pallets_to_recipes" FOREIGN KEY ("cookie") REFERENCES "recipes" ("name")
);

CREATE TABLE "ingredientinrecipes" (
	"cookie" VARCHAR,
	"ingredientname" VARCHAR,
	"quantity" INT,
	"unit" VARCHAR,
	 PRIMARY KEY ("cookie","ingredientname"),
	 CONSTRAINT "fkeycon_ingredientinrecipes_to_recipes" FOREIGN KEY ("cookie") REFERENCES "recipes" ("name")
);
