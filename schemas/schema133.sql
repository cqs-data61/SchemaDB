DROP DATABASE IF EXISTS "schema133";
CREATE DATABASE "schema133";
USE "schema133";
CREATE TABLE "jhi_user" (
	"id" BIGSERIAL,
	"login" CHARACTER VARYING,
	"password_hash" CHARACTER VARYING,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"image_url" CHARACTER VARYING,
	"activated" BOOLEAN,
	"lang_key" CHARACTER VARYING,
	"activation_key" CHARACTER VARYING,
	"reset_key" CHARACTER VARYING,
	"created_by" CHARACTER VARYING,
	"created_date" DATETIME,
	"reset_date" DATETIME,
	"last_modified_by" CHARACTER VARYING,
	"last_modified_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jhi_persistent_audit_event" (
	"event_id" BIGSERIAL,
	"principal" CHARACTER VARYING,
	"event_date" DATETIME,
	"event_type" CHARACTER VARYING,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "jhi_persistent_audit_evt_data" (
	"event_id" BIGINT,
	"name" CHARACTER VARYING,
	"value" CHARACTER VARYING,
	 PRIMARY KEY ("event_id","name"),
	 CONSTRAINT "fk_evt_pers_audit_evt_data" FOREIGN KEY ("event_id") REFERENCES "jhi_persistent_audit_event" ("event_id")
);

CREATE TABLE "jhi_authority" (
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("name")
);

CREATE TABLE "jhi_user_authority" (
	"user_id" BIGINT,
	"authority_name" CHARACTER VARYING,
	 PRIMARY KEY ("user_id","authority_name"),
	 CONSTRAINT "fk_authority_name" FOREIGN KEY ("authority_name") REFERENCES "jhi_authority" ("name"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "jhi_user" ("id")
);
