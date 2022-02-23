DROP DATABASE IF EXISTS "schema512";
CREATE DATABASE "schema512";
USE "schema512";
CREATE TABLE "appmnt" (
	"dogwalkerid" INT,
	"walkdate" DATE,
	"timeslot" TIME,
	"doguser" INT,
	"dateadded" DATETIME,
	"dateupdated" DATETIME
);

CREATE TABLE "dog" (
	"id" INT,
	"dogactorid" INT,
	"dogname" VARCHAR,
	"breed" VARCHAR,
	"breedurl" VARCHAR,
	"dateadded" DATETIME,
	"dateupdated" DATETIME
);

CREATE TABLE "dogactor" (
	"id" INT,
	"actortype" BOOLEAN,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"city" VARCHAR,
	"st" ENUM,
	"phone" INT,
	"phonetype" ENUM,
	"zip5" INT,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"username" VARCHAR,
	"pw" VARCHAR,
	"dateadded" DATETIME,
	"dateupdated" DATETIME
);
