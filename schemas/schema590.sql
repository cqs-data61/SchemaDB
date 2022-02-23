DROP DATABASE IF EXISTS "schema590";
CREATE DATABASE "schema590";
USE "schema590";
CREATE TABLE "status_type" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"blacklisted" TINYINT,
	"group_id" INT,
	"email" VARCHAR,
	 PRIMARY KEY ("id","group_id"),
	 CONSTRAINT "fk_Users_Groups1" FOREIGN KEY ("group_id") REFERENCES "group" ("id")
);

CREATE TABLE "order" (
	"id" INT,
	"user_id" INT,
	"address" VARCHAR,
	 PRIMARY KEY ("id","user_id"),
	 CONSTRAINT "fk_Orders_Users1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "status" (
	"order_id" INT,
	"status_type_id" INT,
	"changed" TIMESTAMP,
	 PRIMARY KEY ("order_id","status_type_id"),
	 CONSTRAINT "fk_Orders_has_Event_types_Event_types1" FOREIGN KEY ("status_type_id") REFERENCES "status_type" ("id"),
	 CONSTRAINT "fk_Orders_has_Event_types_Orders1" FOREIGN KEY ("order_id") REFERENCES "order" ("id")
);

CREATE TABLE "good" (
	"id" INT,
	"name" VARCHAR,
	"price" DECIMAL,
	"description" VARCHAR,
	"number" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ordered_good" (
	"order_id" INT,
	"good_id" INT,
	"number" INT,
	"price" DECIMAL,
	 PRIMARY KEY ("order_id","good_id"),
	 CONSTRAINT "fk_Orders_has_Goods_Goods1" FOREIGN KEY ("good_id") REFERENCES "good" ("id"),
	 CONSTRAINT "fk_Orders_has_Goods_Orders" FOREIGN KEY ("order_id") REFERENCES "order" ("id")
);
