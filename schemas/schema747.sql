DROP DATABASE IF EXISTS "schema747";
CREATE DATABASE "schema747";
USE "schema747";
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
	"userid" INT,
	"url" VARCHAR,
	"username" VARCHAR,
	"key" VARCHAR,
	"password" VARCHAR,
	 CONSTRAINT "fkeycon_credentials_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "files" (
	"fileid" INT,
	"userid" INT,
	"filename" VARCHAR,
	"contenttype" VARCHAR,
	"filesize" VARCHAR,
	"filedata" BLOB,
	 CONSTRAINT "fkeycon_files_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "notes" (
	"noteid" INT,
	"userid" INT,
	"notetitle" VARCHAR,
	"notedescription" VARCHAR,
	 CONSTRAINT "fkeycon_notes_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
