DROP DATABASE IF EXISTS "schema2408";
CREATE DATABASE "schema2408";
USE "schema2408";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" TINYINT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "user_roles" (
	"user_role_id" INT,
	"username" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_role_id"),
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
