DROP DATABASE IF EXISTS "schema2256";
CREATE DATABASE "schema2256";
USE "schema2256";
CREATE TABLE "rooms" (
	"room_code" VARCHAR,
	"host" VARCHAR,
	 PRIMARY KEY ("room_code")
);

CREATE TABLE "questions" (
	"question_id" SERIAL,
	"question" VARCHAR,
	"questioner_name" VARCHAR,
	"total_likes" INT,
	"fk_room_code" VARCHAR,
	 PRIMARY KEY ("question_id"),
	 CONSTRAINT "fkeycon_questions_to_rooms" FOREIGN KEY ("fk_room_code") REFERENCES "rooms" ("room_code")
);
