DROP DATABASE IF EXISTS "schema1393";
CREATE DATABASE "schema1393";
USE "schema1393";
CREATE TABLE "users" (
	"id" INT,
	"uuid" CHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"dob" VARCHAR,
	"phone" VARCHAR,
	"gender" VARCHAR,
	"address" LONGTEXT,
	"city" VARCHAR,
	"pincode" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR,
	"avatar_type" VARCHAR,
	"avatar_location" VARCHAR,
	"password" VARCHAR,
	"password_changed_at" TIMESTAMP,
	"active" TINYINT,
	"confirmation_code" VARCHAR,
	"confirmed" TINYINT,
	"timezone" VARCHAR,
	"last_login_at" TIMESTAMP,
	"last_login_ip" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"stripe_id" VARCHAR,
	"card_brand" VARCHAR,
	"card_last_four" VARCHAR,
	"trial_ends_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "withdraws" (
	"id" INT,
	"user_id" INT,
	"amount" DECIMAL,
	"payment_type" TINYINT,
	"status" TINYINT,
	"remarks" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "withdraws_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "testimonials" (
	"id" INT,
	"name" VARCHAR,
	"occupation" VARCHAR,
	"content" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teacher_profiles" (
	"id" INT,
	"user_id" INT,
	"facebook_link" TEXT,
	"twitter_link" TEXT,
	"linkedin_link" TEXT,
	"payment_method" VARCHAR,
	"payment_details" TEXT,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taxes" (
	"id" INT,
	"name" VARCHAR,
	"rate" DOUBLE,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taggables" (
	"tag_id" INT,
	"taggable_id" INT,
	"taggable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "surveys" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"json" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "survey_results" (
	"id" INT,
	"survey_id" INT,
	"user_id" INT,
	"ip_address" VARCHAR,
	"json" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscriptions" (
	"id" BIGINT,
	"user_id" BIGINT,
	"name" VARCHAR,
	"stripe_id" VARCHAR,
	"stripe_status" VARCHAR,
	"stripe_plan" VARCHAR,
	"quantity" INT,
	"trial_ends_at" TIMESTAMP,
	"ends_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscription_items" (
	"id" BIGINT,
	"subscription_id" BIGINT,
	"stripe_id" VARCHAR,
	"stripe_plan" VARCHAR,
	"quantity" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stripe_plans" (
	"id" INT,
	"product" VARCHAR,
	"plan_id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"amount" VARCHAR,
	"currency" VARCHAR,
	"interval" VARCHAR,
	"course" INT,
	"bundle" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sponsors" (
	"id" INT,
	"name" VARCHAR,
	"logo" TEXT,
	"link" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_accounts" (
	"id" INT,
	"user_id" INT,
	"provider" VARCHAR,
	"provider_id" VARCHAR,
	"token" TEXT,
	"avatar" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sliders" (
	"id" INT,
	"name" VARCHAR,
	"content" LONGTEXT,
	"bg_image" TEXT,
	"overlay" INT,
	"sequence" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" VARCHAR,
	"user_id" INT,
	"ip_address" VARCHAR,
	"user_agent" TEXT,
	"payload" TEXT,
	"last_activity" INT
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" INT,
	"user_id" INT,
	"reviewable_id" INT,
	"reviewable_type" VARCHAR,
	"rating" INT,
	"content" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reasons" (
	"id" INT,
	"title" VARCHAR,
	"content" TEXT,
	"icon" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions" (
	"id" INT,
	"question" TEXT,
	"questionimage" VARCHAR,
	"score" DOUBLE,
	"userid" INT,
	"courseid" VARCHAR,
	"questiontype" VARCHAR,
	"questionpage" VARCHAR,
	"questionorder" VARCHAR,
	"width" VARCHAR,
	"indent" VARCHAR,
	"fontsize" VARCHAR,
	"titlelocation" VARCHAR,
	"imagefit" VARCHAR,
	"imagewidth" VARCHAR,
	"imageheight" VARCHAR,
	"columncount" VARCHAR,
	"content" LONGTEXT,
	"logic" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permissions" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_has_permissions" (
	"permission_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("permission_id","role_id"),
	 CONSTRAINT "role_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "permissions" ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "password_histories" (
	"id" INT,
	"user_id" INT,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pages" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"content" LONGTEXT,
	"image" TEXT,
	"sidebar" INT,
	"meta_title" LONGTEXT,
	"meta_keywords" LONGTEXT,
	"meta_description" LONGTEXT,
	"published" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"user_id" INT,
	"reference_no" VARCHAR,
	"amount" DOUBLE,
	"payment_type" INT,
	"status" INT,
	"transaction_id" VARCHAR,
	"remarks" VARCHAR,
	"order_type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"coupon_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_items" (
	"id" INT,
	"order_id" INT,
	"item_type" VARCHAR,
	"item_id" INT,
	"price" DOUBLE,
	"type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_refresh_tokens" (
	"id" VARCHAR,
	"access_token_id" VARCHAR,
	"revoked" TINYINT,
	"expires_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_personal_access_clients" (
	"id" INT,
	"client_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_clients" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"secret" VARCHAR,
	"provider" VARCHAR,
	"redirect" TEXT,
	"personal_access_client" TINYINT,
	"password_client" TINYINT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_auth_codes" (
	"id" VARCHAR,
	"user_id" INT,
	"client_id" INT,
	"scopes" TEXT,
	"revoked" TINYINT,
	"expires_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_access_tokens" (
	"id" VARCHAR,
	"user_id" INT,
	"client_id" INT,
	"name" VARCHAR,
	"scopes" TEXT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"expires_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "model_has_roles" (
	"role_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	 PRIMARY KEY ("role_id","model_id","model_type")
);

CREATE TABLE "model_has_permissions" (
	"permission_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	 PRIMARY KEY ("permission_id","model_id","model_type")
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message_threads" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"thread_id" INT,
	"sender_id" INT,
	"body" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_thread_id_foreign" FOREIGN KEY ("thread_id") REFERENCES "message_threads" ("id")
);

CREATE TABLE "message_thread_participants" (
	"id" INT,
	"thread_id" INT,
	"user_id" INT,
	"last_read" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media" (
	"id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	"name" VARCHAR,
	"url" TEXT,
	"type" VARCHAR,
	"file_name" VARCHAR,
	"size" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "video_progresses" (
	"id" INT,
	"media_id" INT,
	"user_id" INT,
	"duration" DOUBLE,
	"progress" DOUBLE,
	"complete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_progresses_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "video_progresses_media_id_foreign" FOREIGN KEY ("media_id") REFERENCES "media" ("id")
);

CREATE TABLE "ltm_translations" (
	"id" INT,
	"status" INT,
	"locale" VARCHAR,
	"group" VARCHAR,
	"key" TEXT,
	"value" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locales" (
	"id" INT,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"display_type" VARCHAR,
	"is_default" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lesson_slot_bookings" (
	"id" INT,
	"live_lesson_slot_id" INT,
	"lesson_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kk" (
	"id" INT,
	"question" TEXT,
	"question_image" VARCHAR,
	"score" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions_options" (
	"id" INT,
	"question_id" INT,
	"option_text" TEXT,
	"explanation" TEXT,
	"correct" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "54421_596eee8745a1e" FOREIGN KEY ("question_id") REFERENCES "kk" ("id")
);

CREATE TABLE "question_test" (
	"question_id" INT,
	"test_id" INT,
	 CONSTRAINT "fk_p_54420_54422_test_que_596eeef70992f" FOREIGN KEY ("question_id") REFERENCES "kk" ("id")
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"queue" VARCHAR,
	"payload" LONGTEXT,
	"attempts" TINYINT,
	"reserved_at" INT,
	"available_at" INT,
	"created_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "invoices" (
	"id" INT,
	"order_id" INT,
	"user_id" INT,
	"url" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_user" (
	"course_id" INT,
	"user_id" INT
);

CREATE TABLE "course_timeline" (
	"id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	"course_id" INT,
	"sequence" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_student" (
	"course_id" INT,
	"user_id" INT,
	"rating" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "coupons" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"code" VARCHAR,
	"type" TINYINT,
	"amount" DOUBLE,
	"min_price" DOUBLE,
	"expires_at" VARCHAR,
	"per_user_limit" INT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contacts" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"number" BIGINT,
	"message" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "configs" (
	"id" INT,
	"key" TEXT,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chatter_categories" (
	"id" INT,
	"parent_id" INT,
	"order" INT,
	"name" VARCHAR,
	"color" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chatter_discussion" (
	"id" INT,
	"chatter_category_id" INT,
	"title" VARCHAR,
	"user_id" INT,
	"sticky" TINYINT,
	"views" INT,
	"answered" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"slug" VARCHAR,
	"color" VARCHAR,
	"deleted_at" TIMESTAMP,
	"last_reply_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chatter_discussion_chatter_category_id_foreign" FOREIGN KEY ("chatter_category_id") REFERENCES "chatter_categories" ("id")
);

CREATE TABLE "chatter_user_discussion" (
	"user_id" INT,
	"discussion_id" INT,
	 PRIMARY KEY ("user_id","discussion_id"),
	 CONSTRAINT "chatter_user_discussion_discussion_id_foreign" FOREIGN KEY ("discussion_id") REFERENCES "chatter_discussion" ("id")
);

CREATE TABLE "chatter_post" (
	"id" INT,
	"chatter_discussion_id" INT,
	"user_id" INT,
	"body" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"markdown" TINYINT,
	"locked" TINYINT,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chatter_post_chatter_discussion_id_foreign" FOREIGN KEY ("chatter_discussion_id") REFERENCES "chatter_discussion" ("id")
);

CREATE TABLE "chat_threads" (
	"id" INT,
	"subject" VARCHAR,
	"slug" VARCHAR,
	"max_participants" INT,
	"start_date" TIMESTAMP,
	"end_date" TIMESTAMP,
	"avatar" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chat_messages" (
	"id" INT,
	"thread_id" INT,
	"user_id" INT,
	"body" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chat_participants" (
	"id" INT,
	"thread_id" INT,
	"user_id" INT,
	"last_read" TIMESTAMP,
	"starred" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chat_participants_thread_id_foreign" FOREIGN KEY ("thread_id") REFERENCES "chat_messages" ("id")
);

CREATE TABLE "chapter_students" (
	"id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	"user_id" INT,
	"course_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificates" (
	"id" INT,
	"name" VARCHAR,
	"user_id" INT,
	"course_id" INT,
	"url" TEXT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"icon" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "faqs" (
	"id" INT,
	"category_id" INT,
	"question" TEXT,
	"answer" LONGTEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "faqs_category_id_foreign" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "courses" (
	"id" INT,
	"category_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"price" DECIMAL,
	"strike" DECIMAL,
	"course_image" VARCHAR,
	"start_date" DATE,
	"featured" INT,
	"trending" INT,
	"popular" INT,
	"meta_title" TEXT,
	"meta_description" LONGTEXT,
	"meta_keywords" LONGTEXT,
	"published" TINYINT,
	"free" TINYINT,
	"expire_at" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courses_category_id_foreign" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "wish_lists" (
	"id" BIGINT,
	"user_id" INT,
	"course_id" INT,
	"price" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wish_lists_course_id_foreign" FOREIGN KEY ("course_id") REFERENCES "courses" ("id"),
	 CONSTRAINT "wish_lists_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "lessons" (
	"id" INT,
	"course_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"lesson_image" VARCHAR,
	"short_text" TEXT,
	"full_text" TEXT,
	"position" INT,
	"free_lesson" TINYINT,
	"published" TINYINT,
	"live_lesson" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "54419_596eedbb6686e" FOREIGN KEY ("course_id") REFERENCES "courses" ("id")
);

CREATE TABLE "tests" (
	"id" INT,
	"course_id" INT,
	"lesson_id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"published" TINYINT,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "54422_596eeef53411a" FOREIGN KEY ("lesson_id") REFERENCES "lessons" ("id"),
	 CONSTRAINT "54422_596eeef514d00" FOREIGN KEY ("course_id") REFERENCES "courses" ("id")
);

CREATE TABLE "tests_results" (
	"id" INT,
	"test_id" INT,
	"user_id" INT,
	"test_result" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tests_results_test_id_foreign" FOREIGN KEY ("test_id") REFERENCES "tests" ("id")
);

CREATE TABLE "tests_results_answers" (
	"id" INT,
	"tests_result_id" INT,
	"question_id" INT,
	"option_id" INT,
	"correct" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tests_results_answers_tests_result_id_foreign" FOREIGN KEY ("tests_result_id") REFERENCES "tests_results" ("id"),
	 CONSTRAINT "tests_results_answers_question_id_foreign" FOREIGN KEY ("question_id") REFERENCES "kk" ("id"),
	 CONSTRAINT "tests_results_answers_option_id_foreign" FOREIGN KEY ("option_id") REFERENCES "questions_options" ("id")
);

CREATE TABLE "live_lesson_slots" (
	"id" INT,
	"lesson_id" INT,
	"meeting_id" VARCHAR,
	"topic" VARCHAR,
	"description" TEXT,
	"start_at" DATETIME,
	"duration" INT,
	"password" VARCHAR,
	"student_limit" INT,
	"start_url" TEXT,
	"join_url" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "live_lesson_slots_lesson_id_foreign" FOREIGN KEY ("lesson_id") REFERENCES "lessons" ("id")
);

CREATE TABLE "earnings" (
	"id" INT,
	"order_id" INT,
	"course_id" INT,
	"user_id" INT,
	"course_price" DECIMAL,
	"amount" DECIMAL,
	"rate" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "earnings_course_id_foreign" FOREIGN KEY ("course_id") REFERENCES "courses" ("id")
);

CREATE TABLE "cart_storage" (
	"id" VARCHAR,
	"cart_data" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cache" (
	"key" VARCHAR,
	"value" TEXT,
	"expiration" INT
);

CREATE TABLE "bundles" (
	"id" INT,
	"category_id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"price" DECIMAL,
	"course_image" VARCHAR,
	"start_date" DATE,
	"featured" INT,
	"trending" INT,
	"popular" INT,
	"meta_title" TEXT,
	"meta_description" LONGTEXT,
	"meta_keywords" LONGTEXT,
	"published" TINYINT,
	"free" TINYINT,
	"expire_at" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bundle_student" (
	"bundle_id" INT,
	"user_id" INT,
	"rating" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "bundle_courses" (
	"bundle_id" INT,
	"course_id" INT
);

CREATE TABLE "blogs" (
	"id" INT,
	"category_id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"content" TEXT,
	"image" VARCHAR,
	"views" INT,
	"meta_title" TEXT,
	"meta_description" LONGTEXT,
	"meta_keywords" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blog_comments" (
	"id" INT,
	"blog_id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"comment" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_menus" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_menu_items" (
	"id" INT,
	"label" VARCHAR,
	"link" VARCHAR,
	"parent" INT,
	"sort" INT,
	"class" VARCHAR,
	"menu" INT,
	"depth" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
