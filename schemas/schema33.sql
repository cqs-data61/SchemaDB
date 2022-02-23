DROP DATABASE IF EXISTS "schema33";
CREATE DATABASE "schema33";
USE "schema33";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fkeycon_authorities_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);

CREATE TABLE "accident_rule" (
	"accident_id" INT,
	"rule_id" INT,
	 PRIMARY KEY ("accident_id","rule_id")
);

CREATE TABLE "rule" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accident_type" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accident" (
	"id" SERIAL,
	"name" VARCHAR,
	"text" VARCHAR,
	"address" VARCHAR,
	"type_id" INT,
	 PRIMARY KEY ("id")
);
