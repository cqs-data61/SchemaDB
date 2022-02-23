DROP DATABASE IF EXISTS "schema333";
CREATE DATABASE "schema333";
USE "schema333";
CREATE TABLE "report" (
	"report_id" INT,
	"event_id" INT,
	"text" TEXT,
	"lang" ENUM
);

CREATE TABLE "report_team" (
	"report_team_id" INT,
	"report_id" INT,
	"team_id" INT,
	 CONSTRAINT "report_team_fk1" FOREIGN KEY ("report_id") REFERENCES "report" ("report_id")
);

CREATE TABLE "report_image" (
	"report_image_id" INT,
	"report_id" INT,
	"caption" VARCHAR,
	"filename" VARCHAR,
	 CONSTRAINT "report_image_ibfk_1" FOREIGN KEY ("report_id") REFERENCES "report" ("report_id")
);

CREATE TABLE "faq" (
	"faq_id" INT,
	"question" TEXT,
	"answer" TEXT,
	"lang" ENUM,
	"category" VARCHAR,
	 PRIMARY KEY ("faq_id")
);
