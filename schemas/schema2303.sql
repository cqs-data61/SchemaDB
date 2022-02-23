DROP DATABASE IF EXISTS "schema2303";
CREATE DATABASE "schema2303";
USE "schema2303";
CREATE TABLE "messages" (
	"messageid" INT,
	"username" VARCHAR,
	"messagetext" VARCHAR
);

CREATE TABLE "users" (
	"userid" INT,
	"username" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR
);
