DROP DATABASE IF EXISTS "schema1794";
CREATE DATABASE "schema1794";
USE "schema1794";
CREATE TABLE "employeetable" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roletable" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departmenttable" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
