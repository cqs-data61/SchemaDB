DROP DATABASE IF EXISTS "schema527";
CREATE DATABASE "schema527";
USE "schema527";
CREATE TABLE "user_types" (
	"id" BIGINT,
	"user_type_name" VARCHAR,
	"inforce" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"user_name" VARCHAR,
	"email" VARCHAR,
	"emp_id" INT,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"mobile1" VARCHAR,
	"mobile2" VARCHAR,
	"user_type_id" BIGINT,
	"inforce" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_user_type_id_foreign" FOREIGN KEY ("user_type_id") REFERENCES "user_types" ("id")
);

CREATE TABLE "personal_access_tokens" (
	"id" BIGINT,
	"tokenable_type" VARCHAR,
	"tokenable_id" BIGINT,
	"name" VARCHAR,
	"token" VARCHAR,
	"abilities" TEXT,
	"last_used_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
