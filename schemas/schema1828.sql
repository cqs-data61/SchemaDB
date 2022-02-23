DROP DATABASE IF EXISTS "schema1828";
CREATE DATABASE "schema1828";
USE "schema1828";
CREATE TABLE "dept" (
	"id" INTEGER,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"dept_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_role_to_dept" FOREIGN KEY ("dept_id") REFERENCES "dept" ("id")
);

CREATE TABLE "employee" (
	"id" INTEGER,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("manager_id") REFERENCES "employee" ("id"),
	 CONSTRAINT "fkeycon_employee_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
