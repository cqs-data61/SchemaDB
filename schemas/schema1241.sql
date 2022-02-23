DROP DATABASE IF EXISTS "schema1241";
CREATE DATABASE "schema1241";
USE "schema1241";
CREATE TABLE "guilds" (
	"guild_id" BIGINT,
	"prefix" VARCHAR,
	 PRIMARY KEY ("guild_id")
);

CREATE TABLE "profile" (
	"user_id" BIGINT,
	"xp" BIGINT,
	"gold" BIGINT,
	"gems" INTEGER,
	"farm_slots" INTEGER,
	"factory_slots" INTEGER,
	"factory_level" INTEGER,
	"store_slots" INTEGER,
	"notifications" BOOLEAN,
	"registration_date" DATE,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "modifications" (
	"id" SERIAL,
	"item_id" BIGINT,
	"user_id" BIGINT,
	"time1" SMALLINT,
	"time2" SMALLINT,
	"volume" SMALLINT,
	 PRIMARY KEY ("user_id","item_id"),
	 CONSTRAINT "modifications_user_fkey" FOREIGN KEY ("user_id") REFERENCES "profile" ("user_id")
);

CREATE TABLE "store" (
	"id" SERIAL,
	"guild_id" BIGINT,
	"user_id" BIGINT,
	"username" VARCHAR,
	"item_id" SMALLINT,
	"amount" INTEGER,
	"price" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "store_user_fkey" FOREIGN KEY ("user_id") REFERENCES "profile" ("user_id")
);

CREATE TABLE "missions" (
	"id" SERIAL,
	"user_id" BIGINT,
	"payload" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "missions_user_fkey" FOREIGN KEY ("user_id") REFERENCES "profile" ("user_id")
);

CREATE TABLE "factory" (
	"id" SERIAL,
	"user_id" BIGINT,
	"item_id" SMALLINT,
	"starts" TIMESTAMP,
	"ends" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "factory_user_fkey" FOREIGN KEY ("user_id") REFERENCES "profile" ("user_id")
);

CREATE TABLE "farm" (
	"id" SERIAL,
	"item_id" SMALLINT,
	"user_id" BIGINT,
	"amount" INTEGER,
	"iterations" SMALLINT,
	"fields_used" SMALLINT,
	"ends" TIMESTAMP,
	"dies" TIMESTAMP,
	"robbed_fields" SMALLINT,
	"cat_boost" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "farm_user_fkey" FOREIGN KEY ("user_id") REFERENCES "profile" ("user_id")
);

CREATE TABLE "inventory" (
	"id" SERIAL,
	"user_id" BIGINT,
	"item_id" SMALLINT,
	"amount" INTEGER,
	 PRIMARY KEY ("user_id","item_id"),
	 CONSTRAINT "inventory_user_fkey" FOREIGN KEY ("user_id") REFERENCES "profile" ("user_id")
);
