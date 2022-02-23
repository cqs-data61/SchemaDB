DROP DATABASE IF EXISTS "schema905";
CREATE DATABASE "schema905";
USE "schema905";
CREATE TABLE "teams" (
	"id_team" INT,
	"sell_objective" INT,
	 PRIMARY KEY ("id_team")
);

CREATE TABLE "customers" (
	"id_customer" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"dni" INT,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id_customer")
);

CREATE TABLE "total_installments" (
	"id_total_installments" INT,
	"total_installments" INT,
	 PRIMARY KEY ("id_total_installments")
);

CREATE TABLE "payment_methods" (
	"id_payment_method" INT,
	"payment_method" VARCHAR,
	 PRIMARY KEY ("id_payment_method")
);

CREATE TABLE "countries" (
	"id_country" INT,
	"country_name" VARCHAR,
	 PRIMARY KEY ("id_country")
);

CREATE TABLE "provinces" (
	"id_province" INT,
	"id_country" INT,
	"province_name" VARCHAR,
	 PRIMARY KEY ("id_province"),
	 CONSTRAINT "fkeycon_provinces_to_countries" FOREIGN KEY ("id_country") REFERENCES "countries" ("id_country")
);

CREATE TABLE "cities" (
	"id_city" INT,
	"id_province" INT,
	"city_name" VARCHAR,
	 PRIMARY KEY ("id_city"),
	 CONSTRAINT "fkeycon_cities_to_provinces" FOREIGN KEY ("id_province") REFERENCES "provinces" ("id_province")
);

CREATE TABLE "marital_statuses" (
	"id_marital_status" INT,
	"marital_status" VARCHAR,
	 PRIMARY KEY ("id_marital_status")
);

CREATE TABLE "genders" (
	"id_gender" INT,
	"gender" VARCHAR,
	 PRIMARY KEY ("id_gender")
);

CREATE TABLE "affiliates" (
	"id_affiliate" INT,
	"id_gender" INT,
	"id_marital_status" INT,
	"id_city" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"dni" INT,
	"address" VARCHAR,
	"phone_number" VARCHAR,
	"email" VARCHAR,
	"birth_date" DATE,
	"current_coursing_year" INT,
	"checkin_date" DATE,
	 PRIMARY KEY ("id_affiliate"),
	 CONSTRAINT "fkeycon_affiliates_to_marital_statuses" FOREIGN KEY ("id_marital_status") REFERENCES "marital_statuses" ("id_marital_status"),
	 CONSTRAINT "fkeycon_affiliates_to_genders" FOREIGN KEY ("id_gender") REFERENCES "genders" ("id_gender"),
	 CONSTRAINT "fkeycon_affiliates_to_cities" FOREIGN KEY ("id_city") REFERENCES "cities" ("id_city")
);

CREATE TABLE "teams_record" (
	"id_teams_record" INT,
	"id_affiliate" INT,
	"id_team" INT,
	"entry_date" DATE,
	 PRIMARY KEY ("id_teams_record"),
	 CONSTRAINT "fkeycon_teams_record_to_teams" FOREIGN KEY ("id_team") REFERENCES "teams" ("id_team"),
	 CONSTRAINT "fkeycon_teams_record_to_affiliates" FOREIGN KEY ("id_affiliate") REFERENCES "affiliates" ("id_affiliate")
);

CREATE TABLE "trades" (
	"id_trade" INT,
	"id_customer" INT,
	"id_affiliate" INT,
	"id_payment_method" INT,
	"id_total_installments" INT,
	"purchase_date" DATE,
	"belonging_group" INT,
	 PRIMARY KEY ("id_trade"),
	 CONSTRAINT "fkeycon_trades_to_affiliates" FOREIGN KEY ("id_affiliate") REFERENCES "affiliates" ("id_affiliate"),
	 CONSTRAINT "fkeycon_trades_to_total_installments" FOREIGN KEY ("id_total_installments") REFERENCES "total_installments" ("id_total_installments"),
	 CONSTRAINT "fkeycon_trades_to_payment_methods" FOREIGN KEY ("id_payment_method") REFERENCES "payment_methods" ("id_payment_method"),
	 CONSTRAINT "fkeycon_trades_to_customers" FOREIGN KEY ("id_customer") REFERENCES "customers" ("id_customer")
);

CREATE TABLE "raffles" (
	"id_raffle" INT,
	"id_trade" INT,
	"serial_no" INT,
	"price" INT,
	"print_year" INT,
	 PRIMARY KEY ("id_raffle"),
	 CONSTRAINT "fkeycon_raffles_to_trades" FOREIGN KEY ("id_trade") REFERENCES "trades" ("id_trade")
);

CREATE TABLE "installments" (
	"id_installment" INT,
	"id_raffle" INT,
	"expiring_date" DATE,
	 PRIMARY KEY ("id_installment"),
	 CONSTRAINT "fkeycon_installments_to_raffles" FOREIGN KEY ("id_raffle") REFERENCES "raffles" ("id_raffle")
);

CREATE TABLE "payments" (
	"id_payment" INT,
	"id_installment" INT,
	"pay_date" DATE,
	 PRIMARY KEY ("id_payment"),
	 CONSTRAINT "fkeycon_payments_to_installments" FOREIGN KEY ("id_installment") REFERENCES "installments" ("id_installment")
);
