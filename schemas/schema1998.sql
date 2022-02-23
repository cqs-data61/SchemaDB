DROP DATABASE IF EXISTS "schema1998";
CREATE DATABASE "schema1998";
USE "schema1998";
CREATE TABLE "trade_type" (
	"type_id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("type_id")
);

CREATE TABLE "games" (
	"game_id" INT,
	"game_name" VARCHAR,
	"game_active" BOOLEAN,
	"host" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	 PRIMARY KEY ("game_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "stocks" (
	"stock_id" INT,
	"game_id" INT,
	"username" VARCHAR,
	"stock_ticker" VARCHAR,
	"stock_name" VARCHAR,
	"shares" INT,
	 PRIMARY KEY ("stock_id"),
	 CONSTRAINT "fk_game_id" FOREIGN KEY ("game_id") REFERENCES "games" ("game_id"),
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "trades" (
	"trade_id" INT,
	"game_id" INT,
	"username" VARCHAR,
	"type_id" INT,
	"stock_ticker" VARCHAR,
	"stock_name" VARCHAR,
	"amount" DECIMAL,
	"purchase_date" DATE,
	"price_per_share" DECIMAL,
	"shares" INT,
	 PRIMARY KEY ("trade_id"),
	 CONSTRAINT "fk_type_id" FOREIGN KEY ("type_id") REFERENCES "trade_type" ("type_id"),
	 CONSTRAINT "fk_game_id" FOREIGN KEY ("game_id") REFERENCES "games" ("game_id"),
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "balances" (
	"balance_id" INT,
	"game_id" INT,
	"username" VARCHAR,
	"amount" DECIMAL,
	 PRIMARY KEY ("balance_id"),
	 CONSTRAINT "fk_game_id" FOREIGN KEY ("game_id") REFERENCES "games" ("game_id"),
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "user_status" (
	"game_id" INT,
	"username" VARCHAR,
	"user_status" VARCHAR,
	 CONSTRAINT "fk_game_id" FOREIGN KEY ("game_id") REFERENCES "games" ("game_id"),
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
