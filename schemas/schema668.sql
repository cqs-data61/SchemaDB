DROP DATABASE IF EXISTS "schema668";
CREATE DATABASE "schema668";
USE "schema668";
CREATE TABLE "users" (
	"userid" INT,
	"username" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR
);

CREATE TABLE "credentials" (
	"credentialid" INT,
	"url" VARCHAR,
	"username" VARCHAR,
	"key" VARCHAR,
	"password" VARCHAR,
	"userid" INT,
	 CONSTRAINT "fkeycon_credentials_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "files" (
	"fileid" INT,
	"filename" VARCHAR,
	"contenttype" VARCHAR,
	"filesize" VARCHAR,
	"userid" INT,
	"filedata" BLOB,
	 CONSTRAINT "fkeycon_files_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "notes" (
	"noteid" INT,
	"notetitle" VARCHAR,
	"notedescription" VARCHAR,
	"userid" INT,
	 CONSTRAINT "fkeycon_notes_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
