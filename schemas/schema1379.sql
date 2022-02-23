DROP DATABASE IF EXISTS "schema1379";
CREATE DATABASE "schema1379";
USE "schema1379";
CREATE TABLE "shopping" (
	"id" INT,
	"car_initial" VARCHAR,
	"car_number" INTEGER,
	"car_type" VARCHAR,
	"invoice_number" VARCHAR,
	"invoice_date" DATE,
	"detail_source" VARCHAR,
	"billing_party" VARCHAR,
	"account_date" DATE,
	"arrival_date" DATE,
	"repair_date" DATE,
	"splc" INT,
	"load_indicator" VARCHAR,
	"defect_card" VARCHAR,
	"defect_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "repair_line" (
	"shopping_id" INT,
	"line_number" INT,
	"location" VARCHAR,
	"quantity" INT,
	"condition_code" INT,
	"applied" VARCHAR,
	"description" VARCHAR,
	"removed" VARCHAR,
	"why_made" INT,
	"responsability" INT,
	"labor_charge" FLOAT,
	"material_charge" FLOAT,
	"material_sign" VARCHAR,
	 PRIMARY KEY ("shopping_id","line_number"),
	 CONSTRAINT "fkeycon_repair_line_to_shopping" FOREIGN KEY ("shopping_id") REFERENCES "shopping" ("id")
);
