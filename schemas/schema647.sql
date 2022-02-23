DROP DATABASE IF EXISTS "schema647";
CREATE DATABASE "schema647";
USE "schema647";
CREATE TABLE "usuarios" (
	"id" SERIAL,
	"nome" TEXT,
	"nome_loja" TEXT,
	"email" TEXT,
	"senha" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "produtos" (
	"id" SERIAL,
	"usuario_id" INTEGER,
	"nome" TEXT,
	"estoque" INTEGER,
	"categoria" TEXT,
	"preco" INTEGER,
	"descricao" TEXT,
	"imagem" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_produtos_to_usuarios" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id")
);
