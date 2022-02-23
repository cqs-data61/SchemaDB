DROP DATABASE IF EXISTS "schema2474";
CREATE DATABASE "schema2474";
USE "schema2474";
CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	"pass" VARCHAR,
	"contact" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"title" VARCHAR,
	"symbol" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lot" (
	"id" INT,
	"create" DATETIME,
	"heading" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"first_price" INT,
	"finish" DATETIME,
	"price_step" INT,
	"category_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_lot_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id"),
	 CONSTRAINT "fkeycon_lot_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "bet" (
	"id" INT,
	"date" DATETIME,
	"price" INT,
	"bet_lot_id" INT,
	"bet_user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bet_to_lot" FOREIGN KEY ("bet_lot_id") REFERENCES "lot" ("id"),
	 CONSTRAINT "fkeycon_bet_to_users" FOREIGN KEY ("bet_user_id") REFERENCES "users" ("id")
);
