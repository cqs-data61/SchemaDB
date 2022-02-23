DROP DATABASE IF EXISTS "schema120";
CREATE DATABASE "schema120";
USE "schema120";
CREATE TABLE "departmenttable" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roletable" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roletable_to_departmenttable" FOREIGN KEY ("department_id") REFERENCES "departmenttable" ("id")
);

CREATE TABLE "employeetable" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employeetable_to_roletable" FOREIGN KEY ("manager_id") REFERENCES "roletable" ("id")
);
