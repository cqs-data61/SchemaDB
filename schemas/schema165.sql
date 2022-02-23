DROP DATABASE IF EXISTS "schema165";
CREATE DATABASE "schema165";
USE "schema165";
CREATE TABLE "organizer" (
	"id" INT,
	"create_datetime" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"public_name" VARCHAR,
	"public_organisation" VARCHAR,
	"confirmed_email" TINYINT,
	"super_admin" TINYINT,
	"verified" TINYINT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jwt_refresh_token" (
	"id" INT,
	"token" VARCHAR,
	"organizer_id" INT,
	"event_user_id" INT,
	"create_datetime" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_jwt_refresh_token_to_organizer" FOREIGN KEY ("organizer_id") REFERENCES "organizer" ("id")
);

CREATE TABLE "event" (
	"id" INT,
	"organizer_id" INT,
	"create_datetime" INT,
	"modified_datetime" INT,
	"scheduled_datetime" INT,
	"title" VARCHAR,
	"lobby_open" TINYINT,
	"active" TINYINT,
	"deleted" TINYINT,
	"description" TEXT,
	"image_path" VARCHAR,
	"slug" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_event_to_organizer" FOREIGN KEY ("organizer_id") REFERENCES "organizer" ("id")
);

CREATE TABLE "event_user" (
	"id" INT,
	"event_id" INT,
	"create_datetime" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"public_name" VARCHAR,
	"allow_to_vote" TINYINT,
	"vote_amount" INT,
	"online" TINYINT,
	"coorganizer" TINYINT,
	"verified" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_event_user_to_event" FOREIGN KEY ("event_id") REFERENCES "event" ("id")
);

CREATE TABLE "poll" (
	"id" INT,
	"event_id" INT,
	"original_id" INT,
	"create_datetime" INT,
	"title" VARCHAR,
	"poll_answer" VARCHAR,
	"list" TEXT,
	"type" INT,
	"repeated" TINYINT,
	"min_votes" INT,
	"max_votes" INT,
	"allow_abstain" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_poll_to_poll" FOREIGN KEY ("original_id") REFERENCES "poll" ("id"),
	 CONSTRAINT "fkeycon_poll_to_event" FOREIGN KEY ("event_id") REFERENCES "event" ("id")
);

CREATE TABLE "poll_result" (
	"id" INT,
	"poll_id" INT,
	"max_votes" INT,
	"max_vote_cycles" INT,
	"create_datetime" INT,
	"type" TINYINT,
	"closed" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_poll_result_to_poll" FOREIGN KEY ("poll_id") REFERENCES "poll" ("id")
);

CREATE TABLE "poll_user_voted" (
	"id" INT,
	"poll_result_id" INT,
	"event_user_id" INT,
	"username" VARCHAR,
	"vote_cycle" INT,
	"create_datetime" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_poll_user_voted_to_poll_result" FOREIGN KEY ("poll_result_id") REFERENCES "poll_result" ("id")
);

CREATE TABLE "poll_possible_answer" (
	"id" INT,
	"poll_id" INT,
	"create_datetime" INT,
	"content" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_poll_possible_answer_to_poll" FOREIGN KEY ("poll_id") REFERENCES "poll" ("id")
);

CREATE TABLE "poll_user" (
	"id" INT,
	"event_user_id" INT,
	"public_name" VARCHAR,
	"username" VARCHAR,
	"poll_id" INT,
	"create_datetime" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_poll_user_to_poll" FOREIGN KEY ("poll_id") REFERENCES "poll" ("id")
);

CREATE TABLE "poll_answer" (
	"id" INT,
	"poll_result_id" INT,
	"poll_possible_answer_id" INT,
	"answer_content" VARCHAR,
	"poll_user_id" INT,
	"create_datetime" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_poll_answer_to_poll_possible_answer" FOREIGN KEY ("poll_possible_answer_id") REFERENCES "poll_possible_answer" ("id"),
	 CONSTRAINT "fkeycon_poll_answer_to_poll_result" FOREIGN KEY ("poll_result_id") REFERENCES "poll_result" ("id"),
	 CONSTRAINT "fkeycon_poll_answer_to_poll_user" FOREIGN KEY ("poll_user_id") REFERENCES "poll_user" ("id")
);
