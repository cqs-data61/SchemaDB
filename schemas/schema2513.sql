DROP DATABASE IF EXISTS "schema2513";
CREATE DATABASE "schema2513";
USE "schema2513";
CREATE TABLE "org" (
	"orgid" SERIAL,
	"createdat" DATETIME,
	"name" TEXT,
	"url" TEXT,
	"plan" TEXT,
	"planstatus" TEXT,
	 PRIMARY KEY ("orgid")
);

CREATE TABLE "project" (
	"projectid" SERIAL,
	"createdat" DATETIME,
	"name" TEXT,
	"description" TEXT,
	"geolocation" TEXT,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"orgid" INTEGER,
	 PRIMARY KEY ("projectid"),
	 CONSTRAINT "fkeycon_project_to_org" FOREIGN KEY ("orgid") REFERENCES "org" ("orgid")
);

CREATE TABLE "indicator" (
	"projectid" INTEGER,
	"indicatorid" TEXT,
	"alignedstrength" TEXT,
	 PRIMARY KEY ("projectid","indicatorid"),
	 CONSTRAINT "fkeycon_indicator_to_project" FOREIGN KEY ("projectid") REFERENCES "project" ("projectid")
);

CREATE TABLE "outcome" (
	"outcomeid" SERIAL,
	"description" TEXT,
	"projectid" INTEGER,
	 PRIMARY KEY ("outcomeid"),
	 CONSTRAINT "fkeycon_outcome_to_project" FOREIGN KEY ("projectid") REFERENCES "project" ("projectid")
);

CREATE TABLE "impact" (
	"impactid" SERIAL,
	"description" TEXT,
	"projectid" INTEGER,
	 PRIMARY KEY ("impactid"),
	 CONSTRAINT "fkeycon_impact_to_project" FOREIGN KEY ("projectid") REFERENCES "project" ("projectid")
);

CREATE TABLE "beneficiary" (
	"beneficiaryid" SERIAL,
	"createdat" DATETIME,
	"name" TEXT,
	"lifechange" TEXT,
	"projectid" INTEGER,
	 PRIMARY KEY ("beneficiaryid"),
	 CONSTRAINT "fkeycon_beneficiary_to_project" FOREIGN KEY ("projectid") REFERENCES "project" ("projectid")
);

CREATE TABLE "demographic" (
	"demographicid" SERIAL,
	"createdat" DATETIME,
	"name" TEXT,
	"operator" TEXT,
	"value" TEXT,
	"beneficiaryid" INTEGER,
	 PRIMARY KEY ("demographicid"),
	 CONSTRAINT "fkeycon_demographic_to_beneficiary" FOREIGN KEY ("beneficiaryid") REFERENCES "beneficiary" ("beneficiaryid")
);

CREATE TABLE "user" (
	"userid" VARCHAR,
	"createdat" DATETIME,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"status" BOOLEAN,
	"lastorgid" INTEGER,
	 PRIMARY KEY ("userid"),
	 CONSTRAINT "fkeycon_user_to_org" FOREIGN KEY ("lastorgid") REFERENCES "org" ("orgid")
);

CREATE TABLE "projectuser" (
	"projectuserid" SERIAL,
	"projectid" INTEGER,
	"userid" VARCHAR,
	"role" ENUM,
	"status" BOOLEAN,
	"createdat" DATETIME,
	 PRIMARY KEY ("projectuserid"),
	 CONSTRAINT "fkeycon_projectuser_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("userid"),
	 CONSTRAINT "fkeycon_projectuser_to_project" FOREIGN KEY ("projectid") REFERENCES "project" ("projectid")
);

CREATE TABLE "orguser" (
	"orguserid" SERIAL,
	"orgid" INTEGER,
	"userid" VARCHAR,
	"role" ENUM,
	"invitationtoken" TEXT,
	"status" BOOLEAN,
	"createdat" DATETIME,
	 PRIMARY KEY ("orguserid"),
	 CONSTRAINT "fkeycon_orguser_to_org" FOREIGN KEY ("orgid") REFERENCES "org" ("orgid"),
	 CONSTRAINT "fkeycon_orguser_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("userid")
);
