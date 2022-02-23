DROP DATABASE IF EXISTS "schema396";
CREATE DATABASE "schema396";
USE "schema396";
CREATE TABLE "categories" (
	"id" INT,
	"category_name" VARCHAR,
	"category_code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"user_registration" DATETIME,
	"email" VARCHAR,
	"user_name" VARCHAR,
	"user_password" VARCHAR,
	"contacts" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lots" (
	"id" INT,
	"create_datе" DATETIME,
	"lot_name" TEXT,
	"user_description" TEXT,
	"photo" TEXT,
	"price" INT,
	"date_expiration" DATETIME,
	"step" INT,
	"user_id" INT,
	"winner_id" INT,
	"category_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_lots_to_users" FOREIGN KEY ("winner_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_lots_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "bets" (
	"id" INT,
	"date_bet" DATETIME,
	"sum" INT,
	"user_id" INT,
	"lot_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bets_to_lots" FOREIGN KEY ("lot_id") REFERENCES "lots" ("id"),
	 CONSTRAINT "fkeycon_bets_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
