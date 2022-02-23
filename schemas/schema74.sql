DROP DATABASE IF EXISTS "schema74";
CREATE DATABASE "schema74";
USE "schema74";
CREATE TABLE "book" (
	"isbn" VARCHAR,
	"book_name" TEXT,
	"year" INT,
	"author" TEXT,
	"language" CHAR,
	 PRIMARY KEY ("isbn")
);

CREATE TABLE "user" (
	"user_id" VARCHAR,
	"name" TEXT,
	"email_address" VARCHAR,
	"house_number" VARCHAR,
	"street" TEXT,
	"locality" TEXT,
	"postal_code" NUMERIC,
	"landmark" TEXT,
	"city" TEXT,
	"state" TEXT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_phone_number" (
	"phone_number" NUMERIC,
	"user_id" VARCHAR,
	"is_primary" INT,
	 PRIMARY KEY ("phone_number","user_id"),
	 CONSTRAINT "fkeycon_user_phone_number_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
);

CREATE TABLE "history" (
	"user_id" VARCHAR,
	"isbn" VARCHAR,
	 PRIMARY KEY ("user_id","isbn"),
	 CONSTRAINT "fkeycon_history_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
	 CONSTRAINT "fkeycon_history_to_book" FOREIGN KEY ("isbn") REFERENCES "book" ("isbn")
);

CREATE TABLE "book_review" (
	"rating" INT,
	"review" TEXT,
	"user_id" VARCHAR,
	"isbn" VARCHAR,
	 PRIMARY KEY ("user_id","isbn"),
	 CONSTRAINT "fkeycon_book_review_to_book" FOREIGN KEY ("isbn") REFERENCES "book" ("isbn"),
	 CONSTRAINT "fkeycon_book_review_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
);

CREATE TABLE "my_books" (
	"repayment_policy" TEXT,
	"availability" INT,
	"other_specifications" TEXT,
	"security_money_of_book" INT,
	"user_id" VARCHAR,
	"isbn" VARCHAR,
	 PRIMARY KEY ("user_id","isbn"),
	 CONSTRAINT "fkeycon_my_books_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
	 CONSTRAINT "fkeycon_my_books_to_book" FOREIGN KEY ("isbn") REFERENCES "book" ("isbn")
);

CREATE TABLE "request" (
	"date_of_request" DATETIME,
	"request_message" TEXT,
	"request_id" INT,
	"borrow_time_duration" INT,
	"completion_flag" INT,
	"user_id" VARCHAR,
	"isbn" VARCHAR,
	"requested_user_id" VARCHAR,
	 PRIMARY KEY ("request_id"),
	 CONSTRAINT "fkeycon_request_to_user" FOREIGN KEY ("requested_user_id") REFERENCES "user" ("user_id"),
	 CONSTRAINT "fkeycon_request_to_book" FOREIGN KEY ("isbn") REFERENCES "book" ("isbn")
);

CREATE TABLE "login_credential" (
	"password" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "fkeycon_login_credential_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
);
