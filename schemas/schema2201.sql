DROP DATABASE IF EXISTS "schema2201";
CREATE DATABASE "schema2201";
USE "schema2201";
CREATE TABLE "attendee" (
	"companyid" INTEGER,
	"username" VARCHAR,
	 PRIMARY KEY ("companyid")
);

CREATE TABLE "hosts" (
	"hostid" INTEGER,
	"username" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("hostid")
);

CREATE TABLE "templates" (
	"templateid" INTEGER,
	"hostid" INTEGER,
	"templatename" VARCHAR,
	"emotionsselected" VARCHAR,
	"question" VARCHAR,
	 PRIMARY KEY ("templateid"),
	 CONSTRAINT "fkeycon_templates_to_hosts" FOREIGN KEY ("hostid") REFERENCES "hosts" ("hostid")
);

CREATE TABLE "meeting" (
	"meetingid" INTEGER,
	"hostid" INTEGER,
	"templateid" INTEGER,
	"meetingname" VARCHAR,
	"duration" VARCHAR,
	"category" VARCHAR,
	"starttime" TIME,
	 PRIMARY KEY ("meetingid"),
	 CONSTRAINT "fkeycon_meeting_to_hosts" FOREIGN KEY ("hostid") REFERENCES "hosts" ("hostid"),
	 CONSTRAINT "fkeycon_meeting_to_templates" FOREIGN KEY ("templateid") REFERENCES "templates" ("templateid")
);

CREATE TABLE "attendance" (
	"meetingid" INTEGER,
	"companyid" INTEGER,
	 PRIMARY KEY ("meetingid","companyid"),
	 CONSTRAINT "fkeycon_attendance_to_meeting" FOREIGN KEY ("meetingid") REFERENCES "meeting" ("meetingid")
);

CREATE TABLE "feedback" (
	"feedbackid" INTEGER,
	"generaltext" VARCHAR,
	"emotion" VARCHAR,
	"ftime" TIME,
	"rating" VARCHAR,
	 PRIMARY KEY ("feedbackid")
);

CREATE TABLE "userfeedback" (
	"feedbackid" INTEGER,
	"meetingid" INTEGER,
	"companyid" INTEGER,
	 PRIMARY KEY ("feedbackid"),
	 CONSTRAINT "fkeycon_userfeedback_to_feedback" FOREIGN KEY ("feedbackid") REFERENCES "feedback" ("feedbackid"),
	 CONSTRAINT "fkeycon_userfeedback_to_meeting" FOREIGN KEY ("meetingid") REFERENCES "meeting" ("meetingid"),
	 CONSTRAINT "fkeycon_userfeedback_to_attendee" FOREIGN KEY ("companyid") REFERENCES "attendee" ("companyid")
);
