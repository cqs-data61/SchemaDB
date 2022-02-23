DROP DATABASE IF EXISTS "schema494";
CREATE DATABASE "schema494";
USE "schema494";
CREATE TABLE "subscriber" (
	"sub_id" VARCHAR,
	"sub_password" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"full_name" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("sub_id")
);

CREATE TABLE "genres" (
	"geners_type" VARCHAR,
	"movie_id" VARCHAR,
	 PRIMARY KEY ("geners_type","movie_id")
);

CREATE TABLE "director_details" (
	"dir_id" VARCHAR,
	"director_name" VARCHAR,
	 PRIMARY KEY ("dir_id")
);

CREATE TABLE "director" (
	"dir_id" VARCHAR,
	"movie_id" VARCHAR,
	 PRIMARY KEY ("dir_id","movie_id")
);

CREATE TABLE "charge" (
	"movie_purchas_id" VARCHAR,
	"cost" INT,
	"validity" TEXT,
	 PRIMARY KEY ("movie_purchas_id")
);

CREATE TABLE "movie" (
	"movie_id" VARCHAR,
	"title" VARCHAR,
	"year" YEAR,
	"imdb_score" DOUBLE,
	"budget" BIGINT,
	"gross_earnings" BIGINT,
	"movie_purchas_id" VARCHAR,
	 PRIMARY KEY ("movie_id"),
	 CONSTRAINT "FK_Charge" FOREIGN KEY ("movie_purchas_id") REFERENCES "charge" ("movie_purchas_id")
);

CREATE TABLE "transaction" (
	"transaction_id" VARCHAR,
	"account_number" VARCHAR,
	"banks_name" VARCHAR,
	"sub_id" VARCHAR,
	"movie_id" VARCHAR,
	"transaction_date" DATE,
	 PRIMARY KEY ("transaction_id"),
	 CONSTRAINT "FK_Sub" FOREIGN KEY ("sub_id") REFERENCES "subscriber" ("sub_id"),
	 CONSTRAINT "FK_Tran_Movie" FOREIGN KEY ("movie_id") REFERENCES "movie" ("movie_id")
);

CREATE TABLE "artist" (
	"artist_id" VARCHAR,
	"artist_name" VARCHAR,
	"gender" VARCHAR,
	"fees" BIGINT,
	 PRIMARY KEY ("artist_id")
);

CREATE TABLE "cast" (
	"artist_id" VARCHAR,
	"movie_cast" VARCHAR,
	 PRIMARY KEY ("artist_id","movie_cast"),
	 CONSTRAINT "FK_Artist_Table" FOREIGN KEY ("artist_id") REFERENCES "artist" ("artist_id")
);
