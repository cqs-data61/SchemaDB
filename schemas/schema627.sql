DROP DATABASE IF EXISTS "schema627";
CREATE DATABASE "schema627";
USE "schema627";
CREATE TABLE "member" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subject" (
	"id" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session" (
	"id" INT,
	"start_date_time" TIMESTAMP,
	"end_date_time" TIMESTAMP,
	"subject_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "session_subject_fk" FOREIGN KEY ("subject_id") REFERENCES "subject" ("id")
);

CREATE TABLE "vote" (
	"id" INT,
	"choice" BOOL,
	"session_id" INT,
	"member_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "vote_session_fk" FOREIGN KEY ("session_id") REFERENCES "session" ("id"),
	 CONSTRAINT "vote_member_fk" FOREIGN KEY ("member_id") REFERENCES "member" ("id")
);
