DROP DATABASE IF EXISTS "schema292";
CREATE DATABASE "schema292";
USE "schema292";
CREATE TABLE "role" (
	"id" SERIAL,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "_user" (
	"id" SERIAL,
	"code" VARCHAR,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"status" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_roles" (
	"id" SERIAL,
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_roles_to__user" FOREIGN KEY ("user_id") REFERENCES "_user" ("id"),
	 CONSTRAINT "fkeycon_user_roles_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
