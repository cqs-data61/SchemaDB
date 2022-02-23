DROP DATABASE IF EXISTS "schema2238";
CREATE DATABASE "schema2238";
USE "schema2238";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"password" VARCHAR,
	"username" VARCHAR,
	"date_of_birth" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" BIGINT,
	"user_id" BIGINT,
	"order_date" TIMESTAMP,
	"sub_total" DECIMAL,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK159n2jvi8ivhui0rl0esws6o" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "role" (
	"id" BIGINT,
	"description" VARCHAR,
	"role_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 CONSTRAINT "FKa68196081fvovjhkek5m97n3y" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "FK859n2jvi8ivhui0rl0esws6o" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "book" (
	"id" BIGINT,
	"name" VARCHAR,
	"author" VARCHAR,
	"price" DECIMAL,
	"is_recommended" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_detail" (
	"id" BIGINT,
	"order_id" BIGINT,
	"book_id" BIGINT,
	"price" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKa02530424fvovjhkek5m97n3y" FOREIGN KEY ("book_id") REFERENCES "book" ("id"),
	 CONSTRAINT "FKa79207192fvovjhkek6m98n3y" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);
