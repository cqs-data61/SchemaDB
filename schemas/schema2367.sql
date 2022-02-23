DROP DATABASE IF EXISTS "schema2367";
CREATE DATABASE "schema2367";
USE "schema2367";
CREATE TABLE "restricciones" (
	"idrestricciones" INT,
	"maximoenergia" FLOAT,
	"minimoenergia" FLOAT,
	"fijoenergia" FLOAT,
	"maximoproteinas" FLOAT,
	"minimoproteinas" FLOAT,
	"fijoproteinas" FLOAT,
	"maximocarbohidratos" FLOAT,
	"minimocarbohidratos" FLOAT,
	"fijocarbohidratos" FLOAT,
	"maximograsas" FLOAT,
	"minimograsas" FLOAT,
	"fijograsas" FLOAT
);

CREATE TABLE "porcentajecomidas" (
	"id" INTEGER,
	"desayuno" INTEGER,
	"brakemanana" INTEGER,
	"almuerzo" INTEGER,
	"braketarde" INTEGER,
	"merienda" INTEGER
);

CREATE TABLE "breaktarde" (
	"id" INTEGER,
	"nombre" VARCHAR,
	"energia" FLOAT,
	"proteinas" FLOAT,
	"carbohidratos" FLOAT,
	"grasas" FLOAT,
	"costo" FLOAT,
	"pdesayuno" INT
);

CREATE TABLE "breakmanana" (
	"id" INTEGER,
	"nombre" VARCHAR,
	"energia" FLOAT,
	"proteinas" FLOAT,
	"carbohidratos" FLOAT,
	"grasas" FLOAT,
	"costo" FLOAT,
	"pdesayuno" INT
);

CREATE TABLE "merienda" (
	"id" INTEGER,
	"nombre" VARCHAR,
	"energia" FLOAT,
	"proteinas" FLOAT,
	"carbohidratos" FLOAT,
	"grasas" FLOAT,
	"costo" FLOAT,
	"pdesayuno" INT
);

CREATE TABLE "almuerzo" (
	"id" INTEGER,
	"nombre" VARCHAR,
	"energia" FLOAT,
	"proteinas" FLOAT,
	"carbohidratos" FLOAT,
	"grasas" FLOAT,
	"costo" FLOAT,
	"pdesayuno" INT
);

CREATE TABLE "desayuno" (
	"id" INTEGER,
	"nombre" VARCHAR,
	"energia" FLOAT,
	"proteinas" FLOAT,
	"carbohidratos" FLOAT,
	"grasas" FLOAT,
	"costo" FLOAT,
	"pdesayuno" INT
);

CREATE TABLE "usuario" (
	"ced_usu" VARCHAR,
	"nom_usu" VARCHAR,
	"ape_usu" VARCHAR,
	"pass_usu" VARCHAR,
	 PRIMARY KEY ("ced_usu")
);

CREATE TABLE "medidas" (
	"id" INTEGER,
	"fecha_med" VARCHAR,
	"edad_med" VARCHAR,
	"peso_med" VARCHAR,
	"talla_med" VARCHAR,
	"imc_med" VARCHAR,
	"mtb_med" VARCHAR,
	"sex_med" VARCHAR,
	"ced_usu_med" VARCHAR,
	 CONSTRAINT "fkeycon_medidas_to_usuario" FOREIGN KEY ("ced_usu_med") REFERENCES "usuario" ("ced_usu")
);
