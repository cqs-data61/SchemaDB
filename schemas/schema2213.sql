DROP DATABASE IF EXISTS "schema2213";
CREATE DATABASE "schema2213";
USE "schema2213";
CREATE TABLE "pragraphlast" (
	"id" INT,
	"title" VARCHAR,
	"content" TEXT,
	"imageurl" TEXT,
	"moduleid" INT
);

CREATE TABLE "modulelast" (
	"id" INT,
	"coursid" INT,
	"title" VARCHAR,
	"videourl" VARCHAR
);

CREATE TABLE "courseslast" (
	"id" INT,
	"namecours" VARCHAR,
	"creator" VARCHAR,
	"description" TEXT,
	"imageurl" TEXT
);

CREATE TABLE "points" (
	"idstud" INT,
	"points" INT
);

CREATE TABLE "progress" (
	"idstud" INT,
	"numberofmodulescompleted" INT
);

CREATE TABLE "stud" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"token" VARCHAR,
	"namecohort" VARCHAR
);

CREATE TABLE "courscreator" (
	"id" INT,
	"namecourscreator" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "instructors" (
	"id" INT,
	"nameinstructor" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"namecohort" VARCHAR
);

CREATE TABLE "cohort" (
	"id" INT,
	"namecohort" VARCHAR,
	"namecours" VARCHAR
);

CREATE TABLE "courses" (
	"id" INT,
	"content" TEXT,
	"namecours" VARCHAR,
	"creator" VARCHAR,
	"videourl" TEXT,
	"imageurl" TEXT,
	"cohort" VARCHAR,
	"visibility" BOOLEAN
);

CREATE TABLE "content" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"idmodule" INT
);

CREATE TABLE "modules" (
	"id" INT,
	"namemodule" VARCHAR,
	"video" VARCHAR,
	"namecours" VARCHAR,
	"previous" INT,
	"next" INT
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"cohort" VARCHAR,
	"role" VARCHAR,
	"firsttime" BOOLEAN,
	"student" BOOLEAN,
	"instactor" BOOLEAN,
	"courscreator" BOOLEAN,
	"admin" BOOLEAN
);
