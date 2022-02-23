DROP DATABASE IF EXISTS "schema414";
CREATE DATABASE "schema414";
USE "schema414";
CREATE TABLE "tbl_operacao" (
	"id_operacao" INTEGER,
	"nome" VARCHAR,
	 PRIMARY KEY ("id_operacao")
);

CREATE TABLE "tbl_registro" (
	"id_registro" INTEGER,
	"id_operacao" INTEGER,
	"data_operacao" TIMESTAMP,
	"corpo_requisicao" TEXT,
	"resultado" DECIMAL,
	"fl_erro" BOOLEAN,
	"ds_erro" TEXT,
	 PRIMARY KEY ("id_registro"),
	 CONSTRAINT "fk_id_operacao" FOREIGN KEY ("id_operacao") REFERENCES "tbl_operacao" ("id_operacao")
);
