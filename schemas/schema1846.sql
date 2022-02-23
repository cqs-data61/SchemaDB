DROP DATABASE IF EXISTS "schema1846";
CREATE DATABASE "schema1846";
USE "schema1846";
CREATE TABLE "user" (
	"username" VARCHAR,
	"address" VARCHAR,
	"created_date" DATETIME,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"modified_date" DATETIME,
	"password" VARCHAR,
	"phone_number" VARCHAR,
	"service_type" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "revinfo" (
	"rev" INT,
	"revtstmp" BIGINT,
	 PRIMARY KEY ("rev")
);

CREATE TABLE "user_aud" (
	"username" VARCHAR,
	"rev" INT,
	"revtype" TINYINT,
	"address" VARCHAR,
	"created_date" DATETIME,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"modified_date" DATETIME,
	"password" VARCHAR,
	"phone_number" VARCHAR,
	"service_type" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("username","rev"),
	 CONSTRAINT "FK89ntto9kobwahrwxbne2nqcnr" FOREIGN KEY ("rev") REFERENCES "revinfo" ("rev")
);

CREATE TABLE "feedback" (
	"feedbackid" BIGINT,
	"message" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("feedbackid")
);
