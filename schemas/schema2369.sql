DROP DATABASE IF EXISTS "schema2369";
CREATE DATABASE "schema2369";
USE "schema2369";
CREATE TABLE "samurai" (
	"name" VARCHAR,
	"id" BIGINT,
	"amount" BIGINT,
	"creation_date" TIMESTAMP,
	"description" VARCHAR,
	"samurai_type" INTEGER,
	"quote_id" BIGINT,
	"price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "samurai_quote" (
	"id" BIGINT,
	"samurai_id" BIGINT,
	"quote" VARBINARY,
	"name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ukh8ugq8wukffh0bpp01ct2p49t" FOREIGN KEY ("samurai_id") REFERENCES "samurai" ("id")
);

CREATE TABLE "battle" (
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "battle_samurais" (
	"battle_id" BIGINT,
	"samurais_id" BIGINT,
	 CONSTRAINT "fkh8ugq8wukffh0bpp01ct2p49t" FOREIGN KEY ("battle_id") REFERENCES "battle" ("id"),
	 CONSTRAINT "fk4q9gnl10yamqxew6rs2wdk0qq" FOREIGN KEY ("samurais_id") REFERENCES "samurai" ("id")
);
