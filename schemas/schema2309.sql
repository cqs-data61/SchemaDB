DROP DATABASE IF EXISTS "schema2309";
CREATE DATABASE "schema2309";
USE "schema2309";
CREATE TABLE "user_rolle" (
	"ur_id" INT,
	"ur_name" VARCHAR
);

CREATE TABLE "geschlecht" (
	"g_id" INT,
	"g_name" VARCHAR,
	"g_anrede" VARCHAR
);

CREATE TABLE "user" (
	"u_id" INT,
	"u_benutzername" VARCHAR,
	"u_email" VARCHAR,
	"u_vorname" VARCHAR,
	"u_nachname" VARCHAR,
	"u_geschlecht_id" INT,
	"u_rolle_id" INT,
	 CONSTRAINT "fkeycon_user_to_user_rolle" FOREIGN KEY ("u_rolle_id") REFERENCES "user_rolle" ("ur_id"),
	 CONSTRAINT "fkeycon_user_to_geschlecht" FOREIGN KEY ("u_geschlecht_id") REFERENCES "geschlecht" ("g_id")
);

CREATE TABLE "raeume" (
	"r_id" INT,
	"r_name" VARCHAR,
	"r_user_manager_id" INT,
	"r_createdate" TIMESTAMP,
	 CONSTRAINT "fkeycon_raeume_to_user" FOREIGN KEY ("r_user_manager_id") REFERENCES "user" ("u_id")
);

CREATE TABLE "content" (
	"c_id" INT,
	"c_raum_id" INT,
	"c_user_creator_id" INT,
	"c_text" VARCHAR,
	"c_pinned" BOOLEAN,
	"c_createdate" TIMESTAMP,
	 CONSTRAINT "fkeycon_content_to_user" FOREIGN KEY ("c_user_creator_id") REFERENCES "user" ("u_id"),
	 CONSTRAINT "fkeycon_content_to_raeume" FOREIGN KEY ("c_raum_id") REFERENCES "raeume" ("r_id")
);

CREATE TABLE "raum_user" (
	"ru_raum_id" INT,
	"ru_user_id" INT,
	"ru_raum_admin" BOOLEAN,
	 PRIMARY KEY ("ru_raum_id","ru_user_id"),
	 CONSTRAINT "fkeycon_raum_user_to_raeume" FOREIGN KEY ("ru_raum_id") REFERENCES "raeume" ("r_id"),
	 CONSTRAINT "fkeycon_raum_user_to_user" FOREIGN KEY ("ru_user_id") REFERENCES "user" ("u_id")
);

CREATE TABLE "user_passwort" (
	"up_user_id" INT,
	"up_passwort" VARCHAR,
	 PRIMARY KEY ("up_user_id"),
	 CONSTRAINT "fkeycon_user_passwort_to_user" FOREIGN KEY ("up_user_id") REFERENCES "user" ("u_id")
);
