DROP DATABASE IF EXISTS "schema199";
CREATE DATABASE "schema199";
USE "schema199";
CREATE TABLE "interest_groups" (
	"groupid" SERIAL,
	"groupname" VARCHAR,
	"membercount" INT,
	 PRIMARY KEY ("groupid")
);

CREATE TABLE "events" (
	"eventid" SERIAL,
	"eventname" VARCHAR,
	"description" VARCHAR,
	"startdate" DATE,
	"starttime" TIME,
	"duration" TIME,
	"hostgroupid" INT,
	"attendeecount" INT,
	 PRIMARY KEY ("eventid"),
	 CONSTRAINT "fk_events_interest_groups" FOREIGN KEY ("hostgroupid") REFERENCES "interest_groups" ("groupid")
);

CREATE TABLE "members" (
	"memberid" SERIAL,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"phonenumber" VARCHAR,
	"birthday" DATE,
	"isoktoemail" BOOLEAN,
	 PRIMARY KEY ("memberid")
);

CREATE TABLE "event_attendees" (
	"eventid" INT,
	"attendeeid" INT,
	 PRIMARY KEY ("eventid","attendeeid"),
	 CONSTRAINT "fk_event_attendees_members" FOREIGN KEY ("attendeeid") REFERENCES "members" ("memberid"),
	 CONSTRAINT "fk_event_attendees_events" FOREIGN KEY ("eventid") REFERENCES "events" ("eventid")
);

CREATE TABLE "member_groups" (
	"memberid" SERIAL,
	"groupid" SERIAL,
	 PRIMARY KEY ("memberid","groupid"),
	 CONSTRAINT "fk_member_groups_interest_groups" FOREIGN KEY ("groupid") REFERENCES "interest_groups" ("groupid"),
	 CONSTRAINT "fk_member_groups_members" FOREIGN KEY ("memberid") REFERENCES "members" ("memberid")
);
