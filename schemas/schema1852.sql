DROP DATABASE IF EXISTS "schema1852";
CREATE DATABASE "schema1852";
USE "schema1852";
CREATE TABLE "payment" (
	"payment_id" INTEGER,
	"customer_id" INTEGER,
	"staff_id" INTEGER,
	"rental_id" INTEGER,
	"amount" DECIMAL,
	"payment_date" TIMESTAMP,
	 PRIMARY KEY ("payment_id")
);

CREATE TABLE "rental" (
	"rental_id" INTEGER,
	"rental_date" TIMESTAMP,
	"inventory_id" INTEGER,
	"customer_id" INTEGER,
	"return_date" TIMESTAMP,
	"staff_id" INTEGER,
	 PRIMARY KEY ("rental_id")
);

CREATE TABLE "store" (
	"store_id" INTEGER,
	"manager_staff_id" INTEGER,
	"address_id" INTEGER,
	 PRIMARY KEY ("store_id")
);

CREATE TABLE "staff" (
	"staff_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address_id" INTEGER,
	"email" VARCHAR,
	"store_id" INTEGER,
	"active" INTEGER,
	"username" VARCHAR,
	 PRIMARY KEY ("staff_id")
);

CREATE TABLE "customer" (
	"customer_id" INTEGER,
	"store_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"address_id" INTEGER,
	"create_date" DATE,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "address" (
	"address_id" INTEGER,
	"address" VARCHAR,
	"address2" VARCHAR,
	"district" VARCHAR,
	"city_id" INTEGER,
	"postal_code" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "inventory" (
	"inventory_id" INTEGER,
	"film_id" INTEGER,
	"store_id" INTEGER,
	 PRIMARY KEY ("inventory_id")
);

CREATE TABLE "film_category" (
	"film_id" INTEGER,
	"category_id" INTEGER,
	 PRIMARY KEY ("film_id","category_id")
);

CREATE TABLE "film_actor" (
	"actor_id" INTEGER,
	"film_id" INTEGER,
	 PRIMARY KEY ("actor_id","film_id")
);

CREATE TABLE "film" (
	"film_id" INTEGER,
	"title" VARCHAR,
	"release_year" INTEGER,
	"language_id" INTEGER,
	"rental_duration" INTEGER,
	"rental_rate" DECIMAL,
	"replacement_cost" DECIMAL,
	"rating" VARCHAR,
	 PRIMARY KEY ("film_id")
);

CREATE TABLE "city" (
	"city_id" INTEGER,
	"city" VARCHAR,
	"country_id" INTEGER,
	 PRIMARY KEY ("city_id")
);

CREATE TABLE "film_language" (
	"language_id" INTEGER,
	"language_name" VARCHAR,
	 PRIMARY KEY ("language_id")
);

CREATE TABLE "country" (
	"country_id" INTEGER,
	"country" VARCHAR,
	 PRIMARY KEY ("country_id")
);

CREATE TABLE "category" (
	"category_id" INTEGER,
	"category_name" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "actor" (
	"actor_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("actor_id")
);
