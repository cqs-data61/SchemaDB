DROP DATABASE IF EXISTS "schema1340";
CREATE DATABASE "schema1340";
USE "schema1340";
CREATE TABLE "acl_entry" (
	"id" BIGINT,
	"acl_object_identity" BIGINT,
	"ace_order" INT,
	"sid" BIGINT,
	"mask" INT,
	"granting" TINYINT,
	"audit_success" TINYINT,
	"audit_failure" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_object_identity" (
	"id" BIGINT,
	"object_id_class" BIGINT,
	"object_id_identity" BIGINT,
	"parent_object" BIGINT,
	"owner_sid" BIGINT,
	"entries_inheriting" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_class" (
	"id" BIGINT,
	"class" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_sid" (
	"id" BIGINT,
	"principal" TINYINT,
	"sid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system_message" (
	"id" LONG,
	"content" VARCHAR,
	 PRIMARY KEY ("id")
);
