DROP DATABASE IF EXISTS "schema1514";
CREATE DATABASE "schema1514";
USE "schema1514";
CREATE TABLE "rates" (
	"id_rate" INT,
	"value" DOUBLE,
	"type_rate" VARCHAR,
	 PRIMARY KEY ("id_rate")
);

CREATE TABLE "users" (
	"id_user" INT,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"type_user" INT,
	 PRIMARY KEY ("id_user")
);

CREATE TABLE "brands" (
	"id_brand" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id_brand")
);

CREATE TABLE "models" (
	"id_model" INT,
	"id_brand" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id_model"),
	 CONSTRAINT "fk_model_brand" FOREIGN KEY ("id_brand") REFERENCES "brands" ("id_brand")
);

CREATE TABLE "meters" (
	"id_meter" INT,
	"id_model" INT,
	"serial_number" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id_meter"),
	 CONSTRAINT "fk_meter_model" FOREIGN KEY ("id_model") REFERENCES "models" ("id_model")
);

CREATE TABLE "addresses" (
	"id_address" INT,
	"id_meter" INT,
	"id_user" INT,
	"id_rate" INT,
	"address" VARCHAR,
	 PRIMARY KEY ("id_address"),
	 CONSTRAINT "fk_address_meter" FOREIGN KEY ("id_meter") REFERENCES "meters" ("id_meter"),
	 CONSTRAINT "fk_address_rate" FOREIGN KEY ("id_rate") REFERENCES "rates" ("id_rate"),
	 CONSTRAINT "fk_address_user" FOREIGN KEY ("id_user") REFERENCES "users" ("id_user")
);

CREATE TABLE "bills" (
	"id_bill" INT,
	"id_address" INT,
	"id_meter" INT,
	"id_user" INT,
	"initial_measurement" DATETIME,
	"final_measurement" DATETIME,
	"total_consumption" DOUBLE,
	"total_payable" DOUBLE,
	"expiration" DATETIME,
	"date" DATETIME,
	"payed" BOOL,
	 PRIMARY KEY ("id_bill"),
	 CONSTRAINT "fk_bil_meter" FOREIGN KEY ("id_meter") REFERENCES "meters" ("id_meter"),
	 CONSTRAINT "fk_bill_user" FOREIGN KEY ("id_user") REFERENCES "users" ("id_user"),
	 CONSTRAINT "fk_bill_address" FOREIGN KEY ("id_address") REFERENCES "addresses" ("id_address")
);

CREATE TABLE "measurements" (
	"id_measurement" INT,
	"id_meter" INT,
	"id_bill" INT,
	"date" DATETIME,
	"quantity_kw" DOUBLE,
	"price_measurement" DOUBLE,
	 PRIMARY KEY ("id_measurement"),
	 CONSTRAINT "fk_measurement_meter" FOREIGN KEY ("id_meter") REFERENCES "meters" ("id_meter"),
	 CONSTRAINT "fk_measurement_bill" FOREIGN KEY ("id_bill") REFERENCES "bills" ("id_bill")
);
