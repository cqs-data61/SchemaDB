DROP DATABASE IF EXISTS "schema2020";
CREATE DATABASE "schema2020";
USE "schema2020";
CREATE TABLE "doctors" (
	"id" INT,
	"speciality" TEXT,
	"taking_patients" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patients" (
	"id" INT,
	"doctor_id" INT,
	"health_status" TEXT,
	 PRIMARY KEY ("id","doctor_id"),
	 CONSTRAINT "fkeycon_patients_to_doctors" FOREIGN KEY ("doctor_id") REFERENCES "doctors" ("id")
);
