DROP DATABASE IF EXISTS "schema1994";
CREATE DATABASE "schema1994";
USE "schema1994";
CREATE TABLE "activitytypes" (
	"activitytypeid" SERIAL,
	"label" TEXT,
	 PRIMARY KEY ("activitytypeid")
);

CREATE TABLE "activities" (
	"activityid" SERIAL,
	"googleplaceslink" TEXT,
	"googlemapslink" TEXT,
	"activitytypeid" INTEGER,
	"externalgooglemapsurl" TEXT,
	"specificactivity" TEXT,
	"location" TEXT,
	"date" TEXT,
	"time" TEXT,
	"hostid" INTEGER,
	"guestid" INTEGER,
	 PRIMARY KEY ("activityid"),
	 CONSTRAINT "Activities_fk0" FOREIGN KEY ("activitytypeid") REFERENCES "activitytypes" ("activitytypeid")
);

CREATE TABLE "availabilitytypes" (
	"availabilitytypeid" SERIAL,
	"label" TEXT,
	 PRIMARY KEY ("availabilitytypeid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"firstname" TEXT,
	"lastname" TEXT,
	"email" TEXT,
	"password" TEXT,
	"profileimage" TEXT,
	"bio" TEXT,
	"interests" TEXT,
	"availabilitytypeid" INTEGER,
	 PRIMARY KEY ("userid"),
	 CONSTRAINT "Users_fk0" FOREIGN KEY ("availabilitytypeid") REFERENCES "availabilitytypes" ("availabilitytypeid")
);

CREATE TABLE "messages" (
	"messageid" SERIAL,
	"messagecontent" TEXT,
	"userid" INTEGER,
	"partnerid" INTEGER,
	"time" BIGINT,
	 PRIMARY KEY ("messageid"),
	 CONSTRAINT "Messages_fk1" FOREIGN KEY ("partnerid") REFERENCES "users" ("userid"),
	 CONSTRAINT "Messages_fk0" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
