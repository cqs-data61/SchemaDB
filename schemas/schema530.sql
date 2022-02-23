DROP DATABASE IF EXISTS "schema530";
CREATE DATABASE "schema530";
USE "schema530";
CREATE TABLE "email" (
	"id" BIGINT,
	"body" CHARACTER,
	"sender" CHARACTER,
	"subject" CHARACTER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bulk_email" (
	"id" BIGINT,
	"uuid" CHARACTER,
	"email_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_to_email" FOREIGN KEY ("email_id") REFERENCES "email" ("id")
);

CREATE TABLE "bulk_email_recipients" (
	"bulk_email_id" BIGINT,
	"recipients" CHARACTER,
	 CONSTRAINT "fk_to_bulk_email" FOREIGN KEY ("bulk_email_id") REFERENCES "bulk_email" ("id")
);

CREATE TABLE "email_attachments_paths" (
	"email_id" BIGINT,
	"attachments_paths" CHARACTER,
	 CONSTRAINT "fk_to_email" FOREIGN KEY ("email_id") REFERENCES "email" ("id")
);
