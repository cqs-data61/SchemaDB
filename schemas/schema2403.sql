DROP DATABASE IF EXISTS "schema2403";
CREATE DATABASE "schema2403";
USE "schema2403";
CREATE TABLE "users" (
	"id" INTEGER,
	"email" PUBLIC.CITEXT,
	"hashed_password" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session" (
	"session_key" CHARACTER,
	"session_data" BYTEA,
	"session_expiry" TIMESTAMP,
	 PRIMARY KEY ("session_key")
);

CREATE TABLE "migrations" (
	"id_migration" INTEGER,
	"name" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"statements" TEXT,
	"rollback_statements" TEXT,
	"status" ENUM,
	 PRIMARY KEY ("id_migration")
);
