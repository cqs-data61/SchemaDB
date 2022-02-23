DROP DATABASE IF EXISTS "schema2185";
CREATE DATABASE "schema2185";
USE "schema2185";
CREATE TABLE "tabelapromocao" (
	"id" INT,
	"nome" VARCHAR,
	"descricao" VARCHAR,
	"datainicio" DATE,
	"datafim" DATE,
	"datacadastro" DATE,
	"dataultimaatualizacao" TIMESTAMP
);

CREATE TABLE "produto" (
	"id" INT,
	"nome" VARCHAR,
	"descricao" VARCHAR,
	"fotourl" VARCHAR,
	"datacadastro" DATE,
	"dataultimaatualizacao" TIMESTAMP,
	"valorunitario" FLOAT
);

CREATE TABLE "promocaoitem" (
	"id" INT,
	"valorpromocao" FLOAT,
	"datacadastro" DATE,
	"dataultimaatualizacao" TIMESTAMP,
	"produtoid" INT,
	"promocaoid" INT,
	 CONSTRAINT "fkeycon_promocaoitem_to_produto" FOREIGN KEY ("produtoid") REFERENCES "produto" ("id"),
	 CONSTRAINT "fkeycon_promocaoitem_to_tabelapromocao" FOREIGN KEY ("promocaoid") REFERENCES "tabelapromocao" ("id")
);

CREATE TABLE "categoria" (
	"id" INT,
	"imagemsimbolourl" VARCHAR,
	"nome" VARCHAR,
	"descricao" VARCHAR
);

CREATE TABLE "produtocategoria" (
	"id" INT,
	"produtoid" INT,
	"categoriaid" INT,
	 CONSTRAINT "fkeycon_produtocategoria_to_categoria" FOREIGN KEY ("categoriaid") REFERENCES "categoria" ("id"),
	 CONSTRAINT "fkeycon_produtocategoria_to_produto" FOREIGN KEY ("produtoid") REFERENCES "produto" ("id")
);
