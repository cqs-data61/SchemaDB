DROP DATABASE IF EXISTS "schema1948";
CREATE DATABASE "schema1948";
USE "schema1948";
CREATE TABLE "status" (
	"idstatus" INT,
	"status" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("idstatus")
);

CREATE TABLE "venue" (
	"idvenue" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("idvenue")
);

CREATE TABLE "event" (
	"idevent" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"date" DATETIME,
	"idvenue" INT,
	 PRIMARY KEY ("idevent"),
	 CONSTRAINT "FK_idVenue" FOREIGN KEY ("idvenue") REFERENCES "venue" ("idvenue")
);

CREATE TABLE "section" (
	"idsection" INT,
	"name" VARCHAR,
	"totalcapacity" INT,
	"cost" DECIMAL,
	"idevent" INT,
	 PRIMARY KEY ("idsection"),
	 CONSTRAINT "FK_Event" FOREIGN KEY ("idevent") REFERENCES "event" ("idevent")
);

CREATE TABLE "ticket" (
	"idticket" BIGINT,
	"seatnumber" VARCHAR,
	"idstatus" INT,
	"idsection" INT,
	 PRIMARY KEY ("idticket"),
	 CONSTRAINT "FK_Section" FOREIGN KEY ("idsection") REFERENCES "section" ("idsection"),
	 CONSTRAINT "FK_Status" FOREIGN KEY ("idstatus") REFERENCES "status" ("idstatus")
);

CREATE TABLE "participant" (
	"idparticipant" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("idparticipant")
);

CREATE TABLE "event_has_participant" (
	"idevent" INT,
	"idparticipant" INT,
	 PRIMARY KEY ("idevent","idparticipant"),
	 CONSTRAINT "FK_Event_Participant" FOREIGN KEY ("idevent") REFERENCES "event" ("idevent"),
	 CONSTRAINT "FK_Participant_Event" FOREIGN KEY ("idparticipant") REFERENCES "participant" ("idparticipant")
);
