DROP DATABASE IF EXISTS "schema2064";
CREATE DATABASE "schema2064";
USE "schema2064";
CREATE TABLE "animal" (
	"aid" INTEGER,
	"cage_number" INTEGER,
	"biological_class" TEXT,
	"species" TEXT,
	"feed_time" TEXT,
	"zoo_section" TEXT,
	"diet" TEXT,
	"zname" TEXT
);

CREATE TABLE "takes_care_of" (
	"eid" INTEGER,
	"aid" INTEGER
);

CREATE TABLE "employee" (
	"fname" TEXT,
	"minit" TEXT,
	"lname" TEXT,
	"eid" INTEGER,
	"phone_number" INTEGER,
	"s_date" DATE,
	"sex" TEXT,
	"age" INTEGER,
	"salary" TEXT,
	"zname" TEXT,
	"constraint" EMPLOYEE_K
);

CREATE TABLE "caretaker" (
	"specialty" TEXT,
	"eid" INTEGER,
	"zoo_subsection" TEXT,
	 CONSTRAINT "k_caretaker" FOREIGN KEY ("eid") REFERENCES "employee" ("eid")
);

CREATE TABLE "manager" (
	"zoo_subsection" TEXT,
	"eid" INTEGER,
	 CONSTRAINT "k_manager" FOREIGN KEY ("eid") REFERENCES "employee" ("eid")
);

CREATE TABLE "zoo" (
	"zname" TEXT,
	"business_hours" TEXT,
	"phone_number" INTEGER,
	"fax_number" INTEGER,
	"email" TEXT,
	"loc_city" TEXT,
	"loc_state" TEXT,
	"loc_zip" INTEGER,
	 PRIMARY KEY ("zname")
);
