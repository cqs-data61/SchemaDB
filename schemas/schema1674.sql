DROP DATABASE IF EXISTS "schema1674";
CREATE DATABASE "schema1674";
USE "schema1674";
CREATE TABLE "product" (
	"id" VARCHAR,
	"name" VARCHAR,
	"price" INT,
	"article" VARCHAR,
	"description" TEXT,
	"available_amount" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authorization_data" (
	"id" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer" (
	"id" VARCHAR,
	"authorization_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_customer_to_authorization_data" FOREIGN KEY ("authorization_id") REFERENCES "authorization_data" ("id")
);
