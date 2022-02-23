DROP DATABASE IF EXISTS "schema1351";
CREATE DATABASE "schema1351";
USE "schema1351";
CREATE TABLE "garages" (
	"id" BIGINT,
	"nombre" VARCHAR,
	"lugares_por_piso" INTEGER,
	"pisos" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tickets" (
	"id" BIGINT,
	"lugar" INTEGER,
	"piso" INTEGER,
	"fecha_ingreso" TIMESTAMP,
	"fecha_egreso" TIMESTAMP,
	"total" FLOAT,
	"garage_id" BIGINT,
	"borrado" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkcocie5ejqp1brs88clvy7ykf1" FOREIGN KEY ("garage_id") REFERENCES "garages" ("id")
);

CREATE TABLE "vehiculos" (
	"tipo" VARCHAR,
	"id" BIGINT,
	"patente" VARCHAR,
	"tarifa" FLOAT,
	"ticket_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fksb3fbuevh03pvt6tuuoxbg1s2" FOREIGN KEY ("ticket_id") REFERENCES "tickets" ("id")
);
