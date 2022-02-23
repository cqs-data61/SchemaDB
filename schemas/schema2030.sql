DROP DATABASE IF EXISTS "schema2030";
CREATE DATABASE "schema2030";
USE "schema2030";
CREATE TABLE "transaccion" (
	"id" INT,
	"id_cuenta_origen" INT,
	"id_cuenta_destino" INT,
	"valor_transaccion" DOUBLE,
	"porcentaje_descuento" DOUBLE,
	"estado" INT,
	"fecha_creacion" DATETIME
);

CREATE TABLE "cuenta" (
	"id" INT,
	"numero_cuenta" VARCHAR,
	"monto" DOUBLE,
	"monto_maximo" DOUBLE,
	"id_cliente" INT,
	"fecha_creacion" DATETIME
);

CREATE TABLE "cliente" (
	"id" INT,
	"nombre" VARCHAR,
	"apellido" VARCHAR,
	"numero_documento" VARCHAR,
	"tipo_documento" INT,
	"clave" VARCHAR,
	"fecha_creacion" DATETIME,
	"id_usuario_creacion" INT
);

CREATE TABLE "usuario" (
	"id" INT,
	"nombre" VARCHAR,
	"clave" VARCHAR,
	"fecha_creacion" DATETIME
);
