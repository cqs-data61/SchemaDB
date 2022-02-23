DROP DATABASE IF EXISTS "schema2050";
CREATE DATABASE "schema2050";
USE "schema2050";
CREATE TABLE "friend" (
	"id" INT,
	"friend_id" INT,
	"user_id" INT,
	"status_id" INT,
	"status_id_desc" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "publisher" (
	"publisher_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("publisher_id")
);

CREATE TABLE "series" (
	"series_id" INT,
	"title" VARCHAR,
	 PRIMARY KEY ("series_id")
);

CREATE TABLE "creator" (
	"creator_id" INT,
	"full_name" VARCHAR,
	 PRIMARY KEY ("creator_id")
);

CREATE TABLE "characters" (
	"character_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("character_id")
);

CREATE TABLE "collections" (
	"collection_id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"private" BOOLEAN,
	 PRIMARY KEY ("collection_id")
);

CREATE TABLE "collections_user" (
	"collection_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("collection_id","user_id"),
	 CONSTRAINT "fk_collections_user_collections" FOREIGN KEY ("collection_id") REFERENCES "collections" ("collection_id")
);

CREATE TABLE "comics" (
	"comic_id" INT,
	"title" VARCHAR,
	"issue_num" INT,
	"img" VARCHAR,
	"marvel_id" INT,
	 PRIMARY KEY ("comic_id")
);

CREATE TABLE "publisher_comics" (
	"publisher_id" INT,
	"comic_id" INT,
	 PRIMARY KEY ("publisher_id","comic_id"),
	 CONSTRAINT "fk_publisher_comic_publisher" FOREIGN KEY ("publisher_id") REFERENCES "publisher" ("publisher_id"),
	 CONSTRAINT "fk_publisher_comic_comic" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);

CREATE TABLE "creator_comics" (
	"creator_id" INT,
	"comic_id" INT,
	 PRIMARY KEY ("creator_id","comic_id"),
	 CONSTRAINT "fk_creator_comics_creator" FOREIGN KEY ("creator_id") REFERENCES "creator" ("creator_id"),
	 CONSTRAINT "fk_creator_comics_comics" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);

CREATE TABLE "series_comics" (
	"series_id" INT,
	"comic_id" INT,
	 PRIMARY KEY ("series_id","comic_id"),
	 CONSTRAINT "fk_series_comics_series" FOREIGN KEY ("series_id") REFERENCES "series" ("series_id"),
	 CONSTRAINT "fk_series_comics_comics" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);

CREATE TABLE "characters_comics" (
	"character_id" INT,
	"comic_id" INT,
	 PRIMARY KEY ("character_id","comic_id"),
	 CONSTRAINT "fk_charactars_comics_characters" FOREIGN KEY ("character_id") REFERENCES "characters" ("character_id"),
	 CONSTRAINT "fk_characters_comics_comics" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);

CREATE TABLE "collections_comics" (
	"collection_id" INT,
	"comic_id" INT,
	 PRIMARY KEY ("collection_id","comic_id"),
	 CONSTRAINT "fk_collections_comics_collections" FOREIGN KEY ("collection_id") REFERENCES "collections" ("collection_id"),
	 CONSTRAINT "fk_collections_comics_comics" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);
