DROP DATABASE IF EXISTS "schema1887";
CREATE DATABASE "schema1887";
USE "schema1887";
CREATE TABLE "ps_tag" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ps_gamesetpos" (
	"position_id" INT,
	"gameset_id" INT,
	"num_total" INT,
	"num_sente_win" INT,
	"num_gote_win" INT
);

CREATE TABLE "ps_position" (
	"id" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ps_gamesetmove" (
	"position_id" INT,
	"move" CHAR,
	"new_position_id" INT,
	"gameset_id" INT,
	"num_total" INT,
	 CONSTRAINT "fk_ps_posmove_1" FOREIGN KEY ("position_id") REFERENCES "ps_position" ("id"),
	 CONSTRAINT "fk_ps_posmove_2" FOREIGN KEY ("new_position_id") REFERENCES "ps_position" ("id")
);

CREATE TABLE "ps_venue" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ps_player" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"jp_name" VARCHAR,
	"nickname" VARCHAR,
	"kishi" TINYINT,
	"kishi_id" INT,
	"kishi_rank" VARCHAR,
	"fesa_rank" VARCHAR,
	"81dojo_rank" VARCHAR,
	"sc24_rank" VARCHAR,
	"sw_rank" VARCHAR,
	"country" VARCHAR,
	"gender" CHAR,
	"birthdate" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ps_kifu" (
	"id" INT,
	"name" VARCHAR,
	"author_id" INT,
	"usf" MEDIUMTEXT,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"type_id" TINYINT,
	"starting_pos_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ps_kifupos" (
	"kifu_id" INT,
	"position_id" INT,
	 CONSTRAINT "fk_ps_kifupos_2" FOREIGN KEY ("position_id") REFERENCES "ps_position" ("id"),
	 CONSTRAINT "fk_ps_kifupos_1" FOREIGN KEY ("kifu_id") REFERENCES "ps_kifu" ("id")
);

CREATE TABLE "ps_problem" (
	"id" INT,
	"kifu_id" INT,
	"num_moves" INT,
	"elo" INT,
	"pb_type" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ps_problem_1" FOREIGN KEY ("kifu_id") REFERENCES "ps_kifu" ("id")
);

CREATE TABLE "ps_problemtag" (
	"problem_id" INT,
	"tag_id" INT,
	 PRIMARY KEY ("problem_id"),
	 CONSTRAINT "fk_ps_problemtag_1" FOREIGN KEY ("problem_id") REFERENCES "ps_problem" ("id"),
	 CONSTRAINT "fk_ps_problemtag_2" FOREIGN KEY ("tag_id") REFERENCES "ps_tag" ("id")
);

CREATE TABLE "ps_game" (
	"id" INT,
	"kifu_id" INT,
	"sente_id" INT,
	"gote_id" INT,
	"sente_name" VARCHAR,
	"gote_name" VARCHAR,
	"date_played" DATE,
	"venue" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ps_game_1" FOREIGN KEY ("kifu_id") REFERENCES "ps_kifu" ("id"),
	 CONSTRAINT "fk_ps_game_2" FOREIGN KEY ("sente_id") REFERENCES "ps_player" ("id"),
	 CONSTRAINT "fk_ps_game_3" FOREIGN KEY ("gote_id") REFERENCES "ps_player" ("id"),
	 CONSTRAINT "fk_ps_game_4" FOREIGN KEY ("venue") REFERENCES "ps_venue" ("id")
);

CREATE TABLE "ps_user" (
	"id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"email" VARCHAR,
	"create_time" TIMESTAMP,
	"administrator" TINYINT,
	"deleted" TINYINT,
	"verified" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ps_highscore" (
	"index" INT,
	"name" VARCHAR,
	"score" INT,
	"timestamp_score" TIMESTAMP,
	"user_id" INT,
	"event" VARCHAR,
	 PRIMARY KEY ("index"),
	 CONSTRAINT "fk_ps_highscore_1" FOREIGN KEY ("user_id") REFERENCES "ps_user" ("id")
);

CREATE TABLE "ps_userpbstats" (
	"user_id" INT,
	"problem_id" INT,
	"timestamp_attempted" TIMESTAMP,
	"time_spent_ms" INT,
	"correct" TINYINT,
	 CONSTRAINT "fk_pr_userpbstats_1" FOREIGN KEY ("user_id") REFERENCES "ps_user" ("id"),
	 CONSTRAINT "fk_pr_userpbstats_2" FOREIGN KEY ("problem_id") REFERENCES "ps_problem" ("id")
);

CREATE TABLE "ps_problemset" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"visibility" TINYINT,
	"owner_user_id" INT,
	"difficulty" TINYINT,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"tags" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ps_problemset_1" FOREIGN KEY ("owner_user_id") REFERENCES "ps_user" ("id")
);

CREATE TABLE "ps_userpbsetstats" (
	"user_id" INT,
	"problemset_id" INT,
	"timestamp_attempted" TIMESTAMP,
	"time_spent_ms" INT,
	"complete" TINYINT,
	"solved" INT,
	 CONSTRAINT "fk_ps_userpbsetstats_1" FOREIGN KEY ("user_id") REFERENCES "ps_user" ("id"),
	 CONSTRAINT "fk_ps_userpbsetstats_2" FOREIGN KEY ("problemset_id") REFERENCES "ps_problemset" ("id")
);

CREATE TABLE "ps_lessons" (
	"id" INT,
	"kifu_id" INT,
	"parent_id" INT,
	"title" VARCHAR,
	"description" MEDIUMTEXT,
	"tags" VARCHAR,
	"preview_sfen" VARCHAR,
	"difficulty" TINYINT,
	"likes" INT,
	"author_id" INT,
	"hidden" TINYINT,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"type" TINYINT,
	"index" INT,
	"problemset_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ps_lessons_2" FOREIGN KEY ("author_id") REFERENCES "ps_user" ("id"),
	 CONSTRAINT "fk_ps_lessons_3" FOREIGN KEY ("problemset_id") REFERENCES "ps_problemset" ("id"),
	 CONSTRAINT "fk_ps_lessons_1" FOREIGN KEY ("kifu_id") REFERENCES "ps_kifu" ("id")
);

CREATE TABLE "ps_problemsetpbs" (
	"problemset_id" INT,
	"problem_id" INT,
	 CONSTRAINT "fk_pr_problemsetpbs_2" FOREIGN KEY ("problem_id") REFERENCES "ps_problem" ("id"),
	 CONSTRAINT "fk_pr_problemsetpbs_1" FOREIGN KEY ("problemset_id") REFERENCES "ps_problemset" ("id")
);

CREATE TABLE "ps_gameset" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"visibility" TINYINT,
	"owner_user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ps_gameset_1" FOREIGN KEY ("owner_user_id") REFERENCES "ps_user" ("id")
);

CREATE TABLE "ps_gamesetgame" (
	"gameset_id" INT,
	"game_id" INT,
	 CONSTRAINT "fk_ps_gamesetgame_1" FOREIGN KEY ("gameset_id") REFERENCES "ps_gameset" ("id"),
	 CONSTRAINT "fk_ps_gamesetgame_2" FOREIGN KEY ("game_id") REFERENCES "ps_game" ("id")
);
