DROP DATABASE IF EXISTS "schema1826";
CREATE DATABASE "schema1826";
USE "schema1826";
CREATE TABLE "producto" (
	"cod_producto" CHAR,
	"nombre" VARCHAR,
	"precio" DECIMAL,
	 PRIMARY KEY ("cod_producto")
);

CREATE TABLE "sucursal" (
	"cod_sucursal" CHAR,
	"nombre" VARCHAR,
	 PRIMARY KEY ("cod_sucursal")
);

CREATE TABLE "usuario" (
	"cod_usuario" CHAR,
	"nombre" VARCHAR,
	"user" VARCHAR,
	"password" VARCHAR,
	"cod_sucursal" CHAR,
	 PRIMARY KEY ("cod_usuario"),
	 CONSTRAINT "FK_SUCURSAL" FOREIGN KEY ("cod_sucursal") REFERENCES "sucursal" ("cod_sucursal")
);
