DROP DATABASE IF EXISTS "schema2072";
CREATE DATABASE "schema2072";
USE "schema2072";
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
	"preco" INTEGER,
	"categoria" TEXT,
	"descricao" TEXT,
	"imagem" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_produtos_to_usuarios" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id")
);
