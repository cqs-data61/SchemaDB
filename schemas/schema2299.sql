DROP DATABASE IF EXISTS "schema2299";
CREATE DATABASE "schema2299";
USE "schema2299";
CREATE TABLE "transitline" (
	"time" INT
);

CREATE TABLE "trainstation" (
	"uniqueid" INT,
	"name" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("uniqueid")
);

CREATE TABLE "trainschedule" (
	"transitlinename" VARCHAR,
	"fare" DOUBLE,
	"traveltime" TIME,
	"arrivaldatetime" DATETIME,
	"departuredatetime" DATETIME,
	"stops" VARCHAR,
	 PRIMARY KEY ("transitlinename")
);

CREATE TABLE "train" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservation" (
	"reservationnumber" BIGINT,
	"passenger" VARCHAR,
	"fare" DOUBLE,
	"trip" INT,
	"departtime" DATETIME,
	"origin" VARCHAR,
	"destination" VARCHAR,
	"transitline" VARCHAR,
	"canceled" INT,
	 PRIMARY KEY ("reservationnumber")
);

CREATE TABLE "planned" (
	"reservationnumber" BIGINT,
	"transitlinename" VARCHAR,
	 PRIMARY KEY ("reservationnumber","transitlinename")
);

CREATE TABLE "has" (
	"id" INT,
	"transitlinename" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"ssn" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"admin" TINYINT,
	"customerrep" TINYINT,
	 PRIMARY KEY ("ssn")
);

CREATE TABLE "workson" (
	"ssn" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("ssn"),
	 CONSTRAINT "WorksOn_ibfk_1" FOREIGN KEY ("id") REFERENCES "train" ("id"),
	 CONSTRAINT "WorksOn_ibfk_2" FOREIGN KEY ("ssn") REFERENCES "employee" ("ssn")
);

CREATE TABLE "worksat" (
	"uniqueid" INT,
	"ssn" VARCHAR,
	 PRIMARY KEY ("ssn"),
	 CONSTRAINT "WorksAt_ibfk_1" FOREIGN KEY ("uniqueid") REFERENCES "trainstation" ("uniqueid"),
	 CONSTRAINT "WorksAt_ibfk_2" FOREIGN KEY ("ssn") REFERENCES "employee" ("ssn")
);

CREATE TABLE "customer" (
	"username" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"e-mail" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "requests" (
	"reservationnumber" BIGINT,
	"username" VARCHAR,
	 PRIMARY KEY ("reservationnumber","username"),
	 CONSTRAINT "Requests_ibfk_2" FOREIGN KEY ("username") REFERENCES "customer" ("username")
);

CREATE TABLE "messages" (
	"ssn" VARCHAR,
	"username" VARCHAR,
	"question" VARCHAR,
	"answer" VARCHAR,
	"uniquenumber" INT,
	 PRIMARY KEY ("uniquenumber"),
	 CONSTRAINT "Messages_ibfk_1" FOREIGN KEY ("ssn") REFERENCES "employee" ("ssn"),
	 CONSTRAINT "Messages_ibfk_2" FOREIGN KEY ("username") REFERENCES "customer" ("username")
);

CREATE TABLE "contains" (
	"uniqueid" INT,
	"transitlinename" VARCHAR,
	"origin" VARCHAR,
	"destination" VARCHAR,
	 PRIMARY KEY ("uniqueid","transitlinename")
);
