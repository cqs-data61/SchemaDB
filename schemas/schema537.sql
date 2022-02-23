DROP DATABASE IF EXISTS "schema537";
CREATE DATABASE "schema537";
USE "schema537";
CREATE TABLE "region" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "supply_chain" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INTEGER,
	"name" VARCHAR,
	"manufacturer" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "region_ref" (
	"id" INTEGER,
	"region_id" INTEGER,
	"product_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_region_ref_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fkeycon_region_ref_to_region" FOREIGN KEY ("region_id") REFERENCES "region" ("id")
);

CREATE TABLE "supply_chain_ref" (
	"id" INTEGER,
	"supply_chain_id" INTEGER,
	"product_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_supply_chain_ref_to_supply_chain" FOREIGN KEY ("supply_chain_id") REFERENCES "supply_chain" ("id"),
	 CONSTRAINT "fkeycon_supply_chain_ref_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
