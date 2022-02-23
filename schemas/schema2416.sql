DROP DATABASE IF EXISTS "schema2416";
CREATE DATABASE "schema2416";
USE "schema2416";
CREATE TABLE "immagini" (
	"id" INT,
	"nome" VARCHAR,
	"link" VARCHAR,
	"descrizione" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "utenti" (
	"username" VARCHAR,
	"bio" VARCHAR,
	"email" VARCHAR,
	"immagine_profilo" INT,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_utenti_to_immagini" FOREIGN KEY ("immagine_profilo") REFERENCES "immagini" ("id")
);

CREATE TABLE "contatto" (
	"email" VARCHAR,
	"data" DATETIME,
	"oggetto" VARCHAR,
	"testo" VARCHAR,
	"incaricato" VARCHAR,
	 PRIMARY KEY ("email","data"),
	 CONSTRAINT "fkeycon_contatto_to_utenti" FOREIGN KEY ("incaricato") REFERENCES "utenti" ("username")
);

CREATE TABLE "recensioni" (
	"id_recensione" INT,
	"autore" VARCHAR,
	"titolo" VARCHAR,
	"testo" VARCHAR,
	"tags" VARCHAR,
	 PRIMARY KEY ("id_recensione"),
	 CONSTRAINT "fkeycon_recensioni_to_utenti" FOREIGN KEY ("autore") REFERENCES "utenti" ("username")
);

CREATE TABLE "gallery" (
	"id_immagine" INT,
	"id_recensione" INT,
	"ordine" INT,
	 PRIMARY KEY ("id_immagine","id_recensione"),
	 CONSTRAINT "fkeycon_gallery_to_recensioni" FOREIGN KEY ("id_immagine") REFERENCES "recensioni" ("id_recensione"),
	 CONSTRAINT "fkeycon_gallery_to_immagini" FOREIGN KEY ("id_recensione") REFERENCES "immagini" ("id")
);

CREATE TABLE "ruoli" (
	"username" VARCHAR,
	"ruolo" CHAR,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_ruoli_to_utenti" FOREIGN KEY ("username") REFERENCES "utenti" ("username")
);

CREATE TABLE "credenziali" (
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_credenziali_to_utenti" FOREIGN KEY ("username") REFERENCES "utenti" ("username")
);

CREATE TABLE "franchise" (
	"franchise" VARCHAR,
	"titolo_alternativo" VARCHAR,
	 PRIMARY KEY ("franchise")
);

CREATE TABLE "videogiochi" (
	"titolo" VARCHAR,
	"franchise" VARCHAR,
	"id_recensione" INT,
	"titolo_alternativo" VARCHAR,
	"anno" YEAR,
	"sviluppatore" VARCHAR,
	"distributore" VARCHAR,
	"genere" VARCHAR,
	"piattaforma" VARCHAR,
	 PRIMARY KEY ("titolo","franchise"),
	 CONSTRAINT "fkeycon_videogiochi_to_franchise" FOREIGN KEY ("franchise") REFERENCES "franchise" ("franchise"),
	 CONSTRAINT "fkeycon_videogiochi_to_recensioni" FOREIGN KEY ("id_recensione") REFERENCES "recensioni" ("id_recensione")
);

CREATE TABLE "uscite_videogiochi" (
	"titolo" VARCHAR,
	"franchise" VARCHAR,
	"data" DATE,
	 PRIMARY KEY ("titolo","franchise"),
	 CONSTRAINT "fkeycon_uscite_videogiochi_to_videogiochi" FOREIGN KEY ("titolo","franchise") REFERENCES "videogiochi" ("titolo","franchise")
);

CREATE TABLE "cartacei" (
	"titolo" VARCHAR,
	"franchise" VARCHAR,
	"id_recensione" INT,
	"titolo_alternativo" VARCHAR,
	"anno" YEAR,
	"tipo_media" VARCHAR,
	"autore" VARCHAR,
	"editore" VARCHAR,
	 PRIMARY KEY ("titolo","franchise"),
	 CONSTRAINT "fkeycon_cartacei_to_recensioni" FOREIGN KEY ("id_recensione") REFERENCES "recensioni" ("id_recensione"),
	 CONSTRAINT "fkeycon_cartacei_to_franchise" FOREIGN KEY ("franchise") REFERENCES "franchise" ("franchise")
);

CREATE TABLE "uscite_cartacei" (
	"titolo" VARCHAR,
	"data_uscita" DATE,
	"franchise" VARCHAR,
	"volume" VARCHAR,
	 PRIMARY KEY ("titolo","franchise","volume"),
	 CONSTRAINT "fkeycon_uscite_cartacei_to_cartacei" FOREIGN KEY ("titolo","franchise") REFERENCES "cartacei" ("titolo","franchise")
);

CREATE TABLE "audiovisivi" (
	"titolo" VARCHAR,
	"franchise" VARCHAR,
	"id_recensione" INT,
	"titolo_alternativo" VARCHAR,
	"anno" YEAR,
	"tipo_media" VARCHAR,
	"studio" VARCHAR,
	"stagione" VARCHAR,
	 PRIMARY KEY ("titolo","franchise"),
	 CONSTRAINT "fkeycon_audiovisivi_to_franchise" FOREIGN KEY ("franchise") REFERENCES "franchise" ("franchise"),
	 CONSTRAINT "fkeycon_audiovisivi_to_recensioni" FOREIGN KEY ("id_recensione") REFERENCES "recensioni" ("id_recensione")
);

CREATE TABLE "uscite_audiovisivi" (
	"titolo" VARCHAR,
	"franchise" VARCHAR,
	"episodio" VARCHAR,
	"data_uscita" DATE,
	 PRIMARY KEY ("titolo","franchise","episodio"),
	 CONSTRAINT "fkeycon_uscite_audiovisivi_to_audiovisivi" FOREIGN KEY ("titolo","franchise") REFERENCES "audiovisivi" ("titolo","franchise")
);
