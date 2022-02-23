DROP DATABASE IF EXISTS "schema1790";
CREATE DATABASE "schema1790";
USE "schema1790";
CREATE TABLE "player_reset_verification" (
	"player_id" SMALLINT,
	"verification_key" VARCHAR,
	"ipaddr" VARCHAR,
	"generation_time" TIMESTAMP,
	 PRIMARY KEY ("player_id")
);

CREATE TABLE "player_verification" (
	"player_id" SMALLINT,
	"verification_key" VARCHAR,
	"ipaddr" VARCHAR,
	"generation_time" TIMESTAMP,
	 PRIMARY KEY ("player_id")
);

CREATE TABLE "player_auth" (
	"id" INT,
	"player_id" SMALLINT,
	"auth_key" VARCHAR,
	"login_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "player_status" (
	"id" TINYINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "player" (
	"id" SMALLINT,
	"name_ingame" VARCHAR,
	"password_hashed" VARCHAR,
	"name_irl" VARCHAR,
	"email" VARCHAR,
	"is_email_public" BOOLEAN,
	"status_id" TINYINT,
	"dob_month" INT,
	"dob_day" INT,
	"gender" VARCHAR,
	"pronouns" VARCHAR,
	"autoaccept" BOOLEAN,
	"autopass" BOOLEAN,
	"fire_overshooting" BOOLEAN,
	"monitor_redirects_to_game" BOOLEAN,
	"monitor_redirects_to_forum" BOOLEAN,
	"automatically_monitor" BOOLEAN,
	"image_path" VARCHAR,
	"image_size" SMALLINT,
	"uses_gravatar" BOOLEAN,
	"comment" VARCHAR,
	"homepage" VARCHAR,
	"favorite_button_id" SMALLINT,
	"favorite_buttonset_id" SMALLINT,
	"die_background" VARCHAR,
	"player_color" VARCHAR,
	"opponent_color" VARCHAR,
	"neutral_color_a" VARCHAR,
	"neutral_color_b" VARCHAR,
	"last_action_time" TIMESTAMP,
	"last_access_time" TIMESTAMP,
	"creation_time" TIMESTAMP,
	"fanatic_button_id" SMALLINT,
	"n_games_won" SMALLINT,
	"n_games_lost" SMALLINT,
	"vacation_message" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_player_status_id" FOREIGN KEY ("status_id") REFERENCES "player_status" ("id")
);
