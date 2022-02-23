DROP DATABASE IF EXISTS "schema2380";
CREATE DATABASE "schema2380";
USE "schema2380";
CREATE TABLE "address" (
	"addressid" SERIAL,
	"addressline" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" INT,
	 PRIMARY KEY ("addressid")
);

CREATE TABLE "home" (
	"homeid" SERIAL,
	"mlsnumber" VARCHAR,
	"imagename" VARCHAR,
	"addressid" INT,
	"numberofbathrooms" INT,
	"numberofbedrooms" INT,
	"price" DECIMAL,
	"shortdescription" VARCHAR,
	 PRIMARY KEY ("homeid"),
	 CONSTRAINT "fk_home_address" FOREIGN KEY ("addressid") REFERENCES "address" ("addressid")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);
