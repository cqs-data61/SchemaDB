DROP DATABASE IF EXISTS "schema745";
CREATE DATABASE "schema745";
USE "schema745";
CREATE TABLE "chats" (
	"id" INT,
	"idusuario" INT,
	"idproducto" INT,
	"deletedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"idchat" INT,
	"idusuario" INT,
	"contenido" VARCHAR,
	"fecha" DATETIME,
	 CONSTRAINT "fkeycon_messages_to_chats" FOREIGN KEY ("idchat") REFERENCES "chats" ("id")
);

CREATE TABLE "compraventa" (
	"idusuario" INT,
	"idproducto" INT,
	"fecha" DATETIME
);

CREATE TABLE "resenas" (
	"id" INT,
	"idusuario" INT,
	"idproducto" INT,
	"idvalorador" INT,
	"contenido" VARCHAR,
	"valoracion" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"deletedat" DATETIME,
	 PRIMARY KEY ("id")
);
