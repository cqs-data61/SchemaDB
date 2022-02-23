DROP DATABASE IF EXISTS "schema1440";
CREATE DATABASE "schema1440";
USE "schema1440";
CREATE TABLE "authority" (
	"id" BIGINT,
	"authority_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"is_enabled" BIT,
	"is_locked" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_authority" (
	"user_id" BIGINT,
	"authority_id" BIGINT,
	 PRIMARY KEY ("user_id","authority_id"),
	 CONSTRAINT "FOREIGN_KEY_USER_AUTHORITY_AUTHORITY" FOREIGN KEY ("authority_id") REFERENCES "authority" ("id"),
	 CONSTRAINT "FOREIGN_KEY_USER_AUTHORITY_USER" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "token" (
	"user_id" BIGINT,
	"value" VARCHAR,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "FOREIGN_KEY_TOKEN_USER" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
