DROP DATABASE IF EXISTS "schema2033";
CREATE DATABASE "schema2033";
USE "schema2033";
CREATE TABLE "push_campaign_user" (
	"id" INTEGER,
	"campaign_id" INTEGER,
	"user_id" INTEGER,
	"timestamp_created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "push_campaign" (
	"id" INTEGER,
	"app_id" INTEGER,
	"message" VARCHAR,
	"is_sent" BOOLEAN,
	"timestamp_created" TIMESTAMP,
	"timestamp_sent" TIMESTAMP,
	"timestamp_completed" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "push_message" (
	"id" INTEGER,
	"device_registration_id" INTEGER,
	"user_id" VARCHAR,
	"activation_id" VARCHAR,
	"is_silent" BOOLEAN,
	"is_personal" BOOLEAN,
	"message_body" VARCHAR,
	"timestamp_created" TIMESTAMP,
	"status" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "push_device_registration" (
	"id" INTEGER,
	"activation_id" VARCHAR,
	"user_id" VARCHAR,
	"app_id" INTEGER,
	"platform" VARCHAR,
	"push_token" VARCHAR,
	"timestamp_last_registered" TIMESTAMP,
	"is_active" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "push_app_credentials" (
	"id" INTEGER,
	"app_id" INTEGER,
	"ios_key_id" VARCHAR,
	"ios_private_key" BYTEA,
	"ios_team_id" VARCHAR,
	"ios_bundle" VARCHAR,
	"ios_environment" VARCHAR,
	"android_private_key" BYTEA,
	"android_project_id" VARCHAR,
	 PRIMARY KEY ("id")
);
