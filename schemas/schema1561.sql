DROP DATABASE IF EXISTS "schema1561";
CREATE DATABASE "schema1561";
USE "schema1561";
CREATE TABLE "voucher_code_user" (
	"id" INT,
	"user_id" INT,
	"voucher_code_id" INT,
	"date_claimed" DATE,
	"datetime" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "voucher_code" (
	"id" INT,
	"merchant" VARCHAR,
	"voucher_code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_info" (
	"user_id" INT,
	"course_id" INT,
	"major_id" INT,
	"firstname" VARCHAR,
	"middlename" VARCHAR,
	"lastname" VARCHAR,
	"extname" VARCHAR,
	"year_graduated" INT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password_hash" VARCHAR,
	"auth_key" VARCHAR,
	"confirmed_at" INT,
	"unconfirmed_email" VARCHAR,
	"blocked_at" INT,
	"registration_ip" VARCHAR,
	"created_at" INT,
	"updated_at" INT,
	"flags" INT,
	"last_login_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "unemployment_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "unemployment" (
	"id" INT,
	"user_id" INT,
	"unemployment_reason_id" INT,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "training" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"duration_start" DATE,
	"duration_end" DATE,
	"credits_earned" INT,
	"institution" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "token" (
	"user_id" INT,
	"code" VARCHAR,
	"created_at" INT,
	"type" SMALLINT
);

CREATE TABLE "tblregion" (
	"region_c" VARCHAR,
	"region_m" VARCHAR,
	"abbreviation" VARCHAR,
	"region_sort" INT,
	 PRIMARY KEY ("region_c")
);

CREATE TABLE "tblprovince" (
	"region_c" VARCHAR,
	"province_c" VARCHAR,
	"province_m" VARCHAR,
	 PRIMARY KEY ("province_c")
);

CREATE TABLE "tblcitymun" (
	"region_c" VARCHAR,
	"province_c" VARCHAR,
	"district_c" VARCHAR,
	"citymun_c" VARCHAR,
	"citymun_m" VARCHAR,
	"lgu_type" VARCHAR
);

CREATE TABLE "taking_course_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taking_course" (
	"id" INT,
	"user_id" INT,
	"taking_course_id" INT,
	"undergrad" ENUM,
	"graduate" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "suggestion" (
	"id" INT,
	"user_id" INT,
	"suggestion" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stay_job_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stay_job_range_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stay_job_range" (
	"id" INT,
	"user_id" INT,
	"stay_job_range_reason_id" INT,
	"other_job_range" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stay_job" (
	"id" INT,
	"user_id" INT,
	"stay_job_reason_id" VARCHAR,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stage" (
	"id" INT,
	"title" TEXT,
	"table" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_account" (
	"id" INT,
	"user_id" INT,
	"provider" VARCHAR,
	"client_id" VARCHAR,
	"data" TEXT,
	"code" VARCHAR,
	"created_at" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "relevant_job" (
	"id" INT,
	"user_id" INT,
	"relevant_job" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pursue_study_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pursue_study" (
	"id" INT,
	"user_id" INT,
	"pursue_study_reason_id" INT,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profile" (
	"user_id" INT,
	"name" VARCHAR,
	"public_email" VARCHAR,
	"gravatar_email" VARCHAR,
	"gravatar_id" VARCHAR,
	"location" VARCHAR,
	"website" VARCHAR,
	"bio" TEXT,
	"timezone" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "place_of_work" (
	"id" INT,
	"user_id" INT,
	"place_of_work" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "other_taking_course" (
	"id" INT,
	"user_id" INT,
	"reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "nickname" (
	"id" INT,
	"user_id" INT,
	"nickname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migration" (
	"version" VARCHAR,
	"apply_time" INT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "major" (
	"id" INT,
	"course_id" INT,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "level" (
	"id" INT,
	"name" VARCHAR,
	"points_from" INT,
	"points_to" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "land_job_range" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "land_job" (
	"id" INT,
	"user_id" INT,
	"land_job_range_id" INT,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "job_level_position" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "job_level" (
	"id" INT,
	"user_id" INT,
	"job_level_position_id" INT,
	"first_job" ENUM,
	"current_job" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "initial_gross_range" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "initial_gross" (
	"id" INT,
	"user_id" INT,
	"initial_gross_range_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "general_information" (
	"id" INT,
	"user_id" INT,
	"firstname" VARCHAR,
	"middlename" VARCHAR,
	"lastname" VARCHAR,
	"extname" VARCHAR,
	"permanent_address" TEXT,
	"email_address" VARCHAR,
	"contact_number" VARCHAR,
	"civil_status" ENUM,
	"sex" ENUM,
	"birthday" DATE,
	"region_id" VARCHAR,
	"province_id" VARCHAR,
	"location_of_residence" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "follower" (
	"id" INT,
	"follower_id" INT,
	"followed_id" INT,
	"datetime" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "first_job_after" (
	"id" INT,
	"user_id" INT,
	"first_job" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "first_job" (
	"id" INT,
	"user_id" INT,
	"first_job" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "find_job_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "find_job" (
	"id" INT,
	"user_id" INT,
	"find_job_reason_id" INT,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "examination" (
	"id" INT,
	"user_id" INT,
	"name_of_examination" VARCHAR,
	"date_taken" DATE,
	"rating" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employment" (
	"id" INT,
	"user_id" INT,
	"employed" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "educational_attainment" (
	"id" INT,
	"user_id" INT,
	"degree" TEXT,
	"college" TEXT,
	"year_graduated" INT,
	"honors" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "competency_skill" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "competency" (
	"id" INT,
	"user_id" INT,
	"competency_skill_id" VARCHAR,
	"other_competency" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "college" (
	"id" INT,
	"abbreviation" VARCHAR,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course" (
	"id" INT,
	"college_id" INT,
	"abbreviation" VARCHAR,
	"name" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_course" FOREIGN KEY ("college_id") REFERENCES "college" ("id")
);

CREATE TABLE "classification" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chronology" (
	"id" INT,
	"table" VARCHAR,
	"stage_id" INT,
	"previous_stage" VARCHAR,
	"next_stage" VARCHAR,
	"points" INT,
	"subpoints" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chronology_user" (
	"id" INT,
	"user_id" INT,
	"chronology_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_chronology_user" FOREIGN KEY ("chronology_id") REFERENCES "chronology" ("id")
);

CREATE TABLE "change_job_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "change_job" (
	"id" INT,
	"user_id" INT,
	"change_job_reason_id" INT,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "business_line" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employment_status" (
	"id" INT,
	"user_id" INT,
	"employment_status" ENUM,
	"occupation" VARCHAR,
	"classification_id" INT,
	"company_name" VARCHAR,
	"business_line_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_employment_status_business_line" FOREIGN KEY ("business_line_id") REFERENCES "business_line" ("id"),
	 CONSTRAINT "FK_employment_status" FOREIGN KEY ("classification_id") REFERENCES "classification" ("id")
);

CREATE TABLE "badge" (
	"id" INT,
	"stage" INT,
	"title" TEXT,
	"table" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "badge_user" (
	"id" INT,
	"user_id" INT,
	"badge_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_badge_user" FOREIGN KEY ("badge_id") REFERENCES "badge" ("id")
);

CREATE TABLE "avatar" (
	"id" INT,
	"user_id" INT,
	"avatar" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_rule" (
	"name" VARCHAR,
	"data" BLOB,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item" (
	"name" VARCHAR,
	"type" SMALLINT,
	"description" TEXT,
	"rule_name" VARCHAR,
	"data" BLOB,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item_child" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child"),
	 CONSTRAINT "auth_item_child_ibfk_2" FOREIGN KEY ("child") REFERENCES "auth_item" ("name"),
	 CONSTRAINT "auth_item_child_ibfk_1" FOREIGN KEY ("parent") REFERENCES "auth_item" ("name")
);

CREATE TABLE "auth_assignment" (
	"item_name" VARCHAR,
	"user_id" VARCHAR,
	"created_at" INT,
	 PRIMARY KEY ("item_name","user_id")
);

CREATE TABLE "alumnus" (
	"id" INT,
	"course_id" INT,
	"major_id" INT,
	"lastname" VARCHAR,
	"firstname" VARCHAR,
	"middlename" VARCHAR,
	"sex" ENUM,
	"batch" INT,
	"date_of_graduation" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accept_job_reason" (
	"id" INT,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accept_job" (
	"id" INT,
	"user_id" INT,
	"accept_job_reason_id" VARCHAR,
	"other_reason" TEXT,
	 PRIMARY KEY ("id")
);
