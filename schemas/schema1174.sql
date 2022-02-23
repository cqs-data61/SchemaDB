DROP DATABASE IF EXISTS "schema1174";
CREATE DATABASE "schema1174";
USE "schema1174";
CREATE TABLE "usuarios" (
	"usuario_id" INT,
	"usuario_email" VARCHAR,
	"usuario_password" VARCHAR,
	"usuario_nombre" VARCHAR,
	"usuario_sexo" ENUM,
	"usuario_pais" TINYTEXT,
	"usuario_cp" VARCHAR,
	"usuario_tipo" ENUM,
	 PRIMARY KEY ("usuario_id")
);

CREATE TABLE "usuarios_premium" (
	"usuario_id" INT,
	 PRIMARY KEY ("usuario_id"),
	 CONSTRAINT "fk_usuarios_premium_usuarios1" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("usuario_id")
);

CREATE TABLE "usarios_free" (
	"usuario_id" INT,
	 PRIMARY KEY ("usuario_id")
);

CREATE TABLE "playlists_compartidas" (
	"playlist_id" INT,
	 PRIMARY KEY ("playlist_id")
);

CREATE TABLE "playlists_compartidas_has_canciones" (
	"playlist_id" INT,
	 PRIMARY KEY ("playlist_id"),
	 CONSTRAINT "fk_playlists_compartidas_has_canciones_playlists_compartidas1" FOREIGN KEY ("playlist_id") REFERENCES "playlists_compartidas" ("playlist_id")
);

CREATE TABLE "playlists" (
	"playlist_id" INT,
	"playlist_titulo" VARCHAR,
	"playlist_creacion" DATE,
	"usuario_id" INT,
	"playlist_state" ENUM,
	 PRIMARY KEY ("playlist_id")
);

CREATE TABLE "playlists_borradas" (
	"playlist_id" INT,
	"fecha_borrado" DATE,
	 PRIMARY KEY ("playlist_id"),
	 CONSTRAINT "fk_playlists_borradas_playlists1" FOREIGN KEY ("playlist_id") REFERENCES "playlists" ("playlist_id")
);

CREATE TABLE "playlists_activas" (
	"playlist_id" INT,
	"playlists_activa_estado" ENUM,
	 PRIMARY KEY ("playlist_id"),
	 CONSTRAINT "fk_playlists_activas_playlists1" FOREIGN KEY ("playlist_id") REFERENCES "playlists" ("playlist_id")
);

CREATE TABLE "paypals" (
	"suscripcion_id" INT,
	"paypal_nombre" VARCHAR,
	 PRIMARY KEY ("suscripcion_id")
);

CREATE TABLE "pagos" (
	"pago_id" INT,
	"pago_fecha" DATE,
	"pago_total" DECIMAL,
	 PRIMARY KEY ("pago_id")
);

CREATE TABLE "suscripciones" (
	"suscripcion_id" INT,
	"pago_id" INT,
	"suscripcion_inicio" DATE,
	"suscripcion_renovacion" DATE,
	"forma_de_pago" ENUM,
	 PRIMARY KEY ("suscripcion_id","pago_id"),
	 CONSTRAINT "fk_suscripciones_pagos1" FOREIGN KEY ("pago_id") REFERENCES "pagos" ("pago_id")
);

CREATE TABLE "usuarios_premium_has_suscripciones" (
	"usuario_id" INT,
	"suscripcion_id" INT,
	 PRIMARY KEY ("usuario_id","suscripcion_id"),
	 CONSTRAINT "fk_usuarios_premium_has_suscripciones_usuarios_premium1" FOREIGN KEY ("usuario_id") REFERENCES "usuarios_premium" ("usuario_id"),
	 CONSTRAINT "fk_usuarios_premium_has_suscripciones_suscripciones1" FOREIGN KEY ("suscripcion_id") REFERENCES "suscripciones" ("suscripcion_id")
);

CREATE TABLE "tarjetas" (
	"suscripcion_id" INT,
	"tarjeta_numero" VARCHAR,
	"tarjeta_caducidad" VARCHAR,
	"tarjeta_cvv" VARCHAR,
	 PRIMARY KEY ("suscripcion_id"),
	 CONSTRAINT "fk_tarjetas_suscripciones1" FOREIGN KEY ("suscripcion_id") REFERENCES "suscripciones" ("suscripcion_id")
);

CREATE TABLE "artistas" (
	"artista_id" INT,
	"artista_nombre" VARCHAR,
	"artista_img" VARCHAR,
	 PRIMARY KEY ("artista_id")
);

CREATE TABLE "usuarios_sigue_artistas" (
	"usuarios_usuario_id" INT,
	"artistas_artista_id" INT,
	 PRIMARY KEY ("usuarios_usuario_id","artistas_artista_id"),
	 CONSTRAINT "fk_usuarios_has_artistas_usuarios1" FOREIGN KEY ("usuarios_usuario_id") REFERENCES "usuarios" ("usuario_id"),
	 CONSTRAINT "fk_usuarios_has_artistas_artistas1" FOREIGN KEY ("artistas_artista_id") REFERENCES "artistas" ("artista_id")
);

CREATE TABLE "artistas_relacionados" (
	"artista_id" INT,
	"artista_relacionado_id" INT,
	 PRIMARY KEY ("artista_id","artista_relacionado_id"),
	 CONSTRAINT "fk_artistas_has_artistas_artistas2" FOREIGN KEY ("artista_relacionado_id") REFERENCES "artistas" ("artista_id"),
	 CONSTRAINT "fk_artistas_has_artistas_artistas1" FOREIGN KEY ("artista_id") REFERENCES "artistas" ("artista_id")
);

CREATE TABLE "albums" (
	"album_id" INT,
	"album_titulo" VARCHAR,
	"artista_id" INT,
	"album_publicacion" YEAR,
	"album_portada" VARCHAR,
	 PRIMARY KEY ("album_id")
);

CREATE TABLE "usuarios_albumes_favoritos" (
	"usuarios_usuario_id" INT,
	"albums_album_id" INT,
	 PRIMARY KEY ("usuarios_usuario_id","albums_album_id"),
	 CONSTRAINT "fk_usuarios_has_albums_usuarios1" FOREIGN KEY ("usuarios_usuario_id") REFERENCES "usuarios" ("usuario_id"),
	 CONSTRAINT "fk_usuarios_has_albums_albums1" FOREIGN KEY ("albums_album_id") REFERENCES "albums" ("album_id")
);

CREATE TABLE "canciones" (
	"cancion_id" INT,
	"cancion_title" VARCHAR,
	"album_id" INT,
	"cancion_duracion" TIME,
	"cancion_reproducciones" INT,
	 PRIMARY KEY ("cancion_id"),
	 CONSTRAINT "fk_canciones_albums1" FOREIGN KEY ("album_id") REFERENCES "albums" ("album_id")
);

CREATE TABLE "usuarios_canciones_favoritas" (
	"usuario_id" INT,
	"cancion_id" INT,
	 PRIMARY KEY ("usuario_id","cancion_id"),
	 CONSTRAINT "fk_usuarios_has_canciones_canciones1" FOREIGN KEY ("cancion_id") REFERENCES "canciones" ("cancion_id"),
	 CONSTRAINT "fk_usuarios_has_canciones_usuarios1" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("usuario_id")
);

CREATE TABLE "playlists_has_canciones" (
	"playlist_id" INT,
	"cancion_id" INT,
	"usuario_id" INT,
	"cancion_fecha" DATE,
	 PRIMARY KEY ("playlist_id","cancion_id"),
	 CONSTRAINT "fk_playlists_has_canciones_playlists1" FOREIGN KEY ("playlist_id") REFERENCES "playlists" ("playlist_id"),
	 CONSTRAINT "fk_playlists_has_canciones_canciones1" FOREIGN KEY ("cancion_id") REFERENCES "canciones" ("cancion_id")
);
