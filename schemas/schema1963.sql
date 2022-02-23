DROP DATABASE IF EXISTS "schema1963";
CREATE DATABASE "schema1963";
USE "schema1963";
CREATE TABLE "department" (
	"departmentid" INT,
	"departmentname" VARCHAR
);

CREATE TABLE "role" (
	"roleid" INT,
	"role" VARCHAR,
	"salary" DECIMAL,
	"departmentid" INT
);

CREATE TABLE "employees" (
	"employeeid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"roleid" INT,
	"managerid" INT
);
