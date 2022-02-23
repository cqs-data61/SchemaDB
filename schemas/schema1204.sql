DROP DATABASE IF EXISTS "schema1204";
CREATE DATABASE "schema1204";
USE "schema1204";
CREATE TABLE "appointment" (
	"appt_id" SERIAL,
	"patient_id" INTEGER,
	"employee_id" INTEGER,
	 PRIMARY KEY ("appt_id")
);

CREATE TABLE "employees" (
	"emp_id" SERIAL,
	"fname" TEXT,
	"lname" TEXT,
	"age" INTEGER,
	"email" TEXT,
	"pass" TEXT,
	 PRIMARY KEY ("emp_id")
);

CREATE TABLE "patients" (
	"pat_id" SERIAL,
	"fname" TEXT,
	"lname" TEXT,
	"age" INTEGER,
	"email" TEXT,
	"pass" TEXT,
	 PRIMARY KEY ("pat_id")
);
