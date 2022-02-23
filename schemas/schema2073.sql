DROP DATABASE IF EXISTS "schema2073";
CREATE DATABASE "schema2073";
USE "schema2073";
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
