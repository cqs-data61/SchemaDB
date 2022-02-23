DROP DATABASE IF EXISTS "schema1091";
CREATE DATABASE "schema1091";
USE "schema1091";
CREATE TABLE "local_group_updates" (
	"stream_id" BIGINT,
	"group_id" TEXT,
	"user_id" TEXT,
	"type" TEXT,
	"content" TEXT
);

CREATE TABLE "local_group_membership" (
	"group_id" TEXT,
	"user_id" TEXT,
	"is_admin" BOOLEAN,
	"membership" TEXT,
	"is_publicised" BOOLEAN,
	"content" TEXT
);

CREATE TABLE "group_attestations_remote" (
	"group_id" TEXT,
	"user_id" TEXT,
	"valid_until_ms" BIGINT,
	"attestation_json" TEXT
);

CREATE TABLE "group_attestations_renewals" (
	"group_id" TEXT,
	"user_id" TEXT,
	"valid_until_ms" BIGINT
);

CREATE TABLE "group_roles" (
	"group_id" TEXT,
	"role_id" TEXT,
	"profile" TEXT,
	"is_public" BOOLEAN
);

CREATE TABLE "group_summary_roles" (
	"group_id" TEXT,
	"role_id" TEXT,
	"role_order" BIGINT
);

CREATE TABLE "group_summary_users" (
	"group_id" TEXT,
	"user_id" TEXT,
	"role_id" TEXT,
	"user_order" BIGINT,
	"is_public" BOOLEAN
);

CREATE TABLE "group_room_categories" (
	"group_id" TEXT,
	"category_id" TEXT,
	"profile" TEXT,
	"is_public" BOOLEAN
);

CREATE TABLE "group_summary_room_categories" (
	"group_id" TEXT,
	"category_id" TEXT,
	"cat_order" BIGINT
);

CREATE TABLE "group_summary_rooms" (
	"group_id" TEXT,
	"room_id" TEXT,
	"category_id" TEXT,
	"room_order" BIGINT,
	"is_public" BOOLEAN
);

CREATE TABLE "group_rooms" (
	"group_id" TEXT,
	"room_id" TEXT,
	"is_public" BOOLEAN
);

CREATE TABLE "group_invites" (
	"group_id" TEXT,
	"user_id" TEXT
);

CREATE TABLE "group_users" (
	"group_id" TEXT,
	"user_id" TEXT,
	"is_admin" BOOLEAN,
	"is_public" BOOLEAN
);

CREATE TABLE "groups" (
	"group_id" TEXT,
	"name" TEXT,
	"avatar_url" TEXT,
	"short_description" TEXT,
	"long_description" TEXT
);
