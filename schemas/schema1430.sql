DROP DATABASE IF EXISTS "schema1430";
CREATE DATABASE "schema1430";
USE "schema1430";
CREATE TABLE "credentials" (
	"credentialid" INT,
	"url" VARCHAR,
	"username" VARCHAR,
	"keyvalue" VARCHAR,
	"password" VARCHAR,
	"userid" INT
);

CREATE TABLE "files" (
	"fileid" INT,
	"filename" VARCHAR,
	"contenttype" VARCHAR,
	"filesize" VARCHAR,
	"userid" INT,
	"filedata" BLOB
);

CREATE TABLE "notes" (
	"noteid" INT,
	"notetitle" VARCHAR,
	"notedescription" VARCHAR,
	"userid" INT
);

CREATE TABLE "users" (
	"userid" INT,
	"username" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR
);
