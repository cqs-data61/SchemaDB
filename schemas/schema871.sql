DROP DATABASE IF EXISTS "schema871";
CREATE DATABASE "schema871";
USE "schema871";
CREATE TABLE "spring_session" (
	"primary_id" CHAR,
	"session_id" CHAR,
	"creation_time" BIGINT,
	"last_access_time" BIGINT,
	"max_inactive_interval" INT,
	"expiry_time" BIGINT,
	"principal_name" VARCHAR,
	 PRIMARY KEY ("primary_id")
);

CREATE TABLE "spring_session_attributes" (
	"session_primary_id" CHAR,
	"attribute_name" VARCHAR,
	"attribute_bytes" BYTEA,
	 PRIMARY KEY ("session_primary_id","attribute_name"),
	 CONSTRAINT "spring_session_attributes_fk" FOREIGN KEY ("session_primary_id") REFERENCES "spring_session" ("primary_id")
);

CREATE TABLE "persistent_logins" (
	"username" VARCHAR,
	"series" VARCHAR,
	"token" VARCHAR,
	"last_used" TIMESTAMP,
	 PRIMARY KEY ("series")
);
