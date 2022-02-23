DROP DATABASE IF EXISTS "schema2384";
CREATE DATABASE "schema2384";
USE "schema2384";
CREATE TABLE "entity" (
	"entity_id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("entity_id")
);

CREATE TABLE "entity_view" (
	"entity_view_id" BIGINT,
	"entity_id" BIGINT,
	"attribute" VARCHAR,
	"attribute_label" VARCHAR,
	"input_type" VARCHAR,
	"is_entity" BOOLEAN,
	"composed_entity" VARCHAR,
	 PRIMARY KEY ("entity_view_id"),
	 CONSTRAINT "fkeycon_entity_view_to_entity" FOREIGN KEY ("entity_id") REFERENCES "entity" ("entity_id")
);

CREATE TABLE "publisher" (
	"publisher_id" BIGINT,
	"name" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("publisher_id")
);

CREATE TABLE "author" (
	"author_id" BIGINT,
	"name" VARCHAR,
	"nationality" VARCHAR,
	 PRIMARY KEY ("author_id")
);

CREATE TABLE "genre" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" BIGINT,
	"name" VARCHAR,
	"author_id" BIGINT,
	"genre_id" BIGINT,
	"published_date" DATE,
	"publisher_id" BIGINT,
	"language" VARCHAR,
	"cost" INT,
	"currency" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_books_to_author" FOREIGN KEY ("author_id") REFERENCES "author" ("author_id"),
	 CONSTRAINT "fkeycon_books_to_genre" FOREIGN KEY ("genre_id") REFERENCES "genre" ("id"),
	 CONSTRAINT "fkeycon_books_to_publisher" FOREIGN KEY ("publisher_id") REFERENCES "publisher" ("publisher_id")
);
