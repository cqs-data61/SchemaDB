DROP DATABASE IF EXISTS "schema2223";
CREATE DATABASE "schema2223";
USE "schema2223";
CREATE TABLE "language" (
	"language_id" TINYINT,
	"name" CHAR,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("language_id")
);

CREATE TABLE "film_text" (
	"film_id" SMALLINT,
	"title" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("film_id")
);

CREATE TABLE "film" (
	"film_id" SMALLINT,
	"title" VARCHAR,
	"description" TEXT,
	"release_year" YEAR,
	"language_id" TINYINT,
	"original_language_id" TINYINT,
	"rental_duration" TINYINT,
	"rental_rate" DECIMAL,
	"length" SMALLINT,
	"replacement_cost" DECIMAL,
	"rating" ENUM,
	"special_features" ENUM,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("film_id")
);

CREATE TABLE "inventory" (
	"inventory_id" MEDIUMINT,
	"film_id" SMALLINT,
	"store_id" TINYINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("inventory_id"),
	 CONSTRAINT "fk_inventory_film" FOREIGN KEY ("film_id") REFERENCES "film" ("film_id")
);

CREATE TABLE "country" (
	"country_id" SMALLINT,
	"country" VARCHAR,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("country_id")
);

CREATE TABLE "city" (
	"city_id" SMALLINT,
	"city" VARCHAR,
	"country_id" SMALLINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("city_id")
);

CREATE TABLE "category" (
	"category_id" TINYINT,
	"name" VARCHAR,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "film_category" (
	"film_id" SMALLINT,
	"category_id" TINYINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("film_id","category_id"),
	 CONSTRAINT "fk_film_category_category" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
	 CONSTRAINT "fk_film_category_film" FOREIGN KEY ("film_id") REFERENCES "film" ("film_id")
);

CREATE TABLE "address" (
	"address_id" SMALLINT,
	"address" VARCHAR,
	"address2" VARCHAR,
	"district" VARCHAR,
	"city_id" SMALLINT,
	"postal_code" VARCHAR,
	"phone" VARCHAR,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "staff" (
	"staff_id" TINYINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address_id" SMALLINT,
	"picture" BLOB,
	"email" VARCHAR,
	"store_id" TINYINT,
	"active" BOOLEAN,
	"username" VARCHAR,
	"password" VARCHAR,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("staff_id"),
	 CONSTRAINT "fk_staff_address" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "store" (
	"store_id" TINYINT,
	"manager_staff_id" TINYINT,
	"address_id" SMALLINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("store_id"),
	 CONSTRAINT "fk_store_staff" FOREIGN KEY ("manager_staff_id") REFERENCES "staff" ("staff_id"),
	 CONSTRAINT "fk_store_address" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "customer" (
	"customer_id" SMALLINT,
	"store_id" TINYINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"address_id" SMALLINT,
	"active" BOOLEAN,
	"create_date" DATETIME,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("customer_id"),
	 CONSTRAINT "fk_customer_address" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "rental" (
	"rental_id" INT,
	"rental_date" DATETIME,
	"inventory_id" MEDIUMINT,
	"customer_id" SMALLINT,
	"return_date" DATETIME,
	"staff_id" TINYINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("rental_id"),
	 CONSTRAINT "fk_rental_customer" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
	 CONSTRAINT "fk_rental_inventory" FOREIGN KEY ("inventory_id") REFERENCES "inventory" ("inventory_id")
);

CREATE TABLE "payment" (
	"payment_id" SMALLINT,
	"customer_id" SMALLINT,
	"staff_id" TINYINT,
	"rental_id" INT,
	"amount" DECIMAL,
	"payment_date" DATETIME,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("payment_id"),
	 CONSTRAINT "fk_payment_customer" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id")
);

CREATE TABLE "actor" (
	"actor_id" SMALLINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("actor_id")
);

CREATE TABLE "film_actor" (
	"actor_id" SMALLINT,
	"film_id" SMALLINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("actor_id","film_id"),
	 CONSTRAINT "fk_film_actor_film" FOREIGN KEY ("film_id") REFERENCES "film" ("film_id"),
	 CONSTRAINT "fk_film_actor_actor" FOREIGN KEY ("actor_id") REFERENCES "actor" ("actor_id")
);
