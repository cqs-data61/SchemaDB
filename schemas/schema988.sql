DROP DATABASE IF EXISTS "schema988";
CREATE DATABASE "schema988";
USE "schema988";
CREATE TABLE "extraservices" (
	"id" INT,
	"servisename" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "place" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"img" VARCHAR,
	"capacity" VARCHAR,
	"city" VARCHAR,
	"address" VARCHAR,
	"availability" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "slider" (
	"id" INT,
	"img" VARCHAR,
	"place_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_slider_to_place" FOREIGN KEY ("place_id") REFERENCES "place" ("id")
);

CREATE TABLE "servisesplaces" (
	"id" INT,
	"costservises" VARCHAR,
	"place_id" INT,
	"extraservices_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_servisesplaces_to_extraservices" FOREIGN KEY ("extraservices_id") REFERENCES "extraservices" ("id"),
	 CONSTRAINT "fkeycon_servisesplaces_to_place" FOREIGN KEY ("place_id") REFERENCES "place" ("id")
);

CREATE TABLE "occasions" (
	"id" INT,
	"place_id" INT,
	"type" VARCHAR,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_occasions_to_place" FOREIGN KEY ("place_id") REFERENCES "place" ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"role" VARCHAR,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"age" INT,
	"country" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);

CREATE TABLE "rating" (
	"id" INT,
	"place_id" INT,
	"user_id" INT,
	"rate" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_rating_to_place" FOREIGN KEY ("place_id") REFERENCES "place" ("id"),
	 CONSTRAINT "fkeycon_rating_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "favorite" (
	"id" INT,
	"place_id" INT,
	"user_id" INT,
	"rating_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_favorite_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_favorite_to_place" FOREIGN KEY ("place_id") REFERENCES "place" ("id"),
	 CONSTRAINT "fkeycon_favorite_to_rating" FOREIGN KEY ("rating_id") REFERENCES "rating" ("id")
);
