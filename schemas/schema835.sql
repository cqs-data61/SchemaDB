DROP DATABASE IF EXISTS "schema835";
CREATE DATABASE "schema835";
USE "schema835";
CREATE TABLE "tbl_usuarios" (
	"id" INT,
	"nome_usuario" VARCHAR,
	"cpf" BIGINT,
	"email" VARCHAR,
	"senha" VARCHAR,
	"grupo" VARCHAR,
	"ativo_inativo" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_produtos" (
	"id" INT,
	"nome_produto" VARCHAR,
	"avaliacao" INT,
	"descricao_detalhada" VARCHAR,
	"preco" DECIMAL,
	"qtd_estoque" INT,
	"ativo_inativo" BOOLEAN,
	"imagem_produto" VARCHAR,
	 PRIMARY KEY ("id")
);
