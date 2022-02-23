DROP DATABASE IF EXISTS "schema1995";
CREATE DATABASE "schema1995";
USE "schema1995";
CREATE TABLE "promocao" (
	"id" INT,
	"nome" VARCHAR,
	"descricao" VARCHAR,
	"datainicio" VARCHAR,
	"datafim" VARCHAR,
	"datahoracadastro" VARCHAR,
	"datahoraultimaatualizacao" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categoria" (
	"id" INT,
	"imagemsimbolourl" VARCHAR,
	"nome" VARCHAR,
	"descricao" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "produto" (
	"id" INT,
	"nome" VARCHAR,
	"descricao" VARCHAR,
	"fotourl" VARCHAR,
	"datahoracadastro" VARCHAR,
	"datahoraultimaatualizacao" VARCHAR,
	"valorunitario" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "promocaoitem" (
	"id" INT,
	"valorpromocao" FLOAT,
	"datahoracadastro" VARCHAR,
	"datahoraultimaatualizacao" VARCHAR,
	"produtoid" INT,
	"promocaoid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_promocaoitem_to_produto" FOREIGN KEY ("produtoid") REFERENCES "produto" ("id"),
	 CONSTRAINT "fkeycon_promocaoitem_to_promocao" FOREIGN KEY ("promocaoid") REFERENCES "promocao" ("id")
);

CREATE TABLE "categoriaproduto" (
	"id" INT,
	"categoriaid" INT,
	"produtoid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_categoriaproduto_to_produto" FOREIGN KEY ("produtoid") REFERENCES "produto" ("id"),
	 CONSTRAINT "fkeycon_categoriaproduto_to_categoria" FOREIGN KEY ("categoriaid") REFERENCES "categoria" ("id")
);
