DROP DATABASE IF EXISTS "schema1815";
CREATE DATABASE "schema1815";
USE "schema1815";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"contact_info" VARCHAR,
	"dt_reg" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"symbol_code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lots" (
	"id" INT,
	"category_id" INT,
	"user_id" INT,
	"winner" INT,
	"title" VARCHAR,
	"description" TEXT,
	"start_price" INT,
	"dt_add" DATETIME,
	"dt_sell" DATETIME,
	"img_path" VARCHAR,
	"rate_step" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_lots_to_users" FOREIGN KEY ("winner") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_lots_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "rates" (
	"id" INT,
	"user_id" INT,
	"lot_id" INT,
	"dt_add" DATETIME,
	"price" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_rates_to_lots" FOREIGN KEY ("lot_id") REFERENCES "lots" ("id"),
	 CONSTRAINT "fkeycon_rates_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
