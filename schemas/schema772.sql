DROP DATABASE IF EXISTS "schema772";
CREATE DATABASE "schema772";
USE "schema772";
CREATE TABLE "department" (
	"id" INT,
	"deptname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"departmentid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"employeeid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"roleid" INT,
	"managerid" INT,
	 PRIMARY KEY ("id")
);
