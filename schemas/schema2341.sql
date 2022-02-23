DROP DATABASE IF EXISTS "schema2341";
CREATE DATABASE "schema2341";
USE "schema2341";
CREATE TABLE "messages" (
	"messageid" SERIAL,
	"username" VARCHAR,
	"messagetext" VARCHAR,
	"datetime" TIMESTAMP,
	 PRIMARY KEY ("messageid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"username" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	 PRIMARY KEY ("userid")
);
