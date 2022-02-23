DROP DATABASE IF EXISTS "schema1797";
CREATE DATABASE "schema1797";
USE "schema1797";
CREATE TABLE "user_meeting_room" (
	"user_id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "reserv_info" (
	"reserv_id" INTEGER,
	"start_time" VARCHAR,
	"stop_time" VARCHAR,
	"reserv_date" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("reserv_id"),
	 CONSTRAINT "fkeycon_reserv_info_to_user_meeting_room" FOREIGN KEY ("user_id") REFERENCES "user_meeting_room" ("user_id")
);
