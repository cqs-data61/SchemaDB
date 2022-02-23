DROP DATABASE IF EXISTS "schema1438";
CREATE DATABASE "schema1438";
USE "schema1438";
CREATE TABLE "colors" (
	"colorid" SERIAL,
	"color" VARCHAR,
	 PRIMARY KEY ("colorid")
);

CREATE TABLE "sizes" (
	"sizeid" SERIAL,
	"size" NUMERIC,
	 PRIMARY KEY ("sizeid")
);

CREATE TABLE "category" (
	"catid" SERIAL,
	"nom" VARCHAR,
	"ismen" BOOLEAN,
	"image" VARCHAR,
	 PRIMARY KEY ("catid")
);

CREATE TABLE "shoes" (
	"sid" SERIAL,
	"name" VARCHAR,
	"price" INTEGER,
	"image" VARCHAR,
	"catid" INTEGER,
	 PRIMARY KEY ("sid"),
	 CONSTRAINT "fkeycon_shoes_to_category" FOREIGN KEY ("catid") REFERENCES "category" ("catid")
);

CREATE TABLE "availablecolors" (
	"colorid" SERIAL,
	"sid" SERIAL,
	 PRIMARY KEY ("colorid","sid"),
	 CONSTRAINT "fkeycon_availablecolors_to_colors" FOREIGN KEY ("colorid") REFERENCES "colors" ("colorid"),
	 CONSTRAINT "fkeycon_availablecolors_to_shoes" FOREIGN KEY ("sid") REFERENCES "shoes" ("sid")
);

CREATE TABLE "availablesizes" (
	"sizeid" SERIAL,
	"sid" SERIAL,
	"quantity" INTEGER,
	 PRIMARY KEY ("sizeid","sid"),
	 CONSTRAINT "fkeycon_availablesizes_to_shoes" FOREIGN KEY ("sid") REFERENCES "shoes" ("sid"),
	 CONSTRAINT "fkeycon_availablesizes_to_sizes" FOREIGN KEY ("sizeid") REFERENCES "sizes" ("sizeid")
);

CREATE TABLE "client" (
	"cid" SERIAL,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"email" VARCHAR,
	"password_digest" VARCHAR,
	"gender" SHOESTORE.SEXTYPE,
	"dob" DATE,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "orders" (
	"oid" SERIAL,
	"hour" TIME,
	"sid" INTEGER,
	"cid" INTEGER,
	"quantity" INTEGER,
	"flag" INTEGER,
	"colorid" INTEGER,
	"sizeid" INTEGER,
	"dor" TIMESTAMP,
	 PRIMARY KEY ("oid"),
	 CONSTRAINT "fkeycon_orders_to_shoes" FOREIGN KEY ("sid") REFERENCES "shoes" ("sid"),
	 CONSTRAINT "fkeycon_orders_to_colors" FOREIGN KEY ("colorid") REFERENCES "colors" ("colorid"),
	 CONSTRAINT "fkeycon_orders_to_client" FOREIGN KEY ("cid") REFERENCES "client" ("cid"),
	 CONSTRAINT "fkeycon_orders_to_sizes" FOREIGN KEY ("sizeid") REFERENCES "sizes" ("sizeid")
);
