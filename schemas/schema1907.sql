DROP DATABASE IF EXISTS "schema1907";
CREATE DATABASE "schema1907";
USE "schema1907";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "user_roles" (
	"user_role_id" SERIAL,
	"username" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_role_id"),
	 CONSTRAINT "fkeycon_user_roles_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "modelconfig" (
	"config_id" BIGSERIAL,
	"configset" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("config_id")
);

CREATE TABLE "dfu" (
	"dfu_id" BIGSERIAL,
	"dmdunit" VARCHAR,
	"dmdgroup" VARCHAR,
	"loc" VARCHAR,
	"modelconfigset" VARCHAR,
	"paramprofile" VARCHAR,
	 PRIMARY KEY ("dfu_id")
);
