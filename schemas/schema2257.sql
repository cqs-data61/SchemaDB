DROP DATABASE IF EXISTS "schema2257";
CREATE DATABASE "schema2257";
USE "schema2257";
CREATE TABLE "wishlist" (
	"wishlistid" VARCHAR,
	"productid" VARCHAR,
	 PRIMARY KEY ("wishlistid")
);

CREATE TABLE "users" (
	"userid" VARCHAR,
	"userfname" VARCHAR,
	"userlname" VARCHAR,
	"user_type" VARCHAR,
	"password" VARCHAR,
	"datecreated" DATE,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "shopping cart" (
	"shoppingcartid" VARCHAR,
	"productid" VARCHAR,
	"orderstatus" VARCHAR,
	 PRIMARY KEY ("shoppingcartid")
);

CREATE TABLE "shipper" (
	"shipperid" VARCHAR,
	"shippername" VARCHAR,
	"contactname" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("shipperid")
);

CREATE TABLE "sellers" (
	"sellerid" VARCHAR,
	"userid" VARCHAR,
	"user_type" VARCHAR,
	"companyname" VARCHAR,
	"contactfname" VARCHAR,
	"contactlname" VARCHAR,
	"contactposition" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"logo" BLOB,
	 PRIMARY KEY ("userid","user_type")
);

CREATE TABLE "reviews" (
	"reviewid" VARCHAR,
	"productid" VARCHAR,
	"customerreview" VARCHAR,
	"rating" TINYINT,
	 PRIMARY KEY ("reviewid")
);

CREATE TABLE "product" (
	"productid" VARCHAR,
	"departmentid" VARCHAR,
	"category" VARCHAR,
	"idsku" VARCHAR,
	"productname" VARCHAR,
	"quantity" INT,
	"unitprice" DECIMAL,
	"unitpriceeuro" DECIMAL,
	"unitpriceusd" DECIMAL,
	"ranking" INT,
	"productdesc" TEXT,
	"unitsinstock" INT,
	"unitsinorder" INT,
	"picture" BLOB,
	 PRIMARY KEY ("productid")
);

CREATE TABLE "payment_giftcard" (
	"giftcardid" VARCHAR,
	"paymentid" VARCHAR,
	"giftcardnumber" CHAR,
	"giftcardexpmm" CHAR,
	"giftcardexpyyyy" VARCHAR,
	 PRIMARY KEY ("giftcardid")
);

CREATE TABLE "payment_creditcard" (
	"creditcardid" VARCHAR,
	"paymentid" VARCHAR,
	"creditcardnum" VARCHAR,
	"cardexpm" INT,
	"cardexpy" INT,
	"cardsecuritynumber" VARCHAR,
	"cardaddress" VARCHAR,
	"cardcity" VARCHAR,
	"cardpostalcode" VARCHAR,
	 PRIMARY KEY ("creditcardid")
);

CREATE TABLE "payment" (
	"paymentid" VARCHAR,
	"orderid" VARCHAR,
	"payment_type" VARCHAR,
	 PRIMARY KEY ("paymentid")
);

CREATE TABLE "orders_has_product" (
	"orderproductid" VARCHAR,
	"orders_orderid" VARCHAR,
	"product_productid" VARCHAR,
	 PRIMARY KEY ("orderproductid")
);

CREATE TABLE "orders" (
	"orderid" VARCHAR,
	"userid" VARCHAR,
	"shipperid" VARCHAR,
	"orderdate" DATE,
	"requireddate" DATE,
	"freight" DECIMAL,
	"salestax" DECIMAL,
	"timestamp" TIMESTAMP,
	"transactstatus" VARCHAR,
	"invoiceamount" INT,
	"paymentdate" DATE,
	"itemquantity" INT,
	 PRIMARY KEY ("orderid")
);

CREATE TABLE "offer" (
	"offerid" VARCHAR,
	"productid" VARCHAR,
	"discountid" VARCHAR,
	 PRIMARY KEY ("offerid")
);

CREATE TABLE "membership" (
	"membershipid" VARCHAR,
	"membershiptype" VARCHAR,
	 PRIMARY KEY ("membershipid")
);

CREATE TABLE "discount" (
	"discountid" VARCHAR,
	"discountprecent" DECIMAL,
	 PRIMARY KEY ("discountid")
);

CREATE TABLE "department" (
	"departmentid" VARCHAR,
	"depname" VARCHAR,
	"contactfname" TEXT,
	 PRIMARY KEY ("departmentid")
);

CREATE TABLE "buyers" (
	"buyerid" VARCHAR,
	"userid" VARCHAR,
	"user_type" VARCHAR,
	"membershipid" VARCHAR,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("userid","user_type")
);

CREATE TABLE "address" (
	"addressid" VARCHAR,
	"userid" VARCHAR,
	"address_type" VARCHAR,
	"addressline1" VARCHAR,
	"city" VARCHAR,
	"province" VARCHAR,
	"country" VARCHAR,
	"postalcode" VARCHAR,
	 PRIMARY KEY ("addressid")
);
