DROP DATABASE IF EXISTS "schema1304";
CREATE DATABASE "schema1304";
USE "schema1304";
CREATE TABLE "user_roles" (
	"id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_genders" (
	"id" INT,
	"gender" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_builds" (
	"id" INT,
	"userid" INT,
	"productid" INT,
	"quantity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactions" (
	"id" INT,
	"userid" INT,
	"transactioncode" VARCHAR,
	"transactiondate" DATETIME,
	"deliveryaddress" TEXT,
	"totalproduct" INT,
	"totalquantity" INT,
	"totalweight" INT,
	"totalprice" INT,
	"shippingcourier" VARCHAR,
	"shippingcost" INT,
	"totalcost" INT,
	"paidstatus" INT,
	"deliveredstatus" INT,
	"receiptimg" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"brandid" INT,
	"name" VARCHAR,
	"description" TEXT,
	"weight" INT,
	"wattage" INT,
	"price" INT,
	"stock" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_wishlists" (
	"id" INT,
	"userid" INT,
	"productid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_wishlist_products" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);

CREATE TABLE "user_carts" (
	"id" INT,
	"userid" INT,
	"productid" INT,
	"quantity" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cart_products" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);

CREATE TABLE "transaction_details" (
	"id" INT,
	"transactionid" INT,
	"productid" INT,
	"productprice" INT,
	"quantity" INT,
	"totalprice" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_transactiondetail_product" FOREIGN KEY ("productid") REFERENCES "products" ("id")
);

CREATE TABLE "product_images" (
	"id" INT,
	"productid" INT,
	"image" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product_cats" (
	"id" INT,
	"productid" INT,
	"categoryid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cities" (
	"city_id" INT,
	"province_id" INT,
	"province" VARCHAR,
	"type" VARCHAR,
	"city_name" VARCHAR,
	"postal_code" INT,
	 PRIMARY KEY ("city_id")
);

CREATE TABLE "users" (
	"id" INT,
	"fullname" VARCHAR,
	"genderid" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"address" TEXT,
	"cityid" INT,
	"phone" VARCHAR,
	"roleid" INT,
	"createdtime" DATETIME,
	"updatedtime" DATETIME,
	"lastlogin" DATETIME,
	"verified" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_u_cityId" FOREIGN KEY ("cityid") REFERENCES "cities" ("city_id"),
	 CONSTRAINT "fk_u_role" FOREIGN KEY ("roleid") REFERENCES "user_roles" ("id"),
	 CONSTRAINT "fk_u_gender" FOREIGN KEY ("genderid") REFERENCES "user_genders" ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"category" VARCHAR,
	"parentid" INT,
	"mainparentid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_c_c" FOREIGN KEY ("parentid") REFERENCES "categories" ("id")
);

CREATE TABLE "carousels" (
	"id" INT,
	"image" VARCHAR,
	"herotext" TEXT,
	"text" TEXT,
	"link" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brands" (
	"id" INT,
	"brand" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brand_cats" (
	"id" INT,
	"brandid" INT,
	"categoryid" INT,
	 PRIMARY KEY ("id")
);
