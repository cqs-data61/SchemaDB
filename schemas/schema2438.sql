DROP DATABASE IF EXISTS "schema2438";
CREATE DATABASE "schema2438";
USE "schema2438";
CREATE TABLE "exchange" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin" (
	"id" INT,
	"symbol" VARCHAR,
	"min_amount" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_pair" (
	"first_coin_id" INT,
	"second_coin_id" INT,
	"exchange_id" INT,
	"market_symbol" VARCHAR,
	 PRIMARY KEY ("first_coin_id","second_coin_id","exchange_id"),
	 CONSTRAINT "fkeycon_coin_pair_to_exchange" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("id"),
	 CONSTRAINT "fkeycon_coin_pair_to_coin" FOREIGN KEY ("second_coin_id") REFERENCES "coin" ("id")
);
