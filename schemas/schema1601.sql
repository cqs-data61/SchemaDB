DROP DATABASE IF EXISTS "schema1601";
CREATE DATABASE "schema1601";
USE "schema1601";
CREATE TABLE "tickets" (
	"ticket_id" BIGINT,
	"ticket_type" ENUM,
	"ticket_content" TEXT,
	"ticket_datetime" DATETIME,
	"ticket_resolved" BIT,
	 PRIMARY KEY ("ticket_id")
);

CREATE TABLE "subscription_types" (
	"subscription_type_id" INT,
	"subscription_type" ENUM,
	"subscription_type_discount" SMALLINT,
	 PRIMARY KEY ("subscription_type_id")
);

CREATE TABLE "publications" (
	"publication_id" INT,
	"publication_type" ENUM,
	"publication_name" VARCHAR,
	"publication_price" DECIMAL,
	"publication_description" VARCHAR,
	"publication_start" DATE,
	"publication_active" BIT,
	 PRIMARY KEY ("publication_id")
);

CREATE TABLE "subscriptions" (
	"subscription_id" BIGINT,
	"subscription_type" INT,
	"subscription_publication" INT,
	"subscription_date_started" DATE,
	"subscription_date_ended" DATE,
	 PRIMARY KEY ("subscription_id"),
	 CONSTRAINT "fk_subscriptions_publications1" FOREIGN KEY ("subscription_publication") REFERENCES "publications" ("publication_id"),
	 CONSTRAINT "fk_subscriptions_subscription_types1" FOREIGN KEY ("subscription_type") REFERENCES "subscription_types" ("subscription_type_id")
);

CREATE TABLE "cities" (
	"city_postcode" INT,
	"city_name" VARCHAR,
	 PRIMARY KEY ("city_postcode")
);

CREATE TABLE "business_customers" (
	"company_id" BIGINT,
	"company_oib" CHAR,
	"company_name" VARCHAR,
	"company_email" VARCHAR,
	"company_phone" VARCHAR,
	"company_address" VARCHAR,
	"company_postcode" INT,
	 PRIMARY KEY ("company_id"),
	 CONSTRAINT "fk_business_customers_cities1" FOREIGN KEY ("company_postcode") REFERENCES "cities" ("city_postcode")
);

CREATE TABLE "business_customers_tickets" (
	"business_customer_id" BIGINT,
	"business_customer_ticket_id" BIGINT,
	 PRIMARY KEY ("business_customer_id","business_customer_ticket_id"),
	 CONSTRAINT "fk_business_customers_has_tickets_tickets1" FOREIGN KEY ("business_customer_ticket_id") REFERENCES "tickets" ("ticket_id"),
	 CONSTRAINT "fk_business_customers_has_tickets_business_customers1" FOREIGN KEY ("business_customer_id") REFERENCES "business_customers" ("company_id")
);

CREATE TABLE "business_customer_subscriptions" (
	"business_customer_id" BIGINT,
	"business_customer_subscription_id" BIGINT,
	 PRIMARY KEY ("business_customer_id","business_customer_subscription_id"),
	 CONSTRAINT "fk_business_customers_has_subscriptions_subscriptions1" FOREIGN KEY ("business_customer_subscription_id") REFERENCES "subscriptions" ("subscription_id"),
	 CONSTRAINT "fk_business_customers_has_subscriptions_business_customers1" FOREIGN KEY ("business_customer_id") REFERENCES "business_customers" ("company_id")
);

CREATE TABLE "private_customers" (
	"customer_id" BIGINT,
	"customer_first_name" VARCHAR,
	"customer_last_name" VARCHAR,
	"customer_email" VARCHAR,
	"customer_phone" VARCHAR,
	"customer_address" VARCHAR,
	"customer_postcode" INT,
	 PRIMARY KEY ("customer_id"),
	 CONSTRAINT "fk_private_customers_cities" FOREIGN KEY ("customer_postcode") REFERENCES "cities" ("city_postcode")
);

CREATE TABLE "private_customers_tickets" (
	"private_customer_id" BIGINT,
	"private_customer_ticket_id" BIGINT,
	 PRIMARY KEY ("private_customer_id","private_customer_ticket_id"),
	 CONSTRAINT "fk_private_customers_has_tickets_private_customers1" FOREIGN KEY ("private_customer_id") REFERENCES "private_customers" ("customer_id"),
	 CONSTRAINT "fk_private_customers_has_tickets_tickets1" FOREIGN KEY ("private_customer_ticket_id") REFERENCES "tickets" ("ticket_id")
);

CREATE TABLE "private_customer_subscriptions" (
	"private_customer_id" BIGINT,
	"private_customer_subscription_id" BIGINT,
	 PRIMARY KEY ("private_customer_id","private_customer_subscription_id"),
	 CONSTRAINT "fk_private_customers_has_subscriptions_private_customers1" FOREIGN KEY ("private_customer_id") REFERENCES "private_customers" ("customer_id"),
	 CONSTRAINT "fk_private_customers_has_subscriptions_subscriptions1" FOREIGN KEY ("private_customer_subscription_id") REFERENCES "subscriptions" ("subscription_id")
);
