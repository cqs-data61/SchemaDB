DROP DATABASE IF EXISTS "schema1291";
CREATE DATABASE "schema1291";
USE "schema1291";
CREATE TABLE "dnac" (
	"id" INTEGER,
	"addr" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "device" (
	"id" INTEGER,
	"dnac_id" INTEGER,
	"uuid" CHAR,
	"hostname" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_device_to_dnac" FOREIGN KEY ("dnac_id") REFERENCES "dnac" ("id")
);

CREATE TABLE "backup" (
	"id" INTEGER,
	"device_id" INTEGER,
	"created" TIMESTAMP,
	"config_type" TEXT,
	"content" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_backup_to_device" FOREIGN KEY ("device_id") REFERENCES "device" ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "job" (
	"id" INTEGER,
	"author_id" INTEGER,
	"dnac_id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"frequency" UNSIGNED,
	"activated" BIT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_job_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_job_to_dnac" FOREIGN KEY ("dnac_id") REFERENCES "dnac" ("id")
);

CREATE TABLE "job_device" (
	"job_id" INTEGER,
	"device_id" INTEGER,
	 PRIMARY KEY ("job_id","device_id"),
	 CONSTRAINT "fkeycon_job_device_to_device" FOREIGN KEY ("device_id") REFERENCES "device" ("id"),
	 CONSTRAINT "fkeycon_job_device_to_job" FOREIGN KEY ("job_id") REFERENCES "job" ("id")
);

CREATE TABLE "user_dnac" (
	"user_id" INTEGER,
	"dnac_id" INTEGER,
	"dnac_user" TEXT,
	"dnac_pass" TEXT,
	"restconf_user" TEXT,
	"restconf_pass" TEXT,
	 PRIMARY KEY ("user_id","dnac_id"),
	 CONSTRAINT "fkeycon_user_dnac_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_user_dnac_to_dnac" FOREIGN KEY ("dnac_id") REFERENCES "dnac" ("id")
);
