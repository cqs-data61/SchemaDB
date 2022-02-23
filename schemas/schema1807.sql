DROP DATABASE IF EXISTS "schema1807";
CREATE DATABASE "schema1807";
USE "schema1807";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"pic" VARCHAR,
	"roles" INT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"permissions" TEXT
);

CREATE TABLE "permissions" (
	"id" INT,
	"name" VARCHAR,
	"level" TINYINT,
	"parentid" INT
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "mesagges" (
	"id" INT,
	"name" VARCHAR,
	"aciklama" VARCHAR,
	"user_id" INT,
	"email" VARCHAR
);

CREATE TABLE "belediye_profil" (
	"id" INT,
	"name" VARCHAR,
	"il" VARCHAR,
	"ilce" VARCHAR,
	"adres" TEXT,
	"telefon" VARCHAR,
	"email" VARCHAR,
	"web_site" VARCHAR,
	"status" TINYINT,
	"logo" VARCHAR
);
