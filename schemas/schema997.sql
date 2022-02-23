DROP DATABASE IF EXISTS "schema997";
CREATE DATABASE "schema997";
USE "schema997";
CREATE TABLE "reminder" (
	"id" VARCHAR,
	"author" VARCHAR,
	"index" INTEGER,
	"message" VARCHAR,
	"reminderdate" DATETIME,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "warning" (
	"id" VARCHAR,
	"member" VARCHAR,
	"message" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message" (
	"id" VARCHAR,
	"author" VARCHAR,
	"body" VARCHAR,
	"channel" VARCHAR,
	"guild" VARCHAR,
	"reactions" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "command" (
	"id" VARCHAR,
	"name" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"messageid" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "Command_MessageId_fkey" FOREIGN KEY ("messageid") REFERENCES "message" ("id")
);

CREATE TABLE "commanddata" (
	"id" VARCHAR,
	"key" VARCHAR,
	"value" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"commandid" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "CommandData_CommandId_fkey" FOREIGN KEY ("commandid") REFERENCES "command" ("id")
);
