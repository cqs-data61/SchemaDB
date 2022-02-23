DROP DATABASE IF EXISTS "schema2180";
CREATE DATABASE "schema2180";
USE "schema2180";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "data_files" (
	"id" INTEGER,
	"owner_id" INTEGER,
	"filename" TEXT,
	"longitude" TEXT,
	"latitude" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_data_files_to_user" FOREIGN KEY ("owner_id") REFERENCES "user" ("id")
);

CREATE TABLE "steps" (
	"id" INTEGER,
	"data_file_id" INTEGER,
	"step" TEXT,
	"parameters" TEXT,
	"up_to_date" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_steps_to_data_files" FOREIGN KEY ("data_file_id") REFERENCES "data_files" ("id")
);

CREATE TABLE "revisions" (
	"id" INTEGER,
	"data_file_id" INTEGER,
	"created" TIMESTAMP,
	"filepath" TEXT,
	"revision" INTEGER,
	"file_type" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_revisions_to_data_files" FOREIGN KEY ("data_file_id") REFERENCES "data_files" ("id")
);
