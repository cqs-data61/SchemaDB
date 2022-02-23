DROP DATABASE IF EXISTS "schema1132";
CREATE DATABASE "schema1132";
USE "schema1132";
CREATE TABLE "bankaccounts" (
	"account_number" INT,
	"account_holder" VARCHAR,
	"account_password" VARCHAR,
	"account_balance" FLOAT,
	 PRIMARY KEY ("account_number")
);

CREATE TABLE "tokens" (
	"idtokens" INT,
	"userid" VARCHAR,
	"token" VARCHAR,
	 PRIMARY KEY ("idtokens")
);

CREATE TABLE "csrftokens" (
	"userid" VARCHAR,
	"userid" VARCHAR,
	"csrftokenscol" VARCHAR,
	"csrftokenscol" VARCHAR,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "items" (
	"itemid" INT,
	"itemid" INT,
	"itemname" VARCHAR,
	"itemname" VARCHAR,
	"itemcost" INT,
	"itemcost" INT,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "vipcoupons" (
	"vipcouponid" INT,
	"percentoff" INT,
	"couponcode" VARCHAR,
	"itemid" INT,
	 PRIMARY KEY ("vipcouponid"),
	 CONSTRAINT "fk_vipCoupons_items1" FOREIGN KEY ("itemid") REFERENCES "items" ("itemid")
);

CREATE TABLE "coupons" (
	"couponid" INT,
	"couponid" INT,
	"percentoff" INT,
	"percentoff" INT,
	"couponcode" VARCHAR,
	"couponcode" VARCHAR,
	"itemid" INT,
	"itemid" INT,
	 PRIMARY KEY ("couponid"),
	 CONSTRAINT "fk_coupons_items" FOREIGN KEY ("itemid") REFERENCES "items" ("itemid")
);

CREATE TABLE "users" (
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"userid" INT,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"username" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"userpassword" VARCHAR,
	"useraddress" VARCHAR,
	"useraddress" VARCHAR,
	"useraddress" VARCHAR,
	"useraddress" VARCHAR,
	"useraddress" VARCHAR,
	"useraddress" VARCHAR,
	"userrole" VARCHAR,
	"userrole" VARCHAR,
	"userrole" VARCHAR,
	"userrole" VARCHAR,
	"privatemessage" MEDIUMTEXT,
	"privatemessage" MEDIUMTEXT,
	"idusers" INT,
	"idusers" INT,
	"userpin" VARCHAR,
	"userquestion" VARCHAR,
	"useranswer" VARCHAR,
	"userage" VARCHAR,
	"secretquestion" VARCHAR,
	"secretquestion" VARCHAR,
	"secretanswer" VARCHAR,
	"secretanswer" VARCHAR,
	"useremail" VARCHAR,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "customers" (
	"customerid" VARCHAR,
	"customerid" VARCHAR,
	"customerid" VARCHAR,
	"customerid" VARCHAR,
	"customerid" VARCHAR,
	"customername" VARCHAR,
	"customername" VARCHAR,
	"customername" VARCHAR,
	"customername" VARCHAR,
	"customername" VARCHAR,
	"customeraddress" VARCHAR,
	"customeraddress" VARCHAR,
	"customeraddress" VARCHAR,
	"customeraddress" VARCHAR,
	"comment" LONGTEXT,
	"comment" LONGTEXT,
	"comment" LONGTEXT,
	"comment" LONGTEXT,
	"creditcardnumber" VARCHAR,
	"creditcardexp" VARCHAR,
	"creditcardsecuritynumber" VARCHAR,
	 PRIMARY KEY ("customerid")
);

CREATE TABLE "tb_users" (
	"usersid" INT,
	"username" VARCHAR,
	"comment" LONGTEXT,
	 PRIMARY KEY ("usersid")
);
