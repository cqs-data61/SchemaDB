DROP DATABASE IF EXISTS "schema1724";
CREATE DATABASE "schema1724";
USE "schema1724";
CREATE TABLE "historial" (
	"id_historial" INT,
	"numero_identificacion" INT,
	"valor_transferencia" DECIMAL,
	"fecha_transferencia" TIMESTAMP,
	"fecha_calificacion" TIMESTAMP,
	"fecha_valorizacion" TIMESTAMP,
	"equipo_futbol_anterior" VARCHAR,
	"equipo_futbol_traspaso" VARCHAR,
	"minutos_jugados" INT,
	"torneos_ganados" INT,
	"goles" INT,
	 PRIMARY KEY ("id_historial")
);

CREATE TABLE "jugador" (
	"id_jugador" INT,
	"numero_identificacion" INT,
	"edad" INT,
	"valorizacion" DECIMAL,
	"calificacion" DECIMAL,
	"fecha_inicio_temporada" TIMESTAMP,
	"fecha_fin_temporada" TIMESTAMP,
	"fecha_valorizacion" TIMESTAMP,
	"equipo_futbol" VARCHAR,
	"minutos_jugados" INT,
	"torneos_ganados" INT,
	"goles" INT,
	 PRIMARY KEY ("id_jugador")
);
