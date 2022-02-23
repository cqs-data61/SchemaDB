DROP DATABASE IF EXISTS "schema305";
CREATE DATABASE "schema305";
USE "schema305";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"password_hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quote" (
	"id" INT,
	"quote_text" VARCHAR,
	"quotee" VARCHAR,
	"submitter_user_id" INT,
	"submission" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_quote_to_user" FOREIGN KEY ("submitter_user_id") REFERENCES "user" ("id")
);

CREATE TABLE "favourite" (
	"user_id" INT,
	"quote_id" INT,
	 PRIMARY KEY ("user_id","quote_id"),
	 CONSTRAINT "fkeycon_favourite_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_favourite_to_quote" FOREIGN KEY ("quote_id") REFERENCES "quote" ("id")
);
