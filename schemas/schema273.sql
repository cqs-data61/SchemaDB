DROP DATABASE IF EXISTS "schema273";
CREATE DATABASE "schema273";
USE "schema273";
CREATE TABLE "users" (
	"user_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"activated" BOOLEAN,
	"non_locked" BOOLEAN,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "roles" (
	"role_name" VARCHAR,
	 PRIMARY KEY ("role_name")
);

CREATE TABLE "user_roles" (
	"user_id" INTEGER,
	"role_name" VARCHAR,
	 CONSTRAINT "fkeycon_user_roles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_user_roles_to_roles" FOREIGN KEY ("role_name") REFERENCES "roles" ("role_name")
);
