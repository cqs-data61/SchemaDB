DROP DATABASE IF EXISTS "schema488";
CREATE DATABASE "schema488";
USE "schema488";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"access_token" VARCHAR,
	"state_id" INT,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	"role_id" INT,
	"online" TINYINT,
	"profile_id" INT,
	"verification_email" TINYINT
);

CREATE TABLE "role" (
	"id" INT,
	"type" VARCHAR
);

CREATE TABLE "profile_image" (
	"id" INT,
	"path" VARCHAR,
	"url" VARCHAR,
	"profile_id" INT
);

CREATE TABLE "profile" (
	"id" INT,
	"birth_date" VARCHAR,
	"description" VARCHAR,
	"email" VARCHAR,
	"default_profile_image_id" INT,
	"gender_id" INT,
	"lat" FLOAT,
	"lng" FLOAT,
	"gender_preference_id" INT
);

CREATE TABLE "message" (
	"id" INT,
	"chat_id" INT,
	"user_sender_id" INT,
	"message" VARCHAR
);

CREATE TABLE "matches" (
	"id" INT,
	"user_matcher_id" INT,
	"user_matched_id" INT
);

CREATE TABLE "gender" (
	"id" INT,
	"type" VARCHAR
);

CREATE TABLE "chat_room" (
	"id" INT,
	"user_sender_id" INT,
	"user_receiver_id" INT
);
