DROP DATABASE IF EXISTS "schema1990";
CREATE DATABASE "schema1990";
USE "schema1990";
CREATE TABLE "mtgcard" (
	"card_id" INT,
	"condition" VARCHAR,
	"card_name" VARCHAR,
	"cost_usd" FLOAT,
	"set_name" VARCHAR,
	"card_image_file_name" VARCHAR,
	 PRIMARY KEY ("card_id")
);

CREATE TABLE "card_inventory" (
	"ci_id" IDENTITY,
	"card_id" INT,
	"count" INT,
	 CONSTRAINT "fkeycon_card_inventory_to_mtgcard" FOREIGN KEY ("card_id") REFERENCES "mtgcard" ("card_id")
);
