DROP DATABASE IF EXISTS "schema804";
CREATE DATABASE "schema804";
USE "schema804";
CREATE TABLE "measurements" (
	"id" INT,
	"electric_meter_id" INT,
	"measure" FLOAT,
	"measure_date_time" DATETIME,
	"price" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "meter_brands" (
	"id" INT,
	"brand_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "meter_models" (
	"id" INT,
	"brand_id" INT,
	"model_name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FL_meter_models_brands" FOREIGN KEY ("brand_id") REFERENCES "meter_brands" ("id")
);

CREATE TABLE "electric_meters" (
	"id" INT,
	"model_id" INT,
	"serial_number" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_electric_meters_meter_models" FOREIGN KEY ("model_id") REFERENCES "meter_models" ("id")
);

CREATE TABLE "user_types" (
	"id" INT,
	"type_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"user_type_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_users_user_types" FOREIGN KEY ("user_type_id") REFERENCES "user_types" ("id")
);

CREATE TABLE "tariff_types" (
	"id" INT,
	"type_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tariffs" (
	"id" INT,
	"tariff_type_id" INT,
	"tariff_value" FLOAT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_tariffs_tariff_types" FOREIGN KEY ("tariff_type_id") REFERENCES "tariff_types" ("id")
);

CREATE TABLE "addresses" (
	"id" INT,
	"tariff_id" INT,
	"electric_meter_id" INT,
	"client_id" INT,
	"street" VARCHAR,
	"address_number" VARCHAR,
	 PRIMARY KEY ("electric_meter_id"),
	 CONSTRAINT "FK_addresses_users" FOREIGN KEY ("client_id") REFERENCES "users" ("id"),
	 CONSTRAINT "FK_addresses_tariffs" FOREIGN KEY ("tariff_id") REFERENCES "tariffs" ("id"),
	 CONSTRAINT "FK_addresses_electric_meters" FOREIGN KEY ("electric_meter_id") REFERENCES "electric_meters" ("id")
);

CREATE TABLE "bills" (
	"id" INT,
	"address_id" INT,
	"initial_measure_id" INT,
	"final_measure_id" INT,
	"bill_date" DATE,
	"amount_payed" FLOAT,
	"consumption" FLOAT,
	"total" FLOAT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_bills_address" FOREIGN KEY ("address_id") REFERENCES "addresses" ("id"),
	 CONSTRAINT "FK_bills_final_measurement" FOREIGN KEY ("final_measure_id") REFERENCES "measurements" ("id"),
	 CONSTRAINT "FK_bills_initial_measurement" FOREIGN KEY ("initial_measure_id") REFERENCES "measurements" ("id")
);
