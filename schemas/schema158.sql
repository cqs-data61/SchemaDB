DROP DATABASE IF EXISTS "schema158";
CREATE DATABASE "schema158";
USE "schema158";
CREATE TABLE "user_types" (
	"id" INT,
	"title" VARCHAR,
	"name" VARCHAR,
	"level" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_statuses" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"code" VARCHAR,
	"username" VARCHAR,
	"user_type" VARCHAR,
	"dob" VARCHAR,
	"gender" VARCHAR,
	"photo" VARCHAR,
	"phone" VARCHAR,
	"phone2" VARCHAR,
	"bg_id" INT,
	"state_id" INT,
	"lga_id" INT,
	"nal_id" INT,
	"address" VARCHAR,
	"status" TINYINT,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "time_table_records" (
	"id" INT,
	"name" VARCHAR,
	"my_class_id" INT,
	"exam_id" INT,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "time_tables" (
	"id" INT,
	"ttr_id" INT,
	"ts_id" INT,
	"subject_id" INT,
	"exam_date" VARCHAR,
	"timestamp_from" VARCHAR,
	"timestamp_to" VARCHAR,
	"day" VARCHAR,
	"day_num" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "time_slots" (
	"id" INT,
	"ttr_id" INT,
	"hour_from" TINYINT,
	"min_from" VARCHAR,
	"meridian_from" VARCHAR,
	"hour_to" TINYINT,
	"min_to" VARCHAR,
	"meridian_to" VARCHAR,
	"time_from" VARCHAR,
	"time_to" VARCHAR,
	"timestamp_from" VARCHAR,
	"timestamp_to" VARCHAR,
	"full" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teacher_students" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teacher_evaluations" (
	"id" BIGINT,
	"question" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teacher_courses" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teacher_assignments" (
	"id" BIGINT,
	"term" VARCHAR,
	"course_id" VARCHAR,
	"class_id" VARCHAR,
	"file" VARCHAR,
	"topic" VARCHAR,
	"status" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"teacher_id" VARCHAR,
	"user_id" VARCHAR
);

CREATE TABLE "teachers_updates" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teachers_notifications" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teachers_instructions" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teachers" (
	"id" BIGINT,
	"user_id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"email" VARCHAR,
	"gender" VARCHAR,
	"nationality" VARCHAR,
	"state" VARCHAR,
	"lga" VARCHAR,
	"image" LONGTEXT,
	"age" BIGINT,
	"joining_date" VARCHAR,
	"speciality" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "subjects" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"my_class_id" INT,
	"teacher_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"course_id" TINYINT
);

CREATE TABLE "student_surveys" (
	"id" INT,
	"std_id" TINYINT,
	"question_id" VARCHAR,
	"answer" VARCHAR
);

CREATE TABLE "student_records" (
	"id" INT,
	"user_id" INT,
	"my_class_id" INT,
	"section_id" INT,
	"adm_no" VARCHAR,
	"my_parent_id" INT,
	"dorm_id" INT,
	"dorm_room_no" VARCHAR,
	"session" VARCHAR,
	"house" VARCHAR,
	"age" TINYINT,
	"year_admitted" VARCHAR,
	"grad" TINYINT,
	"grad_date" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "student_evaluations" (
	"id" BIGINT,
	"question" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "student_courses" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "student_assignments" (
	"id" BIGINT,
	"term" VARCHAR,
	"course_id" VARCHAR,
	"class_id" VARCHAR,
	"file" VARCHAR,
	"topic" VARCHAR,
	"status" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"user_id" VARCHAR,
	"assignment_id" VARCHAR
);

CREATE TABLE "students_updates" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "students_notifications" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "students_instructions" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "std_online_papers" (
	"id" BIGINT,
	"std_id" VARCHAR,
	"question_id" VARCHAR,
	"answer" VARCHAR,
	"paper_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "states" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "staff_records" (
	"id" INT,
	"user_id" INT,
	"code" VARCHAR,
	"emp_date" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "skills" (
	"id" INT,
	"name" VARCHAR,
	"skill_type" VARCHAR,
	"class_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "settings" (
	"id" INT,
	"type" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sections" (
	"id" INT,
	"name" VARCHAR,
	"my_class_id" INT,
	"teacher_id" INT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "reportings" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "receipts" (
	"id" INT,
	"pr_id" INT,
	"amt_paid" INT,
	"balance" INT,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "promotions" (
	"id" INT,
	"student_id" INT,
	"from_class" INT,
	"from_section" INT,
	"to_class" INT,
	"to_section" INT,
	"grad" TINYINT,
	"from_session" VARCHAR,
	"to_session" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "policies" (
	"id" BIGINT,
	"role_type" VARCHAR,
	"policy" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "pins" (
	"id" INT,
	"code" VARCHAR,
	"used" VARCHAR,
	"times_used" VARCHAR,
	"user_id" INT,
	"student_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payment_supports" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payment_records" (
	"id" INT,
	"payment_id" INT,
	"student_id" INT,
	"ref_no" VARCHAR,
	"amt_paid" INT,
	"balance" INT,
	"paid" TINYINT,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payments" (
	"id" INT,
	"title" VARCHAR,
	"amount" INT,
	"ref_no" VARCHAR,
	"method" VARCHAR,
	"my_class_id" INT,
	"description" VARCHAR,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "paymentrecord" (
	"id" BIGINT,
	"title" VARCHAR,
	"expensivetype" VARCHAR,
	"status" VARCHAR,
	"paymentmethod" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "papers" (
	"id" BIGINT,
	"course_id" VARCHAR,
	"class_id" VARCHAR,
	"teacher_id" VARCHAR,
	"unique_id" VARCHAR,
	"time" DATETIME,
	"topic" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "online_papers" (
	"id" BIGINT,
	"paper_id" INT,
	"question" TEXT,
	"choice1" VARCHAR,
	"choice2" VARCHAR,
	"choice3" VARCHAR,
	"choice4" VARCHAR,
	"answer" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "offered_courses" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"time" VARCHAR,
	"course_id" VARCHAR,
	"teacher_id" VARCHAR,
	"user_id" VARCHAR
);

CREATE TABLE "nationalities" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "my_classes" (
	"id" INT,
	"name" VARCHAR,
	"class_type_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "marks" (
	"id" INT,
	"student_id" INT,
	"subject_id" INT,
	"my_class_id" INT,
	"section_id" INT,
	"exam_id" INT,
	"t1" INT,
	"t2" INT,
	"t3" INT,
	"t4" INT,
	"tca" INT,
	"exm" INT,
	"tex1" INT,
	"tex2" INT,
	"tex3" INT,
	"sub_pos" TINYINT,
	"cum" INT,
	"cum_ave" VARCHAR,
	"grade_id" INT,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "lgas" (
	"id" INT,
	"state_id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "lectures" (
	"id" BIGINT,
	"course_id" VARCHAR,
	"class_id" VARCHAR,
	"teacher_id" VARCHAR,
	"file" TEXT,
	"topic" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "homepagefronts" (
	"id" BIGINT,
	"banner_text" VARCHAR,
	"start_learning" VARCHAR,
	"subjects_topic" VARCHAR,
	"subjects_text" VARCHAR,
	"learn_anywhere_topic" VARCHAR,
	"learn_anywhere_text" VARCHAR,
	"learn_anywhere_card_topic1" VARCHAR,
	"learn_anywhere_card_text1" VARCHAR,
	"learn_anywhere_card_topic2" VARCHAR,
	"learn_anywhere_card_text2" VARCHAR,
	"learn_anywhere_card_topic3" VARCHAR,
	"learn_anywhere_card_text3" VARCHAR,
	"pricing_content" VARCHAR,
	"testimonials" TEXT,
	"faq_topic" VARCHAR,
	"faq_content" VARCHAR,
	"contact_topic" VARCHAR,
	"contact_content" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "grades" (
	"id" INT,
	"name" VARCHAR,
	"class_type_id" INT,
	"mark_from" TINYINT,
	"mark_to" TINYINT,
	"remark" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_testimonials" (
	"id" BIGINT,
	"image" TEXT,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_pricings" (
	"id" BIGINT,
	"course_duration" VARCHAR,
	"price" VARCHAR,
	"description" VARCHAR,
	"feature_one" VARCHAR,
	"feature_two" VARCHAR,
	"feature_three" VARCHAR,
	"feature_four" VARCHAR,
	"feature_five" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"title" VARCHAR
);

CREATE TABLE "front_hpmepage_videos" (
	"id" BIGINT,
	"name" VARCHAR,
	"content" VARCHAR,
	"photo" VARCHAR,
	"youtubeurl" VARCHAR,
	"checkwebsite" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_homepage_galleries" (
	"id" BIGINT,
	"name" VARCHAR,
	"content" VARCHAR,
	"photo" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_galleries" (
	"id" BIGINT,
	"home_header_image" TEXT,
	"course_header_image" TEXT,
	"price_header_image" TEXT,
	"testimonial_header_image" TEXT,
	"blog_header_image" TEXT,
	"faq_header_image" TEXT,
	"contact_header_image" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_faqs" (
	"id" BIGINT,
	"faq" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_courses" (
	"id" BIGINT,
	"course_id" INT,
	"content" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "front_blogs" (
	"id" BIGINT,
	"title" TEXT,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "expense_types" (
	"id" BIGINT,
	"title" VARCHAR,
	"type" VARCHAR,
	"status" VARCHAR,
	"paymentmethod" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "exam_records" (
	"id" INT,
	"exam_id" INT,
	"student_id" INT,
	"my_class_id" INT,
	"section_id" INT,
	"total" INT,
	"ave" VARCHAR,
	"class_ave" VARCHAR,
	"pos" INT,
	"af" VARCHAR,
	"ps" VARCHAR,
	"p_comment" VARCHAR,
	"t_comment" VARCHAR,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "exams" (
	"id" INT,
	"name" VARCHAR,
	"term" VARCHAR,
	"year" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"file" TEXT,
	"course_id" TINYINT,
	"class_id" TINYINT,
	"topic" TEXT,
	"description" TEXT,
	"teacher_id" TINYINT
);

CREATE TABLE "dorms" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "curricula" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "course_registrations" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"courses_id" VARCHAR,
	"user_id" VARCHAR
);

CREATE TABLE "courses_study_plan" (
	"id" INT,
	"name" VARCHAR,
	"study_plan" VARCHAR,
	"course_id" INT
);

CREATE TABLE "courses" (
	"id" BIGINT,
	"teacher_id" BIGINT,
	"name" VARCHAR,
	"code" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"my_class_id" TINYINT,
	"time_slot" VARCHAR
);

CREATE TABLE "complains" (
	"id" BIGINT,
	"std_id" VARCHAR,
	"course_id" VARCHAR,
	"subject" VARCHAR,
	"complain" VARCHAR,
	"cell" VARCHAR,
	"photo" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "class_types" (
	"id" INT,
	"name" VARCHAR,
	"code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "class_schedules" (
	"id" INT,
	"course_id" INT,
	"class_id" INT,
	"teacher_id" INT,
	"topic" VARCHAR,
	"time" VARCHAR,
	"zoom_link" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "book_requests" (
	"id" INT,
	"book_id" INT,
	"user_id" INT,
	"start_date" VARCHAR,
	"end_date" VARCHAR,
	"returned" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "books" (
	"id" INT,
	"name" VARCHAR,
	"my_class_id" INT,
	"description" VARCHAR,
	"author" VARCHAR,
	"book_type" VARCHAR,
	"url" VARCHAR,
	"location" VARCHAR,
	"total_copies" INT,
	"issued_copies" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "blood_groups" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "applications" (
	"id" BIGINT,
	"user_id" VARCHAR,
	"email" VARCHAR,
	"subject" VARCHAR,
	"application" VARCHAR,
	"cell" VARCHAR,
	"photo" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"type" TINYINT,
	"to_send" VARCHAR,
	"status" TINYINT,
	"response" VARCHAR
);
