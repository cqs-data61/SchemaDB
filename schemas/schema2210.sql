DROP DATABASE IF EXISTS "schema2210";
CREATE DATABASE "schema2210";
USE "schema2210";
CREATE TABLE "doctors" (
	"doctor_id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"description" TEXT,
	"email" VARCHAR,
	"qualifications" VARCHAR,
	"practicalexperiences" VARCHAR,
	"qualificationsfile" VARCHAR
);

CREATE TABLE "roles" (
	"role_id" INT,
	"role" VARCHAR
);

CREATE TABLE "users" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"age" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"role_id" INT,
	"is_deleted" TINYINT,
	"img" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);

CREATE TABLE "success" (
	"success_id" INT,
	"description" VARCHAR,
	"user_id" INT,
	 CONSTRAINT "fkeycon_success_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "foodtraker" (
	"id" INT,
	"breakfast" VARCHAR,
	"snack" VARCHAR,
	"lunch" VARCHAR,
	"dinner" VARCHAR,
	"glassesofwater" INT,
	"activetime" VARCHAR,
	"user_id" INT,
	 CONSTRAINT "fkeycon_foodtraker_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "doctorsdetails" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"price" INT,
	"user_id" INT,
	 CONSTRAINT "fkeycon_doctorsdetails_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "purchased" (
	"id" INT,
	"doctorsservice_id" INT,
	"user_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_purchased_to_doctorsdetails" FOREIGN KEY ("doctorsservice_id") REFERENCES "doctorsdetails" ("id"),
	 CONSTRAINT "fkeycon_purchased_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "reviews" (
	"id" INT,
	"comment" VARCHAR,
	"doctorsservice_id" INT,
	"commenter_id" INT,
	"rating" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_reviews_to_users" FOREIGN KEY ("commenter_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_reviews_to_doctorsdetails" FOREIGN KEY ("doctorsservice_id") REFERENCES "doctorsdetails" ("id")
);
