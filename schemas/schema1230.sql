DROP DATABASE IF EXISTS "schema1230";
CREATE DATABASE "schema1230";
USE "schema1230";
CREATE TABLE "usuario" (
	"id_usuario" VARCHAR,
	"clave_usuario" VARCHAR,
	"nombre_usuario" VARCHAR,
	"shodan_key" VARCHAR,
	 PRIMARY KEY ("id_usuario")
);

CREATE TABLE "consulta" (
	"id_consulta" VARCHAR,
	"id_usuario" VARCHAR,
	"votos_consulta" INTEGER,
	"titulo_consulta" VARCHAR,
	"descripcion_consulta" VARCHAR,
	"contenido_consulta" TEXT,
	"g_timestamp" DATETIME,
	 PRIMARY KEY ("id_consulta"),
	 CONSTRAINT "fk_consulta_usuario" FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario")
);

CREATE TABLE "comentario" (
	"id_comentario" VARCHAR,
	"id_usuario" VARCHAR,
	"id_consulta" VARCHAR,
	"contenido_comentario" TEXT,
	"valoracion_comentario" INTEGER,
	"p_timestamp" DATETIME,
	 PRIMARY KEY ("id_comentario"),
	 CONSTRAINT "fk_comentario_usuario" FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario")
);
