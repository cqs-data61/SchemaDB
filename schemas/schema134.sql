DROP DATABASE IF EXISTS "schema134";
CREATE DATABASE "schema134";
USE "schema134";
CREATE TABLE "analyze_types" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "disease_types" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "positions" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "cities" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "countries" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "addresses" (
	"id" BIGINT,
	"country_code" BIGINT,
	"city_code" BIGINT,
	"street_name" VARCHAR,
	"house_number" VARCHAR,
	"corps" VARCHAR,
	"apartment" VARCHAR,
	"primary_address" BOOLEAN,
	 CONSTRAINT "fkeycon_addresses_to_countries" FOREIGN KEY ("country_code") REFERENCES "countries" ("id"),
	 CONSTRAINT "fkeycon_addresses_to_cities" FOREIGN KEY ("city_code") REFERENCES "cities" ("id")
);

CREATE TABLE "hospitals" (
	"code" VARCHAR,
	"name" VARCHAR,
	"address_id" BIGINT,
	 PRIMARY KEY ("code"),
	 CONSTRAINT "fkeycon_hospitals_to_addresses" FOREIGN KEY ("address_id") REFERENCES "addresses" ("id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"role" VARCHAR
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "tickets" (
	"id" BIGINT,
	"receipt_date" DATETIME,
	"room" VARCHAR,
	"employee" VARCHAR,
	"patient" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tickets_to_users" FOREIGN KEY ("employee") REFERENCES "users" ("username")
);

CREATE TABLE "analyzes" (
	"id" BIGINT,
	"receiving_date" DATETIME,
	"content" VARCHAR,
	"username" VARCHAR,
	"id_type" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_analyzes_to_analyze_types" FOREIGN KEY ("id_type") REFERENCES "analyze_types" ("id"),
	 CONSTRAINT "fkeycon_analyzes_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "diseases" (
	"id" BIGINT,
	"begin_date" DATETIME,
	"end_date" DATETIME,
	"content" VARCHAR,
	"username" VARCHAR,
	"id_type" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_diseases_to_disease_types" FOREIGN KEY ("id_type") REFERENCES "disease_types" ("id"),
	 CONSTRAINT "fkeycon_diseases_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "user_details" (
	"username" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"birth_day" DATE,
	"phone_number" VARCHAR,
	"id_position" BIGINT,
	"hospital_id" VARCHAR,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_user_details_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username"),
	 CONSTRAINT "fkeycon_user_details_to_positions" FOREIGN KEY ("id_position") REFERENCES "positions" ("id"),
	 CONSTRAINT "fkeycon_user_details_to_hospitals" FOREIGN KEY ("hospital_id") REFERENCES "hospitals" ("code")
);

CREATE TABLE "user2address" (
	"username" VARCHAR,
	"address_id" BIGINT,
	 CONSTRAINT "fkeycon_user2address_to_user_details" FOREIGN KEY ("username") REFERENCES "user_details" ("username"),
	 CONSTRAINT "fkeycon_user2address_to_addresses" FOREIGN KEY ("address_id") REFERENCES "addresses" ("id")
);

CREATE TABLE "user2roles" (
	"username" VARCHAR,
	"user_role_id" BIGINT,
	 CONSTRAINT "fkeycon_user2roles_to_roles" FOREIGN KEY ("user_role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fkeycon_user2roles_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
