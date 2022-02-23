DROP DATABASE IF EXISTS "schema918";
CREATE DATABASE "schema918";
USE "schema918";
CREATE TABLE "participants" (
	"participantid" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("participantid")
);

CREATE TABLE "admins" (
	"adminid" SERIAL,
	"name" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("adminid")
);

CREATE TABLE "rooms" (
	"roomid" SERIAL,
	"name" VARCHAR,
	"adminid" INT,
	 PRIMARY KEY ("roomid"),
	 CONSTRAINT "fkeycon_rooms_to_admins" FOREIGN KEY ("adminid") REFERENCES "admins" ("adminid")
);

CREATE TABLE "messages" (
	"messageid" SERIAL,
	"time" TEXT,
	"messagebody" TEXT,
	"roomid" INT,
	"participantid" INT,
	 PRIMARY KEY ("messageid"),
	 CONSTRAINT "fkeycon_messages_to_rooms" FOREIGN KEY ("roomid") REFERENCES "rooms" ("roomid"),
	 CONSTRAINT "fkeycon_messages_to_participants" FOREIGN KEY ("participantid") REFERENCES "participants" ("participantid")
);
