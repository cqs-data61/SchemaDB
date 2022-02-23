DROP DATABASE IF EXISTS "schema359";
CREATE DATABASE "schema359";
USE "schema359";
CREATE TABLE "productlines" (
	"productline" VARCHAR,
	"textdescription" VARCHAR,
	 PRIMARY KEY ("productline")
);

CREATE TABLE "products" (
	"productcode" VARCHAR,
	"productname" VARCHAR,
	"productline" VARCHAR,
	"productscale" VARCHAR,
	"productvendor" VARCHAR,
	"quantityinstock" VARCHAR,
	"buyprice" VARCHAR,
	"msrp" VARCHAR,
	 PRIMARY KEY ("productcode"),
	 CONSTRAINT "product_line" FOREIGN KEY ("productline") REFERENCES "productlines" ("productline")
);

CREATE TABLE "payments" (
	"customernumber" INT,
	"checknumber" VARCHAR,
	"paymentdate" DATETIME,
	"amount" DECIMAL,
	 PRIMARY KEY ("customernumber","checknumber")
);

CREATE TABLE "orderdetails" (
	"ordernumber" INT,
	"productcode" VARCHAR,
	"quantityordered" VARCHAR,
	"priceeach" DECIMAL,
	"orderlinenumber" INT,
	 PRIMARY KEY ("ordernumber","productcode")
);

CREATE TABLE "offices" (
	"officecode" INT,
	"office_city" VARCHAR,
	"phone" VARCHAR,
	"addressline1" VARCHAR,
	"addressline2" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR,
	"postalcode" VARCHAR,
	"territory" VARCHAR,
	 PRIMARY KEY ("officecode")
);

CREATE TABLE "employees" (
	"employeenumber" VARCHAR,
	"lastname" VARCHAR,
	"firstname" VARCHAR,
	"extension" VARCHAR,
	"email" VARCHAR,
	"officecode" INT,
	"reportsto" VARCHAR,
	"jobtitle" VARCHAR,
	 PRIMARY KEY ("employeenumber"),
	 CONSTRAINT "officecode" FOREIGN KEY ("officecode") REFERENCES "offices" ("officecode")
);

CREATE TABLE "customers" (
	"customernumber" INT,
	"customername" VARCHAR,
	"contactlastname" VARCHAR,
	"contactfirstname" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"postalcode" VARCHAR,
	"country" VARCHAR,
	"salesrepemployeenumber" VARCHAR,
	"creditlimit" INT,
	 PRIMARY KEY ("customernumber"),
	 CONSTRAINT "emp_no" FOREIGN KEY ("salesrepemployeenumber") REFERENCES "employees" ("employeenumber")
);

CREATE TABLE "orders" (
	"ordernumber" INT,
	"orderdate" DATETIME,
	"requireddate" DATETIME,
	"shippeddate" VARCHAR,
	"status" VARCHAR,
	"comments" VARCHAR,
	"customernumber" INT,
	 PRIMARY KEY ("ordernumber"),
	 CONSTRAINT "customer_no" FOREIGN KEY ("customernumber") REFERENCES "customers" ("customernumber")
);
