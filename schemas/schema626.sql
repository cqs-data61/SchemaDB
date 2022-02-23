DROP DATABASE IF EXISTS "schema626";
CREATE DATABASE "schema626";
USE "schema626";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR
);

CREATE TABLE "credentials" (
	"id" INT,
	"url" VARCHAR,
	"username" VARCHAR,
	"key" VARCHAR,
	"password" VARCHAR,
	"userid" INT,
	 CONSTRAINT "fkeycon_credentials_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "files" (
	"id" INT,
	"filename" VARCHAR,
	"contenttype" VARCHAR,
	"filesize" VARCHAR,
	"userid" INT,
	"filedata" BLOB,
	 CONSTRAINT "fkeycon_files_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "notes" (
	"id" INT,
	"notetitle" VARCHAR,
	"notedescription" VARCHAR,
	"userid" INT,
	 CONSTRAINT "fkeycon_notes_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);
