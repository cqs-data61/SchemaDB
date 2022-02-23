DROP DATABASE IF EXISTS "schema2312";
CREATE DATABASE "schema2312";
USE "schema2312";
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
	"total" NUMERIC
);

CREATE TABLE "produto" (
	"id" INTEGER,
	"descricao" VARCHAR,
	"preco_unitario" NUMERIC
);

CREATE TABLE "cliente" (
	"id" INTEGER,
	"nome" VARCHAR
);
