DROP DATABASE IF EXISTS "schema1716";
CREATE DATABASE "schema1716";
USE "schema1716";
CREATE TABLE "cuenta" (
	"id" BIGSERIAL,
	"propietario" VARCHAR,
	"tope" BIGINT,
	"divisa" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transferencia" (
	"id" BIGSERIAL,
	"from_cuenta_id" BIGINT,
	"to_cuenta_id" BIGINT,
	"monto" BIGINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transferencia_to_cuenta" FOREIGN KEY ("to_cuenta_id") REFERENCES "cuenta" ("id")
);

CREATE TABLE "ingreso" (
	"id" BIGSERIAL,
	"cuenta_id" BIGINT,
	"monto" BIGINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_ingreso_to_cuenta" FOREIGN KEY ("cuenta_id") REFERENCES "cuenta" ("id")
);
