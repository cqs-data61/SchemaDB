DROP DATABASE IF EXISTS "schema605";
CREATE DATABASE "schema605";
USE "schema605";
CREATE TABLE "genre" (
	"genre_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("genre_id")
);

CREATE TABLE "category" (
	"genre_id" INT,
	"category_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("category_id"),
	 CONSTRAINT "fkeycon_category_to_genre" FOREIGN KEY ("genre_id") REFERENCES "genre" ("genre_id")
);

CREATE TABLE "product" (
	"product_id" INT,
	"category_id" INT,
	"price" DECIMAL,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "fkeycon_product_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id")
);

CREATE TABLE "album" (
	"album_id" INT,
	"product_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("album_id"),
	 CONSTRAINT "fkeycon_album_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id")
);

CREATE TABLE "artist" (
	"artist_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("artist_id")
);

CREATE TABLE "track" (
	"track_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"price" DECIMAL,
	"album_id" INT,
	"product_id" INT,
	"artist_id" INT,
	 PRIMARY KEY ("track_id"),
	 CONSTRAINT "fkeycon_track_to_artist" FOREIGN KEY ("artist_id") REFERENCES "artist" ("artist_id"),
	 CONSTRAINT "fkeycon_track_to_album" FOREIGN KEY ("album_id") REFERENCES "album" ("album_id"),
	 CONSTRAINT "fkeycon_track_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id")
);

CREATE TABLE "s_user" (
	"username" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"user_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "cart" (
	"cart_id" INT,
	"user_id" INT,
	"is_purchased" BOOLEAN,
	 PRIMARY KEY ("cart_id"),
	 CONSTRAINT "fkeycon_cart_to_s_user" FOREIGN KEY ("user_id") REFERENCES "s_user" ("user_id")
);

CREATE TABLE "cartproduct" (
	"cartproduct_id" INT,
	"cart_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("cartproduct_id"),
	 CONSTRAINT "fkeycon_cartproduct_to_cart" FOREIGN KEY ("cart_id") REFERENCES "cart" ("cart_id"),
	 CONSTRAINT "fkeycon_cartproduct_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id")
);

CREATE TABLE "payment_info" (
	"payment_info_id" INT,
	"user_id" INT,
	"card_number" VARCHAR,
	"expiration" VARCHAR,
	"cvv" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("payment_info_id"),
	 CONSTRAINT "fkeycon_payment_info_to_s_user" FOREIGN KEY ("user_id") REFERENCES "s_user" ("user_id")
);

CREATE TABLE "transaction" (
	"transaction_id" INT,
	"cart_id" INT,
	"purchased_on" DATE,
	"payment_info_id" INT,
	 PRIMARY KEY ("transaction_id"),
	 CONSTRAINT "fkeycon_transaction_to_payment_info" FOREIGN KEY ("payment_info_id") REFERENCES "payment_info" ("payment_info_id"),
	 CONSTRAINT "fkeycon_transaction_to_cart" FOREIGN KEY ("cart_id") REFERENCES "cart" ("cart_id")
);
