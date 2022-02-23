DROP DATABASE IF EXISTS "schema1152";
CREATE DATABASE "schema1152";
USE "schema1152";
CREATE TABLE "tag" (
	"tagid" INT,
	"name" VARCHAR,
	"type" VARCHAR,
	"createdate" TIMESTAMP,
	"lastupdated" TIMESTAMP,
	 PRIMARY KEY ("tagid")
);

CREATE TABLE "instiution" (
	"instiutionid" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("instiutionid")
);

CREATE TABLE "consumer" (
	"consumerid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"institutionid" INT,
	"createdate" TIMESTAMP,
	"lastupdated" TIMESTAMP,
	"lastlogindate" TIMESTAMP,
	"signedupdate" TIMESTAMP,
	 PRIMARY KEY ("consumerid"),
	 CONSTRAINT "institutionId_consumer_fk" FOREIGN KEY ("institutionid") REFERENCES "instiution" ("instiutionid")
);

CREATE TABLE "presentation" (
	"presentationid" INT,
	"name" VARCHAR,
	"abstract" TEXT,
	"title" VARCHAR,
	"presenterid" INT,
	"posterpdfurl" VARCHAR,
	"createdate" TIMESTAMP,
	"lastupdated" TIMESTAMP,
	"presentationdate" TIMESTAMP,
	 PRIMARY KEY ("presentationid"),
	 CONSTRAINT "presenterId_fk" FOREIGN KEY ("presenterid") REFERENCES "consumer" ("consumerid")
);

CREATE TABLE "presentationtag" (
	"presentationid" INT,
	"tagid" INT,
	"createdate" TIMESTAMP,
	"lastupdated" TIMESTAMP,
	 PRIMARY KEY ("presentationid","tagid"),
	 CONSTRAINT "presentationId_fk" FOREIGN KEY ("presentationid") REFERENCES "presentation" ("presentationid"),
	 CONSTRAINT "tagId_fk" FOREIGN KEY ("tagid") REFERENCES "tag" ("tagid")
);

CREATE TABLE "domain" (
	"domainid" INT,
	"name" VARCHAR,
	"institutionid" INT,
	 PRIMARY KEY ("domainid"),
	 CONSTRAINT "institutionId_fk" FOREIGN KEY ("institutionid") REFERENCES "instiution" ("instiutionid")
);
