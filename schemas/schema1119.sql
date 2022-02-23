DROP DATABASE IF EXISTS "schema1119";
CREATE DATABASE "schema1119";
USE "schema1119";
CREATE TABLE "employees" (
	"socialsecuritynumber" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"birthday" DATE,
	"employeetype" VARCHAR,
	"departmentname" VARCHAR,
	 PRIMARY KEY ("socialsecuritynumber")
);

CREATE TABLE "hourlyemployees" (
	"socialsecuritynumber" VARCHAR,
	"hours" INT,
	"wage" REAL,
	"bonus" REAL,
	 PRIMARY KEY ("socialsecuritynumber"),
	 CONSTRAINT "fkeycon_hourlyemployees_to_employees" FOREIGN KEY ("socialsecuritynumber") REFERENCES "employees" ("socialsecuritynumber")
);

CREATE TABLE "basepluscommissionemployees" (
	"socialsecuritynumber" VARCHAR,
	"grosssales" INT,
	"commissionrate" REAL,
	"basesalary" REAL,
	"bonus" REAL,
	 PRIMARY KEY ("socialsecuritynumber"),
	 CONSTRAINT "fkeycon_basepluscommissionemployees_to_employees" FOREIGN KEY ("socialsecuritynumber") REFERENCES "employees" ("socialsecuritynumber")
);

CREATE TABLE "commissionemployees" (
	"socialsecuritynumber" VARCHAR,
	"grosssales" INT,
	"commissionrate" REAL,
	"bonus" REAL,
	 PRIMARY KEY ("socialsecuritynumber"),
	 CONSTRAINT "fkeycon_commissionemployees_to_employees" FOREIGN KEY ("socialsecuritynumber") REFERENCES "employees" ("socialsecuritynumber")
);

CREATE TABLE "salariedemployees" (
	"socialsecuritynumber" VARCHAR,
	"weeklysalary" REAL,
	"bonus" REAL,
	 PRIMARY KEY ("socialsecuritynumber"),
	 CONSTRAINT "fkeycon_salariedemployees_to_employees" FOREIGN KEY ("socialsecuritynumber") REFERENCES "employees" ("socialsecuritynumber")
);
