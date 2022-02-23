DROP DATABASE IF EXISTS "schema575";
CREATE DATABASE "schema575";
USE "schema575";
CREATE TABLE "image" (
	"name" VARCHAR,
	"origname" TEXT,
	"mimetype" VARCHAR,
	"size" VARCHAR,
	"width" INT,
	"height" INT,
	"isdeleted" TINYINT,
	"hash" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "board" (
	"id" TINYINT,
	"uri" VARCHAR,
	"title" VARCHAR,
	"subtitle" TINYTEXT,
	"pages" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INT,
	"no" INT,
	"date" DATETIME,
	"subject" VARCHAR,
	"name" VARCHAR,
	"email" TINYTEXT,
	"comment" TEXT,
	"isdeleted" TINYINT,
	"image_name" VARCHAR,
	"board_id" TINYINT,
	"parent_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_post_image1" FOREIGN KEY ("image_name") REFERENCES "image" ("name"),
	 CONSTRAINT "fk_post_post1" FOREIGN KEY ("parent_id") REFERENCES "post" ("id"),
	 CONSTRAINT "fk_post_board1" FOREIGN KEY ("board_id") REFERENCES "board" ("id")
);
