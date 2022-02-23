DROP DATABASE IF EXISTS "schema725";
CREATE DATABASE "schema725";
USE "schema725";
CREATE TABLE "address" (
	"address_id" INT,
	"street" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"postal" INT,
	"country" VARCHAR,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "course" (
	"course_id" INT,
	"course_name" VARCHAR,
	"holes" INT,
	"address_id" INT,
	"yardage" INT,
	"slope" DECIMAL,
	"rating" DECIMAL,
	"score_to_par" INT,
	 PRIMARY KEY ("course_id"),
	 CONSTRAINT "fkeycon_course_to_address" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "league" (
	"league_id" INT,
	"league_name" VARCHAR,
	"score_type" VARCHAR,
	"course_id" INT,
	 PRIMARY KEY ("league_id"),
	 CONSTRAINT "fkeycon_league_to_course" FOREIGN KEY ("course_id") REFERENCES "course" ("course_id")
);

CREATE TABLE "round" (
	"round_id" INT,
	"league_id" INT,
	"course_id" INT,
	"tee_time" TIME,
	"tee_date" DATE,
	 PRIMARY KEY ("round_id"),
	 CONSTRAINT "fkeycon_round_to_course" FOREIGN KEY ("course_id") REFERENCES "course" ("course_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_league" (
	"user_id" INT,
	"league_id" INT,
	 PRIMARY KEY ("user_id","league_id"),
	 CONSTRAINT "fkeycon_user_league_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_user_league_to_league" FOREIGN KEY ("league_id") REFERENCES "league" ("league_id")
);

CREATE TABLE "user_round" (
	"round_id" INT,
	"user_id" INT,
	"score" INT,
	 PRIMARY KEY ("round_id","user_id"),
	 CONSTRAINT "fkeycon_user_round_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_user_round_to_round" FOREIGN KEY ("round_id") REFERENCES "round" ("round_id")
);
