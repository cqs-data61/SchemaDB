DROP DATABASE IF EXISTS "schema311";
CREATE DATABASE "schema311";
USE "schema311";
CREATE TABLE "game_type" (
	"game_type_id" INT,
	"game_type" VARCHAR,
	 PRIMARY KEY ("game_type_id")
);

CREATE TABLE "team_name" (
	"team_id" INT,
	"team_name" VARCHAR,
	"wins" INTEGER,
	"losses" INTEGER,
	"tournament_wins" INTEGER,
	"tournaments_entered" INTEGER,
	"team_image" VARCHAR,
	 PRIMARY KEY ("team_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"wins" INTEGER,
	"losses" INTEGER,
	"tournament_wins" INTEGER,
	"tournaments_entered" INTEGER,
	"user_image" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "team_invitation" (
	"user_id" INT,
	"team_id" INT,
	"has_accepted" VARCHAR,
	 CONSTRAINT "fk_team_invitation_team_id" FOREIGN KEY ("team_id") REFERENCES "team_name" ("team_id"),
	 CONSTRAINT "fk_team_invitation_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "tournament" (
	"tournament_id" INT,
	"game_type_id" INTEGER,
	"host_id" INTEGER,
	"tournament_winner_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"has_started" BOOLEAN,
	"is_private" BOOLEAN,
	"is_open" BOOLEAN,
	"max_teams" INTEGER,
	"elimination_type" VARCHAR,
	"start_date" VARCHAR,
	"start_time" VARCHAR,
	"end_date" VARCHAR,
	"signup_open" VARCHAR,
	"signup_close" VARCHAR,
	"tournament_image" VARCHAR,
	 PRIMARY KEY ("tournament_id"),
	 CONSTRAINT "fk_game_type_id" FOREIGN KEY ("game_type_id") REFERENCES "game_type" ("game_type_id"),
	 CONSTRAINT "fk_host_id" FOREIGN KEY ("host_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "tournament_invitation" (
	"tournament_id" INT,
	"team_id" INT,
	"has_accepted" VARCHAR,
	 CONSTRAINT "fk_tournament_invitation_tournament_id" FOREIGN KEY ("tournament_id") REFERENCES "tournament" ("tournament_id"),
	 CONSTRAINT "fk_tournament_invitation_team_id" FOREIGN KEY ("team_id") REFERENCES "team_name" ("team_id")
);

CREATE TABLE "matches" (
	"match_id" INT,
	"tournament_id" INTEGER,
	"team_1_id" INTEGER,
	"team_2_id" INTEGER,
	"winning_team_id" INTEGER,
	"losing_team_id" INTEGER,
	"winning_team_score" INTEGER,
	"losing_team_score" INTEGER,
	"match_date" VARCHAR,
	"match_time" VARCHAR,
	"next_match" INT,
	 CONSTRAINT "fk_tournament_id" FOREIGN KEY ("tournament_id") REFERENCES "tournament" ("tournament_id")
);

CREATE TABLE "tournament_teams" (
	"team_id" INTEGER,
	"tournament_id" INTEGER,
	 CONSTRAINT "fk_team_id_user_id_tournament_id" FOREIGN KEY ("team_id") REFERENCES "team_name" ("team_id"),
	 CONSTRAINT "fk_tournament_id_user_id_team_id" FOREIGN KEY ("tournament_id") REFERENCES "tournament" ("tournament_id")
);

CREATE TABLE "team_name_users" (
	"user_id" INTEGER,
	"team_id" INTEGER,
	 CONSTRAINT "fk_team_id_user_id" FOREIGN KEY ("team_id") REFERENCES "team_name" ("team_id"),
	 CONSTRAINT "fk_user_id_team_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);
