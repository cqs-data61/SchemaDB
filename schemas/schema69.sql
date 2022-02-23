DROP DATABASE IF EXISTS "schema69";
CREATE DATABASE "schema69";
USE "schema69";
CREATE TABLE "action" (
	"action" VARCHAR,
	 PRIMARY KEY ("action")
);

CREATE TABLE "offer" (
	"testcentre" VARCHAR,
	"testtype" VARCHAR
);

CREATE TABLE "test_slot" (
	"time" TIME,
	 PRIMARY KEY ("time")
);

CREATE TABLE "test_type" (
	"testtype" VARCHAR,
	 PRIMARY KEY ("testtype")
);

CREATE TABLE "method" (
	"method" VARCHAR,
	 PRIMARY KEY ("method")
);

CREATE TABLE "place" (
	"name" VARCHAR,
	"gps" VARCHAR,
	"address" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "person" (
	"name" VARCHAR,
	"address" VARCHAR,
	"phone" VARCHAR,
	"sin" VARCHAR,
	 PRIMARY KEY ("sin")
);

CREATE TABLE "recon" (
	"sin" VARCHAR,
	"method" VARCHAR,
	"placename" VARCHAR,
	"time" TIME,
	 PRIMARY KEY ("sin","method","placename","time"),
	 CONSTRAINT "fk_rplace" FOREIGN KEY ("placename") REFERENCES "place" ("name"),
	 CONSTRAINT "fk_rperson" FOREIGN KEY ("sin") REFERENCES "person" ("sin"),
	 CONSTRAINT "fk_rtime" FOREIGN KEY ("time") REFERENCES "test_slot" ("time"),
	 CONSTRAINT "fk_rmethod" FOREIGN KEY ("method") REFERENCES "method" ("method")
);

CREATE TABLE "test" (
	"sin" VARCHAR,
	"testtype" VARCHAR,
	"time" TIME,
	"testcentre" VARCHAR,
	 CONSTRAINT "fk_testtype" FOREIGN KEY ("testtype") REFERENCES "test_type" ("testtype"),
	 CONSTRAINT "fk_testslot" FOREIGN KEY ("time") REFERENCES "test_slot" ("time"),
	 CONSTRAINT "fk_testcentre" FOREIGN KEY ("testcentre") REFERENCES "place" ("name"),
	 CONSTRAINT "fk_person" FOREIGN KEY ("sin") REFERENCES "person" ("sin")
);
