DROP DATABASE IF EXISTS "schema2506";
CREATE DATABASE "schema2506";
USE "schema2506";
CREATE TABLE "operation" (
	"id" INT,
	"op_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"role_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_operation" (
	"role_id" INT,
	"operation_id" INT,
	 PRIMARY KEY ("role_id","operation_id"),
	 CONSTRAINT "fkeycon_role_operation_to_operation" FOREIGN KEY ("operation_id") REFERENCES "operation" ("id"),
	 CONSTRAINT "fkeycon_role_operation_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"user_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fkeycon_user_role_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "fkeycon_user_role_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
