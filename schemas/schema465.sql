DROP DATABASE IF EXISTS "schema465";
CREATE DATABASE "schema465";
USE "schema465";
CREATE TABLE "sequence" (
	"name" VARCHAR,
	"nextid" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "inventory" (
	"itemid" VARCHAR,
	"qty" INT,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "category" (
	"catid" VARCHAR,
	"name" VARCHAR,
	"descn" VARCHAR,
	 PRIMARY KEY ("catid")
);

CREATE TABLE "product" (
	"productid" VARCHAR,
	"category" VARCHAR,
	"name" VARCHAR,
	"descn" VARCHAR,
	 PRIMARY KEY ("productid"),
	 CONSTRAINT "fk_product_1" FOREIGN KEY ("category") REFERENCES "category" ("catid")
);

CREATE TABLE "lineitem" (
	"orderid" INT,
	"linenum" INT,
	"itemid" VARCHAR,
	"quantity" INT,
	"unitprice" DECIMAL,
	 PRIMARY KEY ("orderid","linenum")
);

CREATE TABLE "orderstatus" (
	"orderid" INT,
	"linenum" INT,
	"timestamp" DATE,
	"status" VARCHAR,
	 PRIMARY KEY ("orderid","linenum")
);

CREATE TABLE "orders" (
	"orderid" INT,
	"userid" VARCHAR,
	"orderdate" DATE,
	"shipaddr1" VARCHAR,
	"shipaddr2" VARCHAR,
	"shipcity" VARCHAR,
	"shipstate" VARCHAR,
	"shipzip" VARCHAR,
	"shipcountry" VARCHAR,
	"billaddr1" VARCHAR,
	"billaddr2" VARCHAR,
	"billcity" VARCHAR,
	"billstate" VARCHAR,
	"billzip" VARCHAR,
	"billcountry" VARCHAR,
	"courier" VARCHAR,
	"totalprice" DECIMAL,
	"billtofirstname" VARCHAR,
	"billtolastname" VARCHAR,
	"shiptofirstname" VARCHAR,
	"shiptolastname" VARCHAR,
	"creditcard" VARCHAR,
	"exprdate" VARCHAR,
	"cardtype" VARCHAR,
	"locale" VARCHAR,
	 PRIMARY KEY ("orderid")
);

CREATE TABLE "bannerdata" (
	"favcategory" VARCHAR,
	"bannername" VARCHAR,
	 PRIMARY KEY ("favcategory")
);

CREATE TABLE "profile" (
	"userid" VARCHAR,
	"langpref" VARCHAR,
	"favcategory" VARCHAR,
	"mylistopt" BOOLEAN,
	"banneropt" BOOLEAN,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "account" (
	"userid" VARCHAR,
	"email" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"status" VARCHAR,
	"addr1" VARCHAR,
	"addr2" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "signon" (
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "supplier" (
	"suppid" INT,
	"name" VARCHAR,
	"status" VARCHAR,
	"addr1" VARCHAR,
	"addr2" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("suppid")
);

CREATE TABLE "item" (
	"itemid" VARCHAR,
	"productid" VARCHAR,
	"listprice" DECIMAL,
	"unitcost" DECIMAL,
	"supplier" INT,
	"status" VARCHAR,
	"attr1" VARCHAR,
	"attr2" VARCHAR,
	"attr3" VARCHAR,
	"attr4" VARCHAR,
	"attr5" VARCHAR,
	 PRIMARY KEY ("itemid"),
	 CONSTRAINT "fk_item_1" FOREIGN KEY ("productid") REFERENCES "product" ("productid"),
	 CONSTRAINT "fk_item_2" FOREIGN KEY ("supplier") REFERENCES "supplier" ("suppid")
);
