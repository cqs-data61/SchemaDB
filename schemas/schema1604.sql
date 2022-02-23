DROP DATABASE IF EXISTS "schema1604";
CREATE DATABASE "schema1604";
USE "schema1604";
CREATE TABLE "users" (
	"user_id" BIGINT,
	"email" VARCHAR,
	"enabled" BIT,
	"username" VARCHAR,
	"role" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "leilao" (
	"id" BIGINT,
	"data_abertura" DATE,
	"nome" VARCHAR,
	"valor_inicial" DECIMAL,
	"usuario_user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKja7vplfvv740bo6vccdmgg3ne" FOREIGN KEY ("usuario_user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "lance" (
	"id" BIGINT,
	"data" DATE,
	"valor" DECIMAL,
	"leilao_id" BIGINT,
	"usuario_user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKao15gcf542nf81fp2qq5j3igu" FOREIGN KEY ("leilao_id") REFERENCES "leilao" ("id"),
	 CONSTRAINT "FKa0r0xo76a1ld305ao4kweawcb" FOREIGN KEY ("usuario_user_id") REFERENCES "users" ("user_id")
);
