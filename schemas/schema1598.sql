DROP DATABASE IF EXISTS "schema1598";
CREATE DATABASE "schema1598";
USE "schema1598";
CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dept" (
	"id" INT,
	"deptname" VARCHAR,
	 PRIMARY KEY ("id")
);
