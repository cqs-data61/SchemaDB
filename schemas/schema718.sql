DROP DATABASE IF EXISTS "schema718";
CREATE DATABASE "schema718";
USE "schema718";
CREATE TABLE "acl_entries" (
	"id" INT,
	"class_id" INT,
	"object_identity_id" INT,
	"security_identity_id" INT,
	"field_name" VARCHAR,
	"ace_order" INT,
	"mask" INT,
	"granting" BOOLEAN,
	"granting_strategy" VARCHAR,
	"audit_success" BOOLEAN,
	"audit_failure" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_object_identity_ancestors" (
	"object_identity_id" INT,
	"ancestor_id" INT,
	 PRIMARY KEY ("object_identity_id","ancestor_id")
);

CREATE TABLE "acl_object_identities" (
	"id" INT,
	"parent_object_identity_id" INT,
	"class_id" INT,
	"object_identifier" VARCHAR,
	"entries_inheriting" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_security_identities" (
	"id" INT,
	"identifier" VARCHAR,
	"username" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_classes" (
	"id" INT,
	"class_type" VARCHAR,
	 PRIMARY KEY ("id")
);
