DROP DATABASE IF EXISTS "schema999";
CREATE DATABASE "schema999";
USE "schema999";
CREATE TABLE "library_building" (
	"id" IDENTITY,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "library_books" (
	"id" IDENTITY,
	"kind" VARCHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"availability" BOOLEAN,
	"number_of_reservations" INTEGER,
	"library_building_fk" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "library_building_books_fk" FOREIGN KEY ("library_building_fk") REFERENCES "library_building" ("id")
);

CREATE TABLE "library_roles" (
	"id" IDENTITY,
	"role_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "library_customers" (
	"id" IDENTITY,
	"customer_email" VARCHAR,
	"customer_password" VARCHAR,
	"customer_enabled" BOOLEAN,
	"customer_account_non_expired" BOOLEAN,
	"customer_credentials_non_expired" BOOLEAN,
	"customer_account_non_locked" VARCHAR,
	"library_role_fk" INTEGER,
	"customer_auth_token" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "library_role_customer_fk" FOREIGN KEY ("library_role_fk") REFERENCES "library_roles" ("id")
);

CREATE TABLE "library_book_reservations" (
	"id" IDENTITY,
	"notification_date" VARCHAR,
	"canceled_status" BOOLEAN,
	"priority" INTEGER,
	"library_book_fk" INTEGER,
	"library_customer_fk" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "library_customers_library_book_reservation_fk" FOREIGN KEY ("library_customer_fk") REFERENCES "library_customers" ("id"),
	 CONSTRAINT "library_books_library_book_reservation_fk" FOREIGN KEY ("library_book_fk") REFERENCES "library_books" ("id")
);

CREATE TABLE "library_book_loans" (
	"id" IDENTITY,
	"return_date" VARCHAR,
	"postponed" BOOLEAN,
	"returned" BOOLEAN,
	"book_fk" INTEGER,
	"customer_fk" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "books_borrowed_fk" FOREIGN KEY ("book_fk") REFERENCES "library_books" ("id"),
	 CONSTRAINT "custommer_borrowed_fk" FOREIGN KEY ("customer_fk") REFERENCES "library_customers" ("id")
);
