DROP DATABASE IF EXISTS "schema944";
CREATE DATABASE "schema944";
USE "schema944";
CREATE TABLE "filter" (
	"id" INT,
	"puesto" VARCHAR,
	"descripcion" LONGTEXT,
	"pais" VARCHAR,
	"cate" VARCHAR,
	"rango" VARCHAR,
	"empresa_id" INT,
	"empresa_name" VARCHAR,
	"persona_id" INT,
	"estado" INT,
	"npostulantes" INT,
	"created_at" TIMESTAMP,
	"diferencia" INT
);

CREATE TABLE "estadop" (
	"id" INT,
	"estados" VARCHAR
);

CREATE TABLE "estado" (
	"id" INT,
	"estados" VARCHAR
);

CREATE TABLE "empresas" (
	"id" INT,
	"codigo" BIGINT,
	"rsocial" VARCHAR,
	"pais" VARCHAR,
	"telefono" INT,
	"correo" VARCHAR,
	"contrasena" VARCHAR,
	"direccion" VARCHAR,
	"pagina" VARCHAR,
	"fb" VARCHAR
);

CREATE TABLE "trabajos" (
	"id" INT,
	"puesto" VARCHAR,
	"descripcion" LONGTEXT,
	"pais" VARCHAR,
	"cate" VARCHAR,
	"rango" VARCHAR,
	"empresa_id" INT,
	"empresa_name" VARCHAR,
	"estado" INT,
	"npostulantes" INT,
	"created_at" TIMESTAMP,
	"diferencia" INT,
	 CONSTRAINT "fkeycon_trabajos_to_empresas" FOREIGN KEY ("empresa_id") REFERENCES "empresas" ("id"),
	 CONSTRAINT "fkeycon_trabajos_to_estado" FOREIGN KEY ("estado") REFERENCES "estado" ("id")
);

CREATE TABLE "personas" (
	"id" INT,
	"codigo" INT,
	"nombre" VARCHAR,
	"apellido" VARCHAR,
	"genero" VARCHAR,
	"correo" VARCHAR,
	"contrasena" VARCHAR,
	"edad" INT,
	"celular" INT,
	"pais" VARCHAR
);

CREATE TABLE "postulantes" (
	"id" INT,
	"id_persona" INT,
	"trabajo_id" INT,
	"url_postulante" VARCHAR,
	"estado" INT,
	 CONSTRAINT "fkeycon_postulantes_to_estadop" FOREIGN KEY ("estado") REFERENCES "estadop" ("id"),
	 CONSTRAINT "fkeycon_postulantes_to_trabajos" FOREIGN KEY ("trabajo_id") REFERENCES "trabajos" ("id"),
	 CONSTRAINT "fkeycon_postulantes_to_personas" FOREIGN KEY ("id_persona") REFERENCES "personas" ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"roles" VARCHAR
);

CREATE TABLE "users" (
	"id" INT,
	"codigo" VARCHAR,
	"contrasena" VARCHAR,
	"id_rol" INT,
	"id_persona" INT,
	"id_empresa" INT,
	 CONSTRAINT "fkeycon_users_to_personas" FOREIGN KEY ("id_persona") REFERENCES "personas" ("id"),
	 CONSTRAINT "fkeycon_users_to_roles" FOREIGN KEY ("id_rol") REFERENCES "roles" ("id"),
	 CONSTRAINT "fkeycon_users_to_empresas" FOREIGN KEY ("id_empresa") REFERENCES "empresas" ("id")
);
