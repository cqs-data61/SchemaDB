DROP DATABASE IF EXISTS "schema2422";
CREATE DATABASE "schema2422";
USE "schema2422";
CREATE TABLE "productlines" (
	"productline" VARCHAR,
	"textdescription" VARCHAR,
	"htmldescription" MEDIUMTEXT,
	"image" MEDIUMBLOB,
	 PRIMARY KEY ("productline")
);

CREATE TABLE "products" (
	"productcode" VARCHAR,
	"productname" VARCHAR,
	"productline" VARCHAR,
	"productscale" VARCHAR,
	"productvendor" VARCHAR,
	"productdescription" TEXT,
	"quantityinstock" SMALLINT,
	"buyprice" DECIMAL,
	"msrp" DECIMAL,
	 PRIMARY KEY ("productcode"),
	 CONSTRAINT "products_ibfk_1" FOREIGN KEY ("productline") REFERENCES "productlines" ("productline")
);

CREATE TABLE "orderdetails" (
	"ordernumber" INT,
	"productcode" VARCHAR,
	"quantityordered" INT,
	"priceeach" DECIMAL,
	"orderlinenumber" SMALLINT,
	 PRIMARY KEY ("ordernumber","productcode")
);

CREATE TABLE "offices" (
	"officecode" VARCHAR,
	"city" VARCHAR,
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
	"employeenumber" INT,
	"lastname" VARCHAR,
	"firstname" VARCHAR,
	"extension" VARCHAR,
	"email" VARCHAR,
	"officecode" VARCHAR,
	"reportsto" INT,
	"jobtitle" VARCHAR,
	 PRIMARY KEY ("employeenumber"),
	 CONSTRAINT "employees_ibfk_1" FOREIGN KEY ("reportsto") REFERENCES "employees" ("employeenumber")
);

CREATE TABLE "customers" (
	"customernumber" INT,
	"customername" VARCHAR,
	"contactlastname" VARCHAR,
	"contactfirstname" VARCHAR,
	"phone" VARCHAR,
	"addressline1" VARCHAR,
	"addressline2" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"postalcode" VARCHAR,
	"country" VARCHAR,
	"salesrepemployeenumber" INT,
	"creditlimit" DECIMAL,
	 PRIMARY KEY ("customernumber")
);

CREATE TABLE "payments" (
	"customernumber" INT,
	"checknumber" VARCHAR,
	"paymentdate" DATE,
	"amount" DECIMAL,
	 PRIMARY KEY ("customernumber","checknumber"),
	 CONSTRAINT "payments_ibfk_1" FOREIGN KEY ("customernumber") REFERENCES "customers" ("customernumber")
);

CREATE TABLE "orders" (
	"ordernumber" INT,
	"orderdate" DATE,
	"requireddate" DATE,
	"shippeddate" DATE,
	"status" VARCHAR,
	"comments" TEXT,
	"customernumber" INT,
	 PRIMARY KEY ("ordernumber"),
	 CONSTRAINT "orders_ibfk_1" FOREIGN KEY ("customernumber") REFERENCES "customers" ("customernumber")
);
