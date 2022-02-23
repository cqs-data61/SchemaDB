DROP DATABASE IF EXISTS "schema1768";
CREATE DATABASE "schema1768";
USE "schema1768";
CREATE TABLE "customers" (
	"customer_idpk" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"phone" VARCHAR,
	"join_date" TIMESTAMP,
	 PRIMARY KEY ("customer_idpk")
);

CREATE TABLE "user_roles" (
	"role_id" INT,
	"emp_username" VARCHAR,
	"user_role" ENUM,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "stores" (
	"store_idpk" INT,
	"address" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("store_idpk")
);

CREATE TABLE "transactions" (
	"transaction_id" INT,
	"customer_idfk" INT,
	"store_idfk" INT,
	"total" DECIMAL,
	 PRIMARY KEY ("transaction_id"),
	 CONSTRAINT "fkeycon_transactions_to_customers" FOREIGN KEY ("customer_idfk") REFERENCES "customers" ("customer_idpk"),
	 CONSTRAINT "fkeycon_transactions_to_stores" FOREIGN KEY ("store_idfk") REFERENCES "stores" ("store_idpk")
);

CREATE TABLE "employees" (
	"employee_idpk" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"phone" VARCHAR,
	"store_idfk" INT,
	 PRIMARY KEY ("employee_idpk"),
	 CONSTRAINT "fkeycon_employees_to_stores" FOREIGN KEY ("store_idfk") REFERENCES "stores" ("store_idpk")
);

CREATE TABLE "user_validation" (
	"validation_id" INT,
	"emp_idfk" INT,
	"emp_username" VARCHAR,
	"emp_validator" VARCHAR,
	"enabled" SMALLINT,
	 PRIMARY KEY ("validation_id"),
	 CONSTRAINT "fkeycon_user_validation_to_employees" FOREIGN KEY ("emp_idfk") REFERENCES "employees" ("employee_idpk")
);

CREATE TABLE "concessions" (
	"concessions_id" INT,
	"full_name" VARCHAR,
	"price" DECIMAL,
	"quantity" INT,
	 PRIMARY KEY ("concessions_id")
);

CREATE TABLE "transaction_concessions" (
	"concessions_idfk" INT,
	"transaction_idfk" INT,
	 CONSTRAINT "fkeycon_transaction_concessions_to_transactions" FOREIGN KEY ("transaction_idfk") REFERENCES "transactions" ("transaction_id"),
	 CONSTRAINT "fkeycon_transaction_concessions_to_concessions" FOREIGN KEY ("concessions_idfk") REFERENCES "concessions" ("concessions_id")
);

CREATE TABLE "movies" (
	"movie_id" INT,
	"title" VARCHAR,
	"director" VARCHAR,
	"genre" VARCHAR,
	"rating" VARCHAR,
	"in_stock" BOOL,
	"store_location" INT,
	 PRIMARY KEY ("movie_id")
);

CREATE TABLE "transaction_movies" (
	"movie_idfk" INT,
	"transaction_idfk" INT,
	 CONSTRAINT "fkeycon_transaction_movies_to_movies" FOREIGN KEY ("movie_idfk") REFERENCES "movies" ("movie_id"),
	 CONSTRAINT "fkeycon_transaction_movies_to_transactions" FOREIGN KEY ("transaction_idfk") REFERENCES "transactions" ("transaction_id")
);
