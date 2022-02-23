DROP DATABASE IF EXISTS "schema1482";
CREATE DATABASE "schema1482";
USE "schema1482";
CREATE TABLE "roomreqs" (
	"reqid" INT,
	"userid" INT,
	"approxage" VARCHAR,
	"rrpref" VARCHAR,
	"emergencyname" VARCHAR,
	"emergencyphone" VARCHAR,
	"checkin" VARCHAR,
	"checkout" VARCHAR,
	"arrtime" VARCHAR,
	"roomtype" VARCHAR,
	"roommateuserid" VARCHAR,
	 PRIMARY KEY ("reqid")
);

CREATE TABLE "rooms" (
	"roomid" INT,
	"dorm" VARCHAR,
	"roomno" VARCHAR,
	"single" TINYINT,
	"mar21userid" INT,
	 PRIMARY KEY ("roomid")
);

CREATE TABLE "people" (
	"id" INT,
	"userid" INT,
	"prefix" VARCHAR,
	"firstname" VARCHAR,
	"middlename" VARCHAR,
	"lastname" VARCHAR,
	"suffix" VARCHAR,
	"nickname" VARCHAR,
	"phonecell" VARCHAR,
	"phonehome" VARCHAR,
	"email" VARCHAR,
	"addressline1" VARCHAR,
	"addressline2" VARCHAR,
	"addresscity" VARCHAR,
	"addressstate" VARCHAR,
	"addresszip" VARCHAR,
	"addresscountry" VARCHAR,
	"areaofstudy1" VARCHAR,
	"areaofstudy2" VARCHAR,
	"areaofstudy3" VARCHAR,
	"areaofstudy4" VARCHAR,
	"areaofstudy5" VARCHAR,
	"program1" VARCHAR,
	"program2" VARCHAR,
	"program3" VARCHAR,
	"program4" VARCHAR,
	"role1" VARCHAR,
	"role2" VARCHAR,
	"role3" VARCHAR,
	"role4" VARCHAR,
	"role5" VARCHAR,
	"vendorco" VARCHAR,
	"guestof" VARCHAR,
	"yearsattended" INT,
	"arrivaldate" VARCHAR,
	"departuredate" VARCHAR,
	"housingrequested" VARCHAR,
	"mealcardrequested" VARCHAR,
	 PRIMARY KEY ("id")
);
