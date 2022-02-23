DROP DATABASE IF EXISTS "schema1562";
CREATE DATABASE "schema1562";
USE "schema1562";
CREATE TABLE "drinkers" (
	"name" VARCHAR,
	"address" VARCHAR,
	"phone" INTEGER,
	 PRIMARY KEY ("name")
);

CREATE TABLE "coffeehouses" (
	"name" VARCHAR,
	"address" VARCHAR,
	"license" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "frequents" (
	"drinker" VARCHAR,
	"coffeehouse" VARCHAR,
	 PRIMARY KEY ("drinker","coffeehouse"),
	 CONSTRAINT "fkeycon_frequents_to_coffeehouses" FOREIGN KEY ("coffeehouse") REFERENCES "coffeehouses" ("name"),
	 CONSTRAINT "fkeycon_frequents_to_drinkers" FOREIGN KEY ("drinker") REFERENCES "drinkers" ("name")
);

CREATE TABLE "coffees" (
	"name" VARCHAR,
	"manufacturer" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "sells" (
	"coffeehouse" VARCHAR,
	"coffee" VARCHAR,
	"price" REAL,
	 PRIMARY KEY ("coffeehouse","coffee"),
	 CONSTRAINT "fkeycon_sells_to_coffees" FOREIGN KEY ("coffee") REFERENCES "coffees" ("name"),
	 CONSTRAINT "fkeycon_sells_to_coffeehouses" FOREIGN KEY ("coffeehouse") REFERENCES "coffeehouses" ("name")
);

CREATE TABLE "likes" (
	"drinker" VARCHAR,
	"coffee" VARCHAR,
	"rating" INTEGER,
	 PRIMARY KEY ("drinker","coffee"),
	 CONSTRAINT "fkeycon_likes_to_drinkers" FOREIGN KEY ("drinker") REFERENCES "drinkers" ("name"),
	 CONSTRAINT "fkeycon_likes_to_coffees" FOREIGN KEY ("coffee") REFERENCES "coffees" ("name")
);
