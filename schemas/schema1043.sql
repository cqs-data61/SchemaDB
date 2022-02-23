DROP DATABASE IF EXISTS "schema1043";
CREATE DATABASE "schema1043";
USE "schema1043";
CREATE TABLE "t_user" (
	"user_id" BINARY,
	"version" BIGINT,
	"bio_text" VARCHAR,
	"email" VARCHAR,
	"inactivation_date" DATE,
	"last_online" TIMESTAMP,
	"member_code" VARCHAR,
	"profile_picture" BLOB,
	"rating" FLOAT,
	"username" VARCHAR
);

CREATE TABLE "t_request" (
	"request_id" BINARY,
	"version" BIGINT,
	"date" TIMESTAMP,
	"book_copy_id" BINARY,
	"user_id" BINARY
);

CREATE TABLE "t_publisher" (
	"publisher_id" BINARY,
	"version" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "t_library_department" (
	"library_department_id" BINARY,
	"version" BIGINT,
	"name" VARCHAR,
	"library_id" BINARY
);

CREATE TABLE "t_library" (
	"library_id" BINARY,
	"version" BIGINT,
	"name" VARCHAR,
	"owner_id" BINARY
);

CREATE TABLE "t_booklending" (
	"booklending_id" BINARY,
	"version" BIGINT,
	"expected_return_date" DATE,
	"start_date" DATE,
	"book_copy_id" BINARY,
	"user_id" BINARY
);

CREATE TABLE "t_book_copy" (
	"book_copy_id" BINARY,
	"version" BIGINT,
	"description" VARCHAR,
	"read_by_owner" BOOLEAN,
	"times_lent" INTEGER,
	"book_id" BINARY,
	"library_id" BINARY
);

CREATE TABLE "t_book" (
	"book_id" BINARY,
	"version" BIGINT,
	"edition" VARCHAR,
	"image_path" VARCHAR,
	"isbn" VARCHAR,
	"number_of_pages" INTEGER,
	"original_title" VARCHAR,
	"times_lent" INTEGER,
	"title" VARCHAR,
	"year_of_release" BINARY,
	"publisher_id" BINARY
);

CREATE TABLE "t_author" (
	"author_id" BINARY,
	"version" BIGINT,
	"first_name" VARCHAR,
	"surname" VARCHAR
);

CREATE TABLE "jo_user_library" (
	"library_id" BINARY,
	"user_id" BINARY
);

CREATE TABLE "jo_library_department__book_copy" (
	"library_department_id" BINARY,
	"book_copy_id" BINARY
);

CREATE TABLE "jo_book_format" (
	"book_id" BINARY,
	"format" VARCHAR
);

CREATE TABLE "jo_book_language" (
	"book_id" BINARY,
	"language" VARCHAR
);

CREATE TABLE "jo_book_genre" (
	"book_id" BINARY,
	"genre" VARCHAR
);

CREATE TABLE "jo_author_book" (
	"author_id" BINARY,
	"book_id" BINARY
);
