DROP DATABASE IF EXISTS "schema2454";
CREATE DATABASE "schema2454";
USE "schema2454";
CREATE TABLE "item_pedido" (
	"id" INTEGER,
	"pedido_id" INTEGER,
	"produto_id" INTEGER,
	"quantidade" INTEGER
);

CREATE TABLE "pedido" (
	"id" INTEGER,
	"cliente_id" INTEGER,
	"status" VARCHAR,
	"data_pedido" TIMESTAMP,
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
