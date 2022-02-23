DROP DATABASE IF EXISTS "schema1919";
CREATE DATABASE "schema1919";
USE "schema1919";
CREATE TABLE "storage" (
	"id" BYTEA,
	"user_id" BYTEA,
	"bucket" VARCHAR,
	"collection" VARCHAR,
	"record" VARCHAR,
	"value" BYTEA,
	"version" BYTEA,
	"read" SMALLINT,
	"write" SMALLINT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"expires_at" BIGINT,
	"deleted_at" BIGINT,
	 PRIMARY KEY ("bucket","collection","user_id","record","deleted_at")
);

CREATE TABLE "message" (
	"topic" BYTEA,
	"topic_type" SMALLINT,
	"message_id" BYTEA,
	"user_id" BYTEA,
	"created_at" BIGINT,
	"expires_at" BIGINT,
	"handle" VARCHAR,
	"type" SMALLINT,
	"data" BYTEA,
	 PRIMARY KEY ("topic","topic_type","message_id")
);

CREATE TABLE "group_edge" (
	"source_id" BYTEA,
	"position" BIGINT,
	"updated_at" BIGINT,
	"destination_id" BYTEA,
	"state" SMALLINT,
	 PRIMARY KEY ("source_id","state","position")
);

CREATE TABLE "groups" (
	"id" BYTEA,
	"creator_id" BYTEA,
	"name" VARCHAR,
	"description" VARCHAR,
	"avatar_url" VARCHAR,
	"lang" VARCHAR,
	"utc_offset_ms" SMALLINT,
	"metadata" BYTEA,
	"state" SMALLINT,
	"count" INT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"disabled_at" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_edge_metadata" (
	"source_id" BYTEA,
	"count" INT,
	"state" SMALLINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("source_id")
);

CREATE TABLE "user_edge" (
	"source_id" BYTEA,
	"position" BIGINT,
	"updated_at" BIGINT,
	"destination_id" BYTEA,
	"state" SMALLINT,
	 PRIMARY KEY ("source_id","state","position")
);

CREATE TABLE "users" (
	"id" BYTEA,
	"handle" VARCHAR,
	"fullname" VARCHAR,
	"avatar_url" VARCHAR,
	"lang" VARCHAR,
	"location" VARCHAR,
	"timezone" VARCHAR,
	"utc_offset_ms" SMALLINT,
	"metadata" BYTEA,
	"email" VARCHAR,
	"password" BYTEA,
	"facebook_id" VARCHAR,
	"google_id" VARCHAR,
	"gamecenter_id" VARCHAR,
	"steam_id" VARCHAR,
	"custom_id" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"verified_at" BIGINT,
	"disabled_at" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_device" (
	"id" VARCHAR,
	"user_id" BYTEA,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_device_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
