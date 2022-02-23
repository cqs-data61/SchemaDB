DROP DATABASE IF EXISTS "schema1487";
CREATE DATABASE "schema1487";
USE "schema1487";
CREATE TABLE "bookmark" (
	"bookmark_id" INTEGER,
	"author_id" INTEGER,
	"url" TEXT,
	"name" TEXT,
	"post_date" INTEGER,
	"is_public" INTEGER,
	"thumb_file_path" TEXT,
	 PRIMARY KEY ("bookmark_id")
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"username" TEXT,
	"email" TEXT,
	"pw_hash" TEXT,
	 PRIMARY KEY ("user_id")
);
