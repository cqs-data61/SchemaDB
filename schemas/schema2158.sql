DROP DATABASE IF EXISTS "schema2158";
CREATE DATABASE "schema2158";
USE "schema2158";
CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"user_id" INT,
	"role_id" INT,
	 CONSTRAINT "fkeycon_user_role_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "fkeycon_user_role_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
