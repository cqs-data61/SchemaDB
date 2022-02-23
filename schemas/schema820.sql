DROP DATABASE IF EXISTS "schema820";
CREATE DATABASE "schema820";
USE "schema820";
CREATE TABLE "sys_order" (
	"id" SERIAL,
	"user_id" INT,
	"create_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_product" (
	"id" SERIAL,
	"name" VARCHAR,
	"price" NUMERIC,
	"status" ENUM,
	"create_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user" (
	"id" SERIAL,
	"email" VARCHAR,
	"phone" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"patronymic" VARCHAR,
	"password" VARCHAR,
	"create_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_item" (
	"user_id" INT,
	"product_id" INT,
	"quantity" INT,
	 PRIMARY KEY ("user_id","product_id"),
	 CONSTRAINT "customer_fk" FOREIGN KEY ("user_id") REFERENCES "sys_user" ("id"),
	 CONSTRAINT "product_fk" FOREIGN KEY ("product_id") REFERENCES "sys_product" ("id")
);

CREATE TABLE "sys_address" (
	"id" SERIAL,
	"user_id" INT,
	"address" VARCHAR,
	"city" VARCHAR,
	"post_code" VARCHAR,
	"create_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_fk" FOREIGN KEY ("user_id") REFERENCES "sys_user" ("id")
);

CREATE TABLE "sys_roles" (
	"id" SERIAL,
	"role" VARCHAR,
	"user_id" INT,
	"create_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_fk" FOREIGN KEY ("user_id") REFERENCES "sys_user" ("id")
);
