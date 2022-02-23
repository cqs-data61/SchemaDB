DROP DATABASE IF EXISTS "schema1967";
CREATE DATABASE "schema1967";
USE "schema1967";
CREATE TABLE "department" (
	"id" INT,
	"dep_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
