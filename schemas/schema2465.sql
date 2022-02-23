DROP DATABASE IF EXISTS "schema2465";
CREATE DATABASE "schema2465";
USE "schema2465";
CREATE TABLE "devolucion_vehiculos" (
	"id" INT,
	"fecha_entrega" DATE,
	"porcentaje_de_dano" INT,
	"valor_por_mora" DOUBLE,
	"valor_por_danos" DOUBLE,
	"valor_total_a_pagar" DOUBLE,
	"alquiler_vehiculos_id" INT
);

CREATE TABLE "alquiler_vehiculos" (
	"id" INT,
	"cantidad_dias_alquiler" INT,
	"valor_total_parcial" DOUBLE,
	"fecha_alquiler" DATE,
	"usuarios_id" INT,
	"vehiculos_id" INT
);

CREATE TABLE "vehiculos" (
	"id" INT,
	"placa" VARCHAR,
	"precio_alquiler_dia" VARCHAR,
	"tipo_vehiculo" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usuarios" (
	"id" INT,
	"nombre" VARCHAR,
	"cedula" VARCHAR,
	 PRIMARY KEY ("id")
);
