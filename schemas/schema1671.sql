DROP DATABASE IF EXISTS "schema1671";
CREATE DATABASE "schema1671";
USE "schema1671";
CREATE TABLE "usuario" (
	"id" INTEGER,
	"login" VARCHAR,
	"senha" VARCHAR,
	"admin" BOOL
);

CREATE TABLE "item_pedido" (
	"id" INTEGER,
	"pedido_id" INTEGER,
	"produto_id" INTEGER,
	"quantidade" INTEGER
);

CREATE TABLE "pedido" (
	"id" INTEGER,
	"cliente_id" INTEGER,
	"data_pedido" TIMESTAMP,
	"status" VARCHAR,
	"total" NUMERIC
);

CREATE TABLE "produto" (
	"id" INTEGER,
	"descricao" VARCHAR,
	"preco_unitario" NUMERIC
);

CREATE TABLE "cliente" (
	"id" INTEGER,
	"nome" VARCHAR,
	"cpf" VARCHAR
);
