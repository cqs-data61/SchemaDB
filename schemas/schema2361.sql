DROP DATABASE IF EXISTS "schema2361";
CREATE DATABASE "schema2361";
USE "schema2361";
CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"status" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "verification" (
	"code" VARCHAR,
	"type" ENUM,
	"user_id" INT,
	 PRIMARY KEY ("code"),
	 CONSTRAINT "fk_Verification_User1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "zone" (
	"id" INT,
	"name" VARCHAR,
	"cnameflattening" TINYINT,
	"dnssec" TINYINT,
	"enabled" TINYINT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_Zone_User" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "location" (
	"id" INT,
	"name" VARCHAR,
	"enabled" TINYINT,
	"zone_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_Location_Zone" FOREIGN KEY ("zone_id") REFERENCES "zone" ("id")
);

CREATE TABLE "recordset" (
	"id" INT,
	"type" ENUM,
	"value" LONGTEXT,
	"enabled" TINYINT,
	"location_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_RecordSet_Location" FOREIGN KEY ("location_id") REFERENCES "location" ("id")
);
