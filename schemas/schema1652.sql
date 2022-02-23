DROP DATABASE IF EXISTS "schema1652";
CREATE DATABASE "schema1652";
USE "schema1652";
CREATE TABLE "address2" (
	"author_id" INT,
	"value" VARCHAR
);

CREATE TABLE "author2_following" (
	"author2_1_id" INT,
	"author2_2_id" INT
);

CREATE TABLE "author_to_friend" (
	"author2_1_id" INT,
	"author2_2_id" INT
);

CREATE TABLE "book_to_tag_unordered" (
	"book2_uuid_pk" VARCHAR,
	"book_tag2_id" BIGINT
);

CREATE TABLE "book2_tags" (
	"order" INT,
	"book2_uuid_pk" VARCHAR,
	"book_tag2_id" BIGINT,
	 PRIMARY KEY ("order")
);

CREATE TABLE "test2_bars" (
	"test2_id" INT,
	"foo_bar2_id" INT
);

CREATE TABLE "publisher2_tests" (
	"id" INT,
	"publisher2_id" INT,
	"test2_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "configuration2" (
	"property" VARCHAR,
	"test_id" INT,
	"value" VARCHAR
);

CREATE TABLE "test2" (
	"id" INT,
	"name" VARCHAR,
	"book_uuid_pk" VARCHAR,
	"parent_id" INT,
	"version" INT,
	"foo___bar" INT,
	"foo___baz" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book2" (
	"uuid_pk" VARCHAR,
	"created_at" DATETIME,
	"title" VARCHAR,
	"perex" TEXT,
	"price" DECIMAL,
	"double" DOUBLE,
	"meta" LONGTEXT,
	"author_id" INT,
	"publisher_id" INT,
	"foo" VARCHAR
);

CREATE TABLE "author2" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"name" VARCHAR,
	"email" VARCHAR,
	"age" INT,
	"terms_accepted" TINYINT,
	"optional" TINYINT,
	"identities" TEXT,
	"born" DATE,
	"born_time" TIME,
	"favourite_book_uuid_pk" VARCHAR,
	"favourite_author_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "base_user2" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"type" ENUM,
	"owner_prop" VARCHAR,
	"favourite_employee_id" INT,
	"favourite_manager_id" INT,
	"employee_prop" INT,
	"manager_prop" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book_tag2" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user2_cars" (
	"user2_first_name" VARCHAR,
	"user2_last_name" VARCHAR,
	"car2_name" VARCHAR,
	"car2_year" INT
);

CREATE TABLE "user2_sandwiches" (
	"user2_first_name" VARCHAR,
	"user2_last_name" VARCHAR,
	"sandwich_id" INT
);

CREATE TABLE "user2" (
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"foo" INT,
	"favourite_car_name" VARCHAR,
	"favourite_car_year" INT
);

CREATE TABLE "car_owner2" (
	"id" INT,
	"name" VARCHAR,
	"car_name" VARCHAR,
	"car_year" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car2" (
	"name" VARCHAR,
	"year" INT,
	"price" INT
);

CREATE TABLE "dummy2" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "foo_param2" (
	"bar_id" INT,
	"baz_id" INT,
	"value" VARCHAR,
	"version" DATETIME
);

CREATE TABLE "foo_bar2" (
	"id" INT,
	"name" VARCHAR,
	"name with space" VARCHAR,
	"baz_id" INT,
	"foo_bar_id" INT,
	"version" DATETIME,
	"blob" BLOB,
	"array" TEXT,
	"object_property" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "foo_baz2" (
	"id" INT,
	"name" VARCHAR,
	"version" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "publisher2" (
	"id" INT,
	"name" VARCHAR,
	"type" ENUM,
	"type2" ENUM,
	"enum1" TINYINT,
	"enum2" TINYINT,
	"enum3" TINYINT,
	"enum4" ENUM,
	"enum5" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sandwich" (
	"id" INT,
	"name" VARCHAR,
	"price" INT,
	 PRIMARY KEY ("id")
);
