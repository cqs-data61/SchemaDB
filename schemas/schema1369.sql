DROP DATABASE IF EXISTS "schema1369";
CREATE DATABASE "schema1369";
USE "schema1369";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "tasks" (
	"id" INT,
	"name" VARCHAR,
	"checked" TINYINT,
	"id_folder" INT
);

CREATE TABLE "folders" (
	"id" INT,
	"name" VARCHAR,
	"id_user" INT
);
