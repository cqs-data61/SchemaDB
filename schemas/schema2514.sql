DROP DATABASE IF EXISTS "schema2514";
CREATE DATABASE "schema2514";
USE "schema2514";
CREATE TABLE "restaurants" (
	"id" INT,
	"name" VARCHAR,
	"contacts" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menus" (
	"id" INT,
	"rest_id" INT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_menus_to_restaurants" FOREIGN KEY ("rest_id") REFERENCES "restaurants" ("id")
);

CREATE TABLE "dishes" (
	"id" INT,
	"menu_id" INT,
	"name" VARCHAR,
	"price" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_dishes_to_menus" FOREIGN KEY ("menu_id") REFERENCES "menus" ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "votes" (
	"id" INT,
	"user_id" INT,
	"rest_id" INT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_votes_to_restaurants" FOREIGN KEY ("rest_id") REFERENCES "restaurants" ("id"),
	 CONSTRAINT "fkeycon_votes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_roles" (
	"user_id" INT,
	"role" VARCHAR,
	 CONSTRAINT "fkeycon_user_roles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
