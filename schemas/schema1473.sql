DROP DATABASE IF EXISTS "schema1473";
CREATE DATABASE "schema1473";
USE "schema1473";
CREATE TABLE "role" (
	"id" INT,
	"role_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "row" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "seat" (
	"id" INT,
	"row_id" INT,
	"number" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_row_id_row" FOREIGN KEY ("row_id") REFERENCES "row" ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"user_id" INT,
	"role_id" INT,
	 CONSTRAINT "fk_role_id_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "fk_user_id_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "shopping_cart" (
	"id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_scart_user_id" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "order" (
	"id" INT,
	"order_time" DATETIME,
	"shopping_cart_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_shopping_cart_id" FOREIGN KEY ("shopping_cart_id") REFERENCES "shopping_cart" ("id")
);

CREATE TABLE "movie" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"photo_url" VARCHAR,
	"director" VARCHAR,
	"country" VARCHAR,
	"year" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movie_session" (
	"id" INT,
	"movie_id" INT,
	"show_time" DATETIME,
	"ticket_price" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ms_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movie" ("id")
);

CREATE TABLE "movie_session_booked_seats" (
	"movie_session_id" INT,
	"seat_id" INT,
	 CONSTRAINT "fk_ms_id" FOREIGN KEY ("movie_session_id") REFERENCES "movie_session" ("id"),
	 CONSTRAINT "fk_seats_id" FOREIGN KEY ("seat_id") REFERENCES "seat" ("id")
);

CREATE TABLE "ticket" (
	"id" INT,
	"user_id" INT,
	"movie_session_id" INT,
	"row_id" INT,
	"seat_id" INT,
	"order_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_row_id" FOREIGN KEY ("row_id") REFERENCES "row" ("id"),
	 CONSTRAINT "fk_seat_id" FOREIGN KEY ("seat_id") REFERENCES "seat" ("id"),
	 CONSTRAINT "fk_order_id" FOREIGN KEY ("order_id") REFERENCES "order" ("id"),
	 CONSTRAINT "fk_movie_session" FOREIGN KEY ("movie_session_id") REFERENCES "movie_session" ("id"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
