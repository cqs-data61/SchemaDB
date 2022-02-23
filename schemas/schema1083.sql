DROP DATABASE IF EXISTS "schema1083";
CREATE DATABASE "schema1083";
USE "schema1083";
CREATE TABLE "sedi" (
	"nomesede" CHARACTER VARYING,
	"descrizione" CHARACTER VARYING,
	 PRIMARY KEY ("nomesede")
);

CREATE TABLE "utenti" (
	"matricola" INTEGER,
	"username" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"tipo" CHARACTER VARYING,
	"nomesede" CHARACTER VARYING,
	 PRIMARY KEY ("matricola"),
	 CONSTRAINT "utenti_nomesede_fkey" FOREIGN KEY ("nomesede") REFERENCES "sedi" ("nomesede")
);

CREATE TABLE "docenti" (
	"iddocente" INTEGER,
	"nome" CHARACTER VARYING,
	"cognome" CHARACTER VARYING,
	"datanascita" DATE,
	 PRIMARY KEY ("iddocente"),
	 CONSTRAINT "docenti_iddocente_fkey" FOREIGN KEY ("iddocente") REFERENCES "utenti" ("matricola")
);

CREATE TABLE "circolari" (
	"numero" INTEGER,
	"titolo" CHARACTER VARYING,
	"contenuto" CHARACTER VARYING,
	"idadmin" INTEGER,
	"nomesede" CHARACTER VARYING,
	 PRIMARY KEY ("numero"),
	 CONSTRAINT "circolari_nomesede_fkey" FOREIGN KEY ("nomesede") REFERENCES "sedi" ("nomesede"),
	 CONSTRAINT "circolari_idadmin_fkey" FOREIGN KEY ("idadmin") REFERENCES "utenti" ("matricola")
);

CREATE TABLE "classi" (
	"idclasse" INTEGER,
	"anno" INTEGER,
	"sezione" CHARACTER,
	"nomesede" CHARACTER VARYING,
	 PRIMARY KEY ("idclasse"),
	 CONSTRAINT "classi_nomesede_fkey" FOREIGN KEY ("nomesede") REFERENCES "sedi" ("nomesede")
);

CREATE TABLE "studenti" (
	"idstudente" INTEGER,
	"nome" CHARACTER VARYING,
	"cognome" CHARACTER VARYING,
	"datanascita" DATE,
	"idclasse" INTEGER,
	 PRIMARY KEY ("idstudente"),
	 CONSTRAINT "studenti_idstudente_fkey" FOREIGN KEY ("idstudente") REFERENCES "utenti" ("matricola"),
	 CONSTRAINT "studenti_idclasse_fkey" FOREIGN KEY ("idclasse") REFERENCES "classi" ("idclasse")
);

CREATE TABLE "presenze" (
	"idstudente" INTEGER,
	"iddocente" INTEGER,
	"entrata" INTEGER,
	"uscita" INTEGER,
	"data" DATE,
	 PRIMARY KEY ("idstudente","data"),
	 CONSTRAINT "presenze_iddocente_fkey" FOREIGN KEY ("iddocente") REFERENCES "docenti" ("iddocente"),
	 CONSTRAINT "presenze_idstudente_fkey" FOREIGN KEY ("idstudente") REFERENCES "studenti" ("idstudente")
);

CREATE TABLE "insegnamenti" (
	"iddocente" INTEGER,
	"idclasse" INTEGER,
	 PRIMARY KEY ("iddocente","idclasse"),
	 CONSTRAINT "insegnamenti_idclasse_fkey" FOREIGN KEY ("idclasse") REFERENCES "classi" ("idclasse"),
	 CONSTRAINT "insegnamenti_iddocente_fkey" FOREIGN KEY ("iddocente") REFERENCES "docenti" ("iddocente")
);

CREATE TABLE "materie" (
	"nomemateria" CHARACTER VARYING,
	"descrizione" CHARACTER VARYING,
	 PRIMARY KEY ("nomemateria")
);

CREATE TABLE "voti" (
	"idvoto" INTEGER,
	"valutazione" INTEGER,
	"descrizione" CHARACTER VARYING,
	"data" DATE,
	"idstudente" INTEGER,
	"iddocente" INTEGER,
	"nomemateria" CHARACTER VARYING,
	 PRIMARY KEY ("idvoto"),
	 CONSTRAINT "voti_iddocente_fkey" FOREIGN KEY ("iddocente") REFERENCES "docenti" ("iddocente"),
	 CONSTRAINT "voti_nomemateria_fkey" FOREIGN KEY ("nomemateria") REFERENCES "materie" ("nomemateria"),
	 CONSTRAINT "voti_idstudente_fkey" FOREIGN KEY ("idstudente") REFERENCES "studenti" ("idstudente")
);

CREATE TABLE "competenze" (
	"nomemateria" CHARACTER VARYING,
	"iddocente" INTEGER,
	 PRIMARY KEY ("nomemateria","iddocente"),
	 CONSTRAINT "competenze_iddocente_fkey" FOREIGN KEY ("iddocente") REFERENCES "docenti" ("iddocente"),
	 CONSTRAINT "competenze_nomemateria_fkey" FOREIGN KEY ("nomemateria") REFERENCES "materie" ("nomemateria")
);
