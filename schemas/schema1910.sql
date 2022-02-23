DROP DATABASE IF EXISTS "schema1910";
CREATE DATABASE "schema1910";
USE "schema1910";
CREATE TABLE "tipo_usuario" (
	"tipo_id" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("tipo_id")
);

CREATE TABLE "usuario" (
	"usuario_id" INT,
	"email" VARCHAR,
	"nome" VARCHAR,
	"tipo" INT,
	 PRIMARY KEY ("usuario_id"),
	 CONSTRAINT "fk_tipo" FOREIGN KEY ("tipo") REFERENCES "tipo_usuario" ("tipo_id")
);

CREATE TABLE "status" (
	"status_id" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "os" (
	"os_id" INT,
	"dev" INT,
	"desc" TEXT,
	"data_abertura" DATE,
	"data_fechamento" DATE,
	"data_inicio_atend" DATE,
	"prazo" INT,
	"cliente" INT,
	"status" INT,
	"justificativa" VARCHAR,
	"assunto" VARCHAR,
	 PRIMARY KEY ("os_id")
);

CREATE TABLE "feedback" (
	"feedback_id" INT,
	"desc" VARCHAR,
	"autor" INT,
	"data_hora" TIMESTAMP,
	"os" INT,
	 PRIMARY KEY ("feedback_id")
);
