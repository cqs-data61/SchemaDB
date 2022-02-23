DROP DATABASE IF EXISTS "schema1272";
CREATE DATABASE "schema1272";
USE "schema1272";
CREATE TABLE "veiculos" (
	"id" INT,
	"marca" VARCHAR,
	"modelo" VARCHAR,
	"ano" INT,
	"placa" VARCHAR,
	"selo" INT,
	"cor" VARCHAR,
	"ativo" INT,
	"usuario_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usuarios" (
	"id" INT,
	"cpf" VARCHAR,
	"nome" VARCHAR,
	"sexo" INT,
	"tipo" INT,
	"curso" VARCHAR,
	"codigo" VARCHAR,
	"empresa" VARCHAR,
	"setor" VARCHAR,
	"email" VARCHAR,
	"endereco_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "telefones" (
	"code" VARCHAR,
	"numero" VARCHAR,
	"usuario_id" INT
);

CREATE TABLE "enderecos" (
	"id" INT,
	"cep" VARCHAR,
	"logradouro" VARCHAR,
	"bairro" VARCHAR,
	"complemento" VARCHAR,
	"numero" INT,
	"cidade" VARCHAR,
	"uf" VARCHAR,
	 PRIMARY KEY ("id")
);
