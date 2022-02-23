DROP DATABASE IF EXISTS "schema2056";
CREATE DATABASE "schema2056";
USE "schema2056";
CREATE TABLE "verification_token" (
	"id" SERIAL,
	"token" VARCHAR,
	"user_uuid" VARCHAR,
	"expire_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_reset" (
	"id" SERIAL,
	"token" VARCHAR,
	"user_uuid" VARCHAR,
	"expire_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "persistent_login" (
	"series" VARCHAR,
	"user_uuid" VARCHAR,
	"token" VARCHAR,
	"last_used" TIMESTAMP,
	 PRIMARY KEY ("series")
);

CREATE TABLE "roles_privileges" (
	"role_id" INT,
	"privilege_id" INT
);

CREATE TABLE "privilege" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_roles" (
	"user_uuid" VARCHAR,
	"role_id" INTEGER
);

CREATE TABLE "user_attempts" (
	"id" SERIAL,
	"user_uuid" VARCHAR,
	"attempts" INTEGER,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_files" (
	"user_uuid" VARCHAR,
	"file_id" INT
);

CREATE TABLE "user_answer" (
	"uuid" VARCHAR,
	"user_uuid" VARCHAR,
	"question_id" INT,
	"answer" TEXT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "question_translation" (
	"id" SERIAL,
	"question_id" INT,
	"question_text" TEXT,
	"language" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "question" (
	"id" SERIAL,
	"day" VARCHAR,
	"month" VARCHAR,
	"year" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"uuid" VARCHAR,
	"username" VARCHAR,
	"socialid" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" TEXT,
	"enabled" BOOLEAN,
	"accountnonexpired" BOOLEAN,
	"accountnonlocked" BOOLEAN,
	"credentialsnonexpired" BOOLEAN,
	"authprovider" INT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "file" (
	"id" SERIAL,
	"name" VARCHAR,
	"size" INT,
	"content_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
