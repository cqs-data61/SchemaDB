DROP DATABASE IF EXISTS "schema1719";
CREATE DATABASE "schema1719";
USE "schema1719";
CREATE TABLE "units" (
	"unit_id" VARCHAR,
	"gender" VARCHAR,
	"type" VARCHAR,
	"building" VARCHAR,
	 PRIMARY KEY ("unit_id")
);

CREATE TABLE "rooms" (
	"room_id" VARCHAR,
	"unit_id" VARCHAR,
	"occupied" BOOL,
	"price" INT,
	 PRIMARY KEY ("room_id"),
	 CONSTRAINT "fk_room" FOREIGN KEY ("unit_id") REFERENCES "units" ("unit_id")
);

CREATE TABLE "tenants" (
	"tenant_id" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	"gender" VARCHAR,
	"email" VARCHAR,
	"contact" VARCHAR,
	"room_id" VARCHAR,
	 PRIMARY KEY ("tenant_id"),
	 CONSTRAINT "fk_tenant" FOREIGN KEY ("room_id") REFERENCES "rooms" ("room_id")
);
