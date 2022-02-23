DROP DATABASE IF EXISTS "schema1325";
CREATE DATABASE "schema1325";
USE "schema1325";
CREATE TABLE "users" (
	"id" INT,
	"user_name" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"registration_date" TIMESTAMP,
	"is_deleted" BIT,
	"ip_address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statistics" (
	"id" INT,
	"strength" INT,
	"defence" INT,
	"mind" INT,
	"speed" INT,
	"luck" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item_types" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" INT,
	"name" VARCHAR,
	"item_type_id" INT,
	"statistics_id" INT,
	"price" DECIMAL,
	"min_level" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game_types" (
	"id" INT,
	"name" VARCHAR,
	"bonus_stats_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game_type_forbidden_items" (
	"item_id" INT,
	"game_type_id" INT,
	 PRIMARY KEY ("item_id","game_type_id"),
	 CONSTRAINT "fk_game_type_forbidden_game_types" FOREIGN KEY ("game_type_id") REFERENCES "game_types" ("id")
);

CREATE TABLE "games" (
	"id" INT,
	"name" VARCHAR,
	"start" TIMESTAMP,
	"duration" INT,
	"game_type_id" INT,
	"is_finished" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "characters" (
	"id" INT,
	"name" VARCHAR,
	"statistics_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_games" (
	"id" INT,
	"game_id" INT,
	"user_id" INT,
	"character_id" INT,
	"level" INT,
	"joined_on" TIMESTAMP,
	"cash" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_games_games" FOREIGN KEY ("game_id") REFERENCES "games" ("id"),
	 CONSTRAINT "fk_user_games_characters" FOREIGN KEY ("character_id") REFERENCES "characters" ("id"),
	 CONSTRAINT "fk_user_games_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_game_items" (
	"item_id" INT,
	"user_game_id" INT,
	 PRIMARY KEY ("item_id","user_game_id"),
	 CONSTRAINT "fk_user_game_Items_user_games" FOREIGN KEY ("user_game_id") REFERENCES "users_games" ("id"),
	 CONSTRAINT "fk_user_game_Items_items" FOREIGN KEY ("item_id") REFERENCES "items" ("id")
);
