DROP DATABASE IF EXISTS "schema78";
CREATE DATABASE "schema78";
USE "schema78";
CREATE TABLE "user_authorization_roles" (
	"role_id" SERIAL,
	"role_name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "locations" (
	"location_id" SERIAL,
	"country" VARCHAR,
	"city" VARCHAR,
	 PRIMARY KEY ("location_id")
);

CREATE TABLE "files" (
	"file_id" SERIAL,
	"data" BYTEA,
	 PRIMARY KEY ("file_id")
);

CREATE TABLE "users" (
	"user_id" SERIAL,
	"login" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"file_id" INTEGER,
	"location_id" INTEGER,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "users_fk1" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id"),
	 CONSTRAINT "users_fk0" FOREIGN KEY ("file_id") REFERENCES "files" ("file_id")
);

CREATE TABLE "user_roles" (
	"user_id" INTEGER,
	"role_id" INTEGER,
	 CONSTRAINT "user_roles_fk0" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "user_roles_fk1" FOREIGN KEY ("role_id") REFERENCES "user_authorization_roles" ("role_id")
);

CREATE TABLE "friends" (
	"user_id" INTEGER,
	"friend_user_id" INTEGER,
	 CONSTRAINT "friends_fk1" FOREIGN KEY ("friend_user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "friends_fk0" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "venues" (
	"venue_id" SERIAL,
	"venue_name" VARCHAR,
	"file_id" INTEGER,
	"location_id" INTEGER,
	 PRIMARY KEY ("venue_id"),
	 CONSTRAINT "venues_fk1" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id"),
	 CONSTRAINT "venues_fk0" FOREIGN KEY ("file_id") REFERENCES "files" ("file_id")
);

CREATE TABLE "artists" (
	"artist_id" SERIAL,
	"artist_name" VARCHAR,
	"file_id" INTEGER,
	 PRIMARY KEY ("artist_id"),
	 CONSTRAINT "artists_fk0" FOREIGN KEY ("file_id") REFERENCES "files" ("file_id")
);

CREATE TABLE "concerts" (
	"concert_id" SERIAL,
	"artist_id" INTEGER,
	"venue_id" INTEGER,
	"event_date" DATE,
	"start_time" DATE,
	"status" VARCHAR,
	"file_id" INTEGER,
	 PRIMARY KEY ("concert_id"),
	 CONSTRAINT "concert_fk1" FOREIGN KEY ("venue_id") REFERENCES "venues" ("venue_id"),
	 CONSTRAINT "concert_fk2" FOREIGN KEY ("file_id") REFERENCES "files" ("file_id"),
	 CONSTRAINT "concert_fk0" FOREIGN KEY ("artist_id") REFERENCES "artists" ("artist_id")
);

CREATE TABLE "users_concerts" (
	"user_id" INTEGER,
	"concert_id" INTEGER,
	 CONSTRAINT "users_concerts_fk0" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "users_concerts_fk1" FOREIGN KEY ("concert_id") REFERENCES "concerts" ("concert_id")
);
