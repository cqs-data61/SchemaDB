DROP DATABASE IF EXISTS "schema1367";
CREATE DATABASE "schema1367";
USE "schema1367";
CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);

CREATE TABLE "faculty" (
	"id" BIGINT,
	"founded_in" DATE,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address" (
	"id" BIGINT,
	"city" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "student" (
	"id" BIGINT,
	"name" VARCHAR,
	"address_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkcaf6ht0hfw93lwc13ny0sdmvo" FOREIGN KEY ("address_id") REFERENCES "address" ("id")
);

CREATE TABLE "faculty_student" (
	"faculty_id" BIGINT,
	"student_id" BIGINT,
	 PRIMARY KEY ("faculty_id","student_id"),
	 CONSTRAINT "fk99nr3yjy7xqa30ai52fqnldbl" FOREIGN KEY ("student_id") REFERENCES "student" ("id"),
	 CONSTRAINT "fk48uqfiyto4on19d9nogor5suu" FOREIGN KEY ("faculty_id") REFERENCES "faculty" ("id")
);

CREATE TABLE "card" (
	"id" BIGINT,
	"iban" VARCHAR,
	"student_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk8hto5bk6uuwe5kmyjcd5fw2a8" FOREIGN KEY ("student_id") REFERENCES "student" ("id")
);
