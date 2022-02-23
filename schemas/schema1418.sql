DROP DATABASE IF EXISTS "schema1418";
CREATE DATABASE "schema1418";
USE "schema1418";
CREATE TABLE "sharedbsnapshots" (
	"collection" VARCHAR,
	"doc_id" VARCHAR,
	"doc_type" VARCHAR,
	"version" INT,
	"data" TEXT,
	"_ctime" DATETIME,
	"_mtime" TIMESTAMP,
	 PRIMARY KEY ("collection","doc_id")
);

CREATE TABLE "sharedbops" (
	"collection" VARCHAR,
	"doc_id" VARCHAR,
	"version" INT,
	"operation" TEXT,
	"_ctime" TIMESTAMP,
	 PRIMARY KEY ("collection","doc_id","version")
);

CREATE TABLE "projectstosharedusers" (
	"uname" VARCHAR,
	"projectid" INT
);

CREATE TABLE "documents" (
	"id" INT,
	"name" VARCHAR,
	"projectid" INT,
	"ctime" TIMESTAMP,
	"utime" TIMESTAMP
);

CREATE TABLE "projects" (
	"id" INT,
	"name" VARCHAR,
	"env" ENUM,
	"owner" VARCHAR,
	"ctime" TIMESTAMP,
	"utime" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"uname" VARCHAR,
	"pword" VARCHAR,
	"salt" VARCHAR,
	"email" VARCHAR,
	"ctime" TIMESTAMP,
	"utime" TIMESTAMP
);
