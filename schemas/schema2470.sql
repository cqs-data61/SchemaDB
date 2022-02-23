DROP DATABASE IF EXISTS "schema2470";
CREATE DATABASE "schema2470";
USE "schema2470";
CREATE TABLE "departmenttable" (
	"id" INT,
	"deptname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roletable" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"departmentid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roletable_to_departmenttable" FOREIGN KEY ("departmentid") REFERENCES "departmenttable" ("id")
);

CREATE TABLE "employeetable" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"roleid" INT,
	"managerid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employeetable_to_employeetable" FOREIGN KEY ("managerid") REFERENCES "employeetable" ("id"),
	 CONSTRAINT "fkeycon_employeetable_to_roletable" FOREIGN KEY ("roleid") REFERENCES "roletable" ("id")
);
