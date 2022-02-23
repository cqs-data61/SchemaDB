DROP DATABASE IF EXISTS "schema2376";
CREATE DATABASE "schema2376";
USE "schema2376";
CREATE TABLE "manufacturer" (
	"manufacturerid" INT,
	"manufacturer" VARCHAR,
	 PRIMARY KEY ("manufacturerid")
);

CREATE TABLE "car" (
	"carid" INT,
	"manufacturerid" INT,
	"model" VARCHAR,
	"year" INT,
	"colour" VARCHAR,
	"price" DECIMAL,
	 PRIMARY KEY ("carid"),
	 CONSTRAINT "fkeycon_car_to_manufacturer" FOREIGN KEY ("manufacturerid") REFERENCES "manufacturer" ("manufacturerid")
);
