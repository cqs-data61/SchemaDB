DROP DATABASE IF EXISTS "schema1582";
CREATE DATABASE "schema1582";
USE "schema1582";
CREATE TABLE "fees" (
	"fee_id" SERIAL,
	"fee" NUMERIC,
	"commission" NUMERIC,
	 PRIMARY KEY ("fee_id")
);

CREATE TABLE "art_type" (
	"type_id" SERIAL,
	"art_type" VARCHAR,
	 PRIMARY KEY ("type_id")
);

CREATE TABLE "tags" (
	"tag_id" SERIAL,
	"tag" VARCHAR,
	 PRIMARY KEY ("tag_id")
);

CREATE TABLE "artist" (
	"artist_id" SERIAL,
	"user_id" INT,
	"artist_name" VARCHAR,
	"is_seller" BOOLEAN,
	 PRIMARY KEY ("artist_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "customer" (
	"customer_id" SERIAL,
	"user_id" INT,
	 PRIMARY KEY ("customer_id"),
	 CONSTRAINT "fk_customer_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "management" (
	"manager_id" SERIAL,
	"user_id" INT,
	 PRIMARY KEY ("manager_id"),
	 CONSTRAINT "fk_management_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "dealer" (
	"dealer_id" SERIAL,
	"user_id" INT,
	 PRIMARY KEY ("dealer_id"),
	 CONSTRAINT "fk_dealer_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "art_pieces" (
	"art_id" SERIAL,
	"title" VARCHAR,
	"date_created" DATE,
	"price" NUMERIC,
	"img_file_name" VARCHAR,
	"is_sold" BOOLEAN,
	"artist_id" INT,
	"dealer_id" INT,
	"override_fee" NUMERIC,
	"override_commission" NUMERIC,
	"has_override" BOOLEAN,
	"is_available" BOOLEAN,
	"tag_id" INT,
	"type_id" INT,
	 PRIMARY KEY ("art_id"),
	 CONSTRAINT "fk_art_pieces_type_id" FOREIGN KEY ("type_id") REFERENCES "art_type" ("type_id"),
	 CONSTRAINT "fk_art_pieces_dealer_id" FOREIGN KEY ("dealer_id") REFERENCES "dealer" ("dealer_id"),
	 CONSTRAINT "fk_art_pieces_tag_id" FOREIGN KEY ("tag_id") REFERENCES "tags" ("tag_id"),
	 CONSTRAINT "fk_art_pieces_artist_id" FOREIGN KEY ("artist_id") REFERENCES "artist" ("artist_id")
);

CREATE TABLE "transactions" (
	"order_id" SERIAL,
	"customer_id" INT,
	"art_id" INT,
	"date_of_sale" DATE,
	"fee" NUMERIC,
	"commission" NUMERIC,
	"total_price" NUMERIC,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fk_transactions_customer_id" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
	 CONSTRAINT "fk_transactions_art_id" FOREIGN KEY ("art_id") REFERENCES "art_pieces" ("art_id")
);

CREATE TABLE "artist_dealer" (
	"artist_id" INT,
	"dealer_id" INT,
	 PRIMARY KEY ("artist_id","dealer_id"),
	 CONSTRAINT "fk_artist_dealer_dealer_id" FOREIGN KEY ("dealer_id") REFERENCES "dealer" ("dealer_id"),
	 CONSTRAINT "fk_artist_dealer_artist_id" FOREIGN KEY ("artist_id") REFERENCES "artist" ("artist_id")
);
