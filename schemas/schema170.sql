DROP DATABASE IF EXISTS "schema170";
CREATE DATABASE "schema170";
USE "schema170";
CREATE TABLE "user_vcards" (
	"id" BIGINT,
	"user_id" INT,
	"template" TINYINT,
	"direction" TINYINT,
	"profile_image" VARCHAR,
	"cover_image" VARCHAR,
	"name" VARCHAR,
	"occupation" VARCHAR,
	"introduction" TEXT,
	"information" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"vcard_name" VARCHAR
);

CREATE TABLE "user_testimonials" (
	"id" BIGINT,
	"image" TEXT,
	"name" VARCHAR,
	"occupation" VARCHAR,
	"content" TEXT,
	"serial_number" INT,
	"lang_id" BIGINT,
	"user_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_socials" (
	"id" BIGINT,
	"icon" TEXT,
	"url" VARCHAR,
	"serial_number" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_skills" (
	"id" BIGINT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"percentage" INT,
	"color" VARCHAR,
	"serial_number" INT,
	"language_id" BIGINT,
	"user_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_services" (
	"id" BIGINT,
	"image" TEXT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"content" LONGTEXT,
	"serial_number" INT,
	"featured" INT,
	"detail_page" INT,
	"lang_id" BIGINT,
	"user_id" BIGINT,
	"meta_keywords" TEXT,
	"meta_description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_seos" (
	"id" INT,
	"user_id" INT,
	"language_id" INT,
	"home_meta_keywords" TEXT,
	"home_meta_description" TEXT,
	"services_meta_keywords" TEXT,
	"services_meta_description" TEXT,
	"blogs_meta_keywords" TEXT,
	"blogs_meta_description" TEXT,
	"portfolios_meta_keywords" TEXT,
	"portfolios_meta_description" TEXT
);

CREATE TABLE "user_qr_codes" (
	"id" BIGINT,
	"user_id" INT,
	"name" VARCHAR,
	"url" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_portfolio_images" (
	"id" INT,
	"user_portfolio_id" INT,
	"image" VARCHAR,
	"user_id" INT
);

CREATE TABLE "user_portfolio_categories" (
	"id" BIGINT,
	"name" VARCHAR,
	"status" TINYINT,
	"language_id" INT,
	"user_id" INT,
	"serial_number" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_portfolios" (
	"id" BIGINT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"image" VARCHAR,
	"content" LONGTEXT,
	"serial_number" INT,
	"featured" INT,
	"language_id" BIGINT,
	"category_id" BIGINT,
	"user_id" BIGINT,
	"meta_keywords" TEXT,
	"meta_description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_permissions" (
	"id" BIGINT,
	"package_id" INT,
	"user_id" BIGINT,
	"permissions" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_languages" (
	"id" BIGINT,
	"name" VARCHAR,
	"code" VARCHAR,
	"is_default" TINYINT,
	"rtl" TINYINT,
	"keywords" LONGTEXT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_home_page_texts" (
	"id" BIGINT,
	"hero_image" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"designation" TEXT,
	"about_image" TEXT,
	"about_title" TEXT,
	"about_subtitle" TEXT,
	"about_content" TEXT,
	"skills_image" TEXT,
	"skills_title" TEXT,
	"skills_subtitle" TEXT,
	"skills_content" TEXT,
	"service_title" TEXT,
	"service_subtitle" TEXT,
	"experience_title" TEXT,
	"experience_subtitle" TEXT,
	"achievement_image" TEXT,
	"achievement_title" TEXT,
	"achievement_subtitle" TEXT,
	"portfolio_title" TEXT,
	"portfolio_subtitle" TEXT,
	"testimonial_title" TEXT,
	"testimonial_subtitle" TEXT,
	"blog_title" TEXT,
	"blog_subtitle" TEXT,
	"contact_title" TEXT,
	"contact_subtitle" TEXT,
	"language_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_educations" (
	"id" BIGINT,
	"degree_name" VARCHAR,
	"slug" VARCHAR,
	"short_description" TEXT,
	"start_date" DATE,
	"end_date" DATE,
	"serial_number" INT,
	"user_id" BIGINT,
	"lang_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_cv_sections" (
	"id" BIGINT,
	"user_cv_id" INT,
	"name" VARCHAR,
	"icon" VARCHAR,
	"column" TINYINT,
	"order" TINYINT,
	"content" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_cvs" (
	"id" BIGINT,
	"user_id" INT,
	"cv_name" VARCHAR,
	"direction" TINYINT,
	"image" VARCHAR,
	"name" VARCHAR,
	"occupation" VARCHAR,
	"base_color" VARCHAR,
	"cv_information" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"contact_title" VARCHAR,
	"template" TINYINT
);

CREATE TABLE "user_custom_domains" (
	"id" BIGINT,
	"user_id" INT,
	"requested_domain" VARCHAR,
	"current_domain" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" TINYINT
);

CREATE TABLE "user_blog_categories" (
	"id" BIGINT,
	"name" VARCHAR,
	"status" TINYINT,
	"language_id" BIGINT,
	"user_id" INT,
	"serial_number" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_blogs" (
	"id" BIGINT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"image" VARCHAR,
	"content" LONGTEXT,
	"serial_number" INT,
	"language_id" BIGINT,
	"category_id" BIGINT,
	"user_id" BIGINT,
	"meta_keywords" TEXT,
	"meta_description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_basic_settings" (
	"id" BIGINT,
	"favicon" TEXT,
	"logo" TEXT,
	"preloader" VARCHAR,
	"cv" TEXT,
	"base_color" VARCHAR,
	"theme" VARCHAR,
	"user_id" INT,
	"qr_image" VARCHAR,
	"qr_color" VARCHAR,
	"qr_size" INT,
	"qr_style" VARCHAR,
	"qr_eye_style" VARCHAR,
	"qr_margin" INT,
	"qr_text" VARCHAR,
	"qr_text_color" VARCHAR,
	"qr_text_size" INT,
	"qr_text_x" INT,
	"qr_text_y" INT,
	"qr_inserted_image" VARCHAR,
	"qr_inserted_image_size" INT,
	"qr_inserted_image_x" INT,
	"qr_inserted_image_y" INT,
	"qr_type" VARCHAR,
	"qr_url" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_achievements" (
	"id" INT,
	"user_id" INT,
	"language_id" INT,
	"title" VARCHAR,
	"count" INT,
	"serial_number" INT
);

CREATE TABLE "users" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"photo" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"address" VARCHAR,
	"country" VARCHAR,
	"remember_token" VARCHAR,
	"featured" INT,
	"feature_time" TIMESTAMP,
	"status" INT,
	"online_status" TINYINT,
	"verification_link" TEXT,
	"email_verified" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"subdomain_status" TINYINT
);

CREATE TABLE "ulinks" (
	"id" BIGINT,
	"language_id" INT,
	"name" VARCHAR,
	"url" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "timezones" (
	"id" BIGINT,
	"country_code" VARCHAR,
	"timezone" VARCHAR,
	"gmt_offset" DECIMAL,
	"dst_offset" DECIMAL,
	"raw_offset" DECIMAL
);

CREATE TABLE "testimonials" (
	"id" BIGINT,
	"language_id" INT,
	"image" VARCHAR,
	"comment" TEXT,
	"name" VARCHAR,
	"rank" VARCHAR,
	"serial_number" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "subscribers" (
	"id" BIGINT,
	"email" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "socials" (
	"id" BIGINT,
	"icon" TEXT,
	"url" VARCHAR,
	"serial_number" INT
);

CREATE TABLE "sitemaps" (
	"id" BIGINT,
	"sitemap_url" VARCHAR,
	"filename" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "seos" (
	"id" INT,
	"language_id" INT,
	"home_meta_keywords" TEXT,
	"home_meta_description" TEXT,
	"profiles_meta_keywords" TEXT,
	"profiles_meta_description" TEXT,
	"pricing_meta_keywords" TEXT,
	"pricing_meta_description" TEXT,
	"blogs_meta_keywords" TEXT,
	"blogs_meta_description" TEXT,
	"faqs_meta_keywords" TEXT,
	"faqs_meta_description" TEXT,
	"contact_meta_keywords" TEXT,
	"contact_meta_description" TEXT,
	"login_meta_keywords" TEXT,
	"login_meta_description" TEXT,
	"forget_password_meta_keywords" TEXT,
	"forget_password_meta_description" TEXT,
	"checkout_meta_keywords" TEXT,
	"checkout_meta_description" TEXT
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"permissions" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "push_subscriptions" (
	"id" INT,
	"subscribable_id" INT,
	"subscribable_type" VARCHAR,
	"endpoint" VARCHAR,
	"public_key" VARCHAR,
	"auth_token" VARCHAR,
	"content_encoding" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "processes" (
	"id" INT,
	"language_id" INT,
	"image" VARCHAR,
	"title" VARCHAR,
	"serial_number" INT
);

CREATE TABLE "popups" (
	"id" BIGINT,
	"language_id" BIGINT,
	"name" VARCHAR,
	"image" VARCHAR,
	"background_image" VARCHAR,
	"background_color" VARCHAR,
	"background_opacity" DECIMAL,
	"title" VARCHAR,
	"text" TEXT,
	"button_text" VARCHAR,
	"button_url" TEXT,
	"button_color" VARCHAR,
	"end_date" VARCHAR,
	"end_time" VARCHAR,
	"delay" INT,
	"serial_number" INT,
	"type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" TINYINT
);

CREATE TABLE "payment_gateways" (
	"id" BIGINT,
	"subtitle" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"name" VARCHAR,
	"type" VARCHAR,
	"information" MEDIUMTEXT,
	"keyword" VARCHAR,
	"status" TINYINT
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "partners" (
	"id" BIGINT,
	"language_id" INT,
	"image" VARCHAR,
	"url" VARCHAR,
	"serial_number" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "pages" (
	"id" BIGINT,
	"language_id" INT,
	"name" VARCHAR,
	"title" VARCHAR,
	"slug" VARCHAR,
	"body" BLOB,
	"status" TINYINT,
	"meta_keywords" TEXT,
	"meta_description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "packages" (
	"id" BIGINT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"price" DOUBLE,
	"term" VARCHAR,
	"featured" ENUM,
	"is_trial" ENUM,
	"trial_days" INT,
	"status" ENUM,
	"features" TEXT,
	"meta_keywords" LONGTEXT,
	"meta_description" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "offline_gateways" (
	"id" BIGINT,
	"name" VARCHAR,
	"short_description" TEXT,
	"instructions" BLOB,
	"status" TINYINT,
	"serial_number" INT,
	"is_receipt" TINYINT,
	"receipt" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "menus" (
	"id" BIGINT,
	"language_id" INT,
	"menus" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "memberships" (
	"id" BIGINT,
	"price" DOUBLE,
	"currency" VARCHAR,
	"currency_symbol" VARCHAR,
	"payment_method" VARCHAR,
	"transaction_id" VARCHAR,
	"status" TINYINT,
	"is_trial" TINYINT,
	"trial_days" INT,
	"receipt" LONGTEXT,
	"transaction_details" LONGTEXT,
	"settings" LONGTEXT,
	"package_id" INT,
	"user_id" BIGINT,
	"start_date" DATE,
	"expire_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "languages" (
	"id" BIGINT,
	"name" VARCHAR,
	"code" VARCHAR,
	"is_default" TINYINT,
	"rtl" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "job_experiences" (
	"id" BIGINT,
	"company_name" VARCHAR,
	"designation" VARCHAR,
	"content" TEXT,
	"start_date" DATE,
	"end_date" DATE,
	"is_continue" TINYINT,
	"serial_number" INT,
	"lang_id" BIGINT,
	"user_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"queue" VARCHAR,
	"payload" LONGTEXT,
	"attempts" TINYINT,
	"reserved_at" INT,
	"available_at" INT,
	"created_at" INT
);

CREATE TABLE "guests" (
	"id" BIGINT,
	"endpoint" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "followers" (
	"id" BIGINT,
	"follower_id" INT,
	"following_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "features" (
	"id" BIGINT,
	"language_id" INT,
	"icon" VARCHAR,
	"title" VARCHAR,
	"text" VARCHAR,
	"serial_number" INT
);

CREATE TABLE "faqs" (
	"id" BIGINT,
	"language_id" INT,
	"question" VARCHAR,
	"answer" TEXT,
	"serial_number" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "email_templates" (
	"id" BIGINT,
	"email_type" VARCHAR,
	"email_subject" TEXT,
	"email_body" LONGTEXT
);

CREATE TABLE "blogs" (
	"id" BIGINT,
	"language_id" INT,
	"bcategory_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"main_image" VARCHAR,
	"content" BLOB,
	"tags" TEXT,
	"meta_keywords" TEXT,
	"meta_description" TEXT,
	"serial_number" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "bcategories" (
	"id" BIGINT,
	"language_id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"status" TINYINT,
	"serial_number" INT
);

CREATE TABLE "basic_settings" (
	"id" BIGINT,
	"language_id" INT,
	"favicon" VARCHAR,
	"logo" VARCHAR,
	"preloader_status" TINYINT,
	"preloader" VARCHAR,
	"website_title" VARCHAR,
	"base_color" VARCHAR,
	"breadcrumb" VARCHAR,
	"footer_logo" VARCHAR,
	"footer_text" VARCHAR,
	"newsletter_text" VARCHAR,
	"copyright_text" BLOB,
	"intro_subtitle" VARCHAR,
	"intro_title" VARCHAR,
	"intro_text" TEXT,
	"intro_main_image" VARCHAR,
	"contact_form_title" VARCHAR,
	"contact_text" VARCHAR,
	"contact_info_title" VARCHAR,
	"tawk_to_script" TEXT,
	"is_recaptcha" TINYINT,
	"google_recaptcha_site_key" VARCHAR,
	"google_recaptcha_secret_key" VARCHAR,
	"is_tawkto" TINYINT,
	"tawkto_property_id" VARCHAR,
	"is_disqus" TINYINT,
	"is_user_disqus" TINYINT,
	"disqus_shortname" VARCHAR,
	"disqus_script" TEXT,
	"maintainance_mode" TINYINT,
	"maintainance_text" TEXT,
	"maintenance_img" VARCHAR,
	"maintenance_status" TINYINT,
	"secret_path" VARCHAR,
	"feature_section" TINYINT,
	"process_section" TINYINT,
	"featured_users_section" TINYINT,
	"pricing_section" TINYINT,
	"partners_section" TINYINT,
	"intro_section" TINYINT,
	"testimonial_section" TINYINT,
	"feature_title" VARCHAR,
	"work_process_title" VARCHAR,
	"work_process_subtitle" VARCHAR,
	"featured_users_title" VARCHAR,
	"featured_users_subtitle" VARCHAR,
	"pricing_title" VARCHAR,
	"pricing_subtitle" VARCHAR,
	"testimonial_title" VARCHAR,
	"testimonial_subtitle" VARCHAR,
	"news_section" TINYINT,
	"top_footer_section" TINYINT,
	"copyright_section" TINYINT,
	"blog_title" VARCHAR,
	"blog_subtitle" VARCHAR,
	"useful_links_title" VARCHAR,
	"newsletter_title" VARCHAR,
	"newsletter_subtitle" VARCHAR,
	"is_whatsapp" TINYINT,
	"whatsapp_number" VARCHAR,
	"whatsapp_header_title" VARCHAR,
	"whatsapp_popup_message" TEXT,
	"whatsapp_popup" TINYINT
);

CREATE TABLE "basic_extendeds" (
	"id" BIGINT,
	"language_id" INT,
	"cookie_alert_status" TINYINT,
	"cookie_alert_text" BLOB,
	"cookie_alert_button_text" VARCHAR,
	"to_mail" VARCHAR,
	"default_language_direction" VARCHAR,
	"from_mail" VARCHAR,
	"from_name" VARCHAR,
	"is_smtp" TINYINT,
	"smtp_host" VARCHAR,
	"smtp_port" VARCHAR,
	"encryption" VARCHAR,
	"smtp_username" VARCHAR,
	"smtp_password" VARCHAR,
	"base_currency_symbol" BLOB,
	"base_currency_symbol_position" VARCHAR,
	"base_currency_text" VARCHAR,
	"base_currency_text_position" VARCHAR,
	"base_currency_rate" DECIMAL,
	"hero_section_title" VARCHAR,
	"hero_section_text" VARCHAR,
	"hero_section_button_text" VARCHAR,
	"hero_section_button_url" TEXT,
	"hero_section_video_url" TEXT,
	"hero_img" VARCHAR,
	"timezone" TEXT,
	"contact_addresses" TEXT,
	"contact_numbers" TEXT,
	"contact_mails" TEXT,
	"expiration_reminder" INT,
	"domain_request_success_message" VARCHAR,
	"cname_record_section_title" VARCHAR,
	"cname_record_section_text" TEXT
);

CREATE TABLE "admins" (
	"id" BIGINT,
	"role_id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"image" VARCHAR,
	"password" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
