DROP DATABASE IF EXISTS "schema1634";
CREATE DATABASE "schema1634";
USE "schema1634";
CREATE TABLE "usu_usuario" (
	"usu_id" BIGINT,
	"usu_nome_usuario" VARCHAR,
	"usu_senha" VARCHAR,
	"usu_nome_exibicao" VARCHAR,
	"usu_administrador" VARCHAR,
	"adm_classificacao" INT,
	 PRIMARY KEY ("usu_id")
);

CREATE TABLE "gru_grupo" (
	"gru_id" BIGINT,
	"gru_mestre" BIGINT,
	"gru_nome" VARCHAR,
	 PRIMARY KEY ("gru_id","gru_mestre"),
	 CONSTRAINT "FK_GRU_PER" FOREIGN KEY ("gru_mestre") REFERENCES "usu_usuario" ("usu_id")
);

CREATE TABLE "per_personagem" (
	"per_id" BIGINT,
	"per_proprietario" BIGINT,
	"per_nome" VARCHAR,
	"per_raca" VARCHAR,
	"per_classe" VARCHAR,
	"per_nivel" BIGINT,
	"per_antecedente" VARCHAR,
	"per_forca" BIGINT,
	"per_destreza" BIGINT,
	"per_constituicao" BIGINT,
	"per_inteligencia" BIGINT,
	"per_sabedoria" BIGINT,
	"per_carisma" BIGINT,
	 PRIMARY KEY ("per_id","per_proprietario"),
	 CONSTRAINT "FK_PER_USU" FOREIGN KEY ("per_proprietario") REFERENCES "usu_usuario" ("usu_id")
);

CREATE TABLE "int_integrante" (
	"gru_id" BIGINT,
	"per_id" BIGINT,
	 PRIMARY KEY ("gru_id","per_id"),
	 CONSTRAINT "FK_INT_PER" FOREIGN KEY ("per_id") REFERENCES "per_personagem" ("per_id"),
	 CONSTRAINT "FK_INT_GRU" FOREIGN KEY ("gru_id") REFERENCES "gru_grupo" ("gru_id")
);

CREATE TABLE "lut_lutador" (
	"lut_id" BIGINT,
	"lut_dados_superioridade" INT,
	 PRIMARY KEY ("lut_id"),
	 CONSTRAINT "FK_LUT_USU" FOREIGN KEY ("lut_id") REFERENCES "per_personagem" ("per_id")
);

CREATE TABLE "fei_feiticeiro" (
	"fei_id" BIGINT,
	"fei_magias_conhecidas" INT,
	"fei_modificador_habilidade" INT,
	 PRIMARY KEY ("fei_id"),
	 CONSTRAINT "FK_FEI_USU" FOREIGN KEY ("fei_id") REFERENCES "per_personagem" ("per_id")
);
