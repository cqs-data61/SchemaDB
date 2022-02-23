DROP DATABASE IF EXISTS "schema1633";
CREATE DATABASE "schema1633";
USE "schema1633";
CREATE TABLE "cert_auth_associations" (
	"id" VARCHAR,
	"sha256" CHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id","sha256")
);

CREATE TABLE "push_certs" (
	"topic" VARCHAR,
	"cert_pem" TEXT,
	"key_pem" TEXT,
	"stale_token" INTEGER,
	 PRIMARY KEY ("topic")
);

CREATE TABLE "commands" (
	"command_uuid" VARCHAR,
	"request_type" VARCHAR,
	"command" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("command_uuid")
);

CREATE TABLE "devices" (
	"id" VARCHAR,
	"identity_cert" TEXT,
	"serial_number" VARCHAR,
	"unlock_token" MEDIUMBLOB,
	"unlock_token_at" TIMESTAMP,
	"authenticate" TEXT,
	"authenticate_at" TIMESTAMP,
	"token_update" TEXT,
	"token_update_at" TIMESTAMP,
	"bootstrap_token_b64" TEXT,
	"bootstrap_token_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"device_id" VARCHAR,
	"user_short_name" VARCHAR,
	"user_long_name" VARCHAR,
	"token_update" TEXT,
	"token_update_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id","device_id"),
	 CONSTRAINT "fkeycon_users_to_devices" FOREIGN KEY ("device_id") REFERENCES "devices" ("id")
);

CREATE TABLE "enrollments" (
	"id" VARCHAR,
	"device_id" VARCHAR,
	"user_id" VARCHAR,
	"type" VARCHAR,
	"topic" VARCHAR,
	"push_magic" VARCHAR,
	"token_hex" VARCHAR,
	"enabled" BOOLEAN,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_enrollments_to_devices" FOREIGN KEY ("device_id") REFERENCES "devices" ("id"),
	 CONSTRAINT "fkeycon_enrollments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "enrollment_queue" (
	"id" VARCHAR,
	"command_uuid" VARCHAR,
	"active" BOOLEAN,
	"priority" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id","command_uuid"),
	 CONSTRAINT "fkeycon_enrollment_queue_to_commands" FOREIGN KEY ("command_uuid") REFERENCES "commands" ("command_uuid"),
	 CONSTRAINT "fkeycon_enrollment_queue_to_enrollments" FOREIGN KEY ("id") REFERENCES "enrollments" ("id")
);

CREATE TABLE "command_results" (
	"id" VARCHAR,
	"command_uuid" VARCHAR,
	"status" VARCHAR,
	"result" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id","command_uuid"),
	 CONSTRAINT "fkeycon_command_results_to_enrollments" FOREIGN KEY ("id") REFERENCES "enrollments" ("id"),
	 CONSTRAINT "fkeycon_command_results_to_commands" FOREIGN KEY ("command_uuid") REFERENCES "commands" ("command_uuid")
);
