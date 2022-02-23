DROP DATABASE IF EXISTS "schema496";
CREATE DATABASE "schema496";
USE "schema496";
CREATE TABLE "~log" (
	"id" INT,
	"timestamp" TIMESTAMP,
	"version" VARCHAR,
	"user" VARCHAR,
	"host" VARCHAR,
	"event" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "~jobs" (
	"table_name" VARCHAR,
	"key_hash" CHAR,
	"status" ENUM,
	"key" BLOB,
	"error_message" VARCHAR,
	"error_stack" BLOB,
	"user" VARCHAR,
	"host" VARCHAR,
	"pid" INT,
	"connection_id" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("table_name","key_hash")
);

CREATE TABLE "virus" (
	"id" INT,
	"virus_name" VARCHAR,
	"virus_type" ENUM,
	"virus_active" ENUM,
	"type_details" VARCHAR,
	"titer" FLOAT,
	"lot_number" VARCHAR,
	"label" ENUM,
	"label2" VARCHAR,
	"excitation_1p_wavelength" INT,
	"excitation_1p_range" INT,
	"excitation_2p_wavelength" INT,
	"excitation_2p_range" INT,
	"lp_dichroic_cut" INT,
	"emission_wavelength" INT,
	"emission_range" INT,
	"virus_source" ENUM,
	"source_details" VARCHAR,
	"comments" VARCHAR,
	"created" TIMESTAMP,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_roles" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "structure" (
	"id" INT,
	"abbreviation" VARCHAR,
	"description" LONGTEXT,
	"color" INT,
	"hexadecimal" CHAR,
	"active" TINYINT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "socialaccount_socialapp" (
	"id" INT,
	"provider" VARCHAR,
	"name" VARCHAR,
	"client_id" VARCHAR,
	"secret" VARCHAR,
	"key" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "seq" (
	"n" BIGINT,
	 PRIMARY KEY ("n")
);

CREATE TABLE "row_sequence" (
	"counter" DOUBLE,
	 PRIMARY KEY ("counter")
);

CREATE TABLE "resource" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "progress_lookup" (
	"id" INT,
	"description" TEXT,
	"script" VARCHAR,
	"channel" INT,
	"action" VARCHAR,
	"downsample" TINYINT,
	"active" TINYINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "problem_category" (
	"id" INT,
	"problem_category" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "organic_label" (
	"id" INT,
	"label_id" VARCHAR,
	"label_type" ENUM,
	"type_lot_number" VARCHAR,
	"type_tracer" ENUM,
	"type_details" VARCHAR,
	"concentration" FLOAT,
	"excitation_1p_wavelength" INT,
	"excitation_1p_range" INT,
	"excitation_2p_wavelength" INT,
	"excitation_2p_range" INT,
	"lp_dichroic_cut" INT,
	"emission_wavelength" INT,
	"emission_range" INT,
	"label_source" ENUM,
	"source_details" VARCHAR,
	"comments" VARCHAR,
	"created" TIMESTAMP,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location" (
	"id" INT,
	"active" TINYINT,
	"created" DATETIME,
	"updated" DATETIME,
	"room" VARCHAR,
	"description" LONGTEXT,
	"people_allowed" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "layer_data" (
	"id" INT,
	"url_id" INT,
	"layer" VARCHAR,
	"x" INT,
	"y" INT,
	"section" INT,
	"active" TINYINT,
	"created" DATETIME,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file_operation" (
	"id" INT,
	"tif_id" INT,
	"operation" VARCHAR,
	"created" TIMESTAMP,
	"file_size" FLOAT,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine_segment" (
	"id" INT,
	"start_frame" INT,
	"stop_frame" INT,
	"task_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine_pluginoption" (
	"id" INT,
	"name" VARCHAR,
	"value" VARCHAR,
	"plugin_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine_plugin" (
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"maintainer_id" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "engine_label" (
	"id" INT,
	"name" VARCHAR,
	"task_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine_data" (
	"id" INT,
	"chunk_size" INT,
	"size" INT,
	"image_quality" SMALLINT,
	"start_frame" INT,
	"stop_frame" INT,
	"frame_filter" VARCHAR,
	"compressed_chunk_type" VARCHAR,
	"original_chunk_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine_video" (
	"id" INT,
	"path" VARCHAR,
	"width" INT,
	"height" INT,
	"data_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_video_data_id_b37015e9_fk_engine_data_id" FOREIGN KEY ("data_id") REFERENCES "engine_data" ("id")
);

CREATE TABLE "engine_serverfile" (
	"id" INT,
	"file" VARCHAR,
	"data_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_serverfile_data_id_2364110a_fk_engine_data_id" FOREIGN KEY ("data_id") REFERENCES "engine_data" ("id")
);

CREATE TABLE "engine_remotefile" (
	"id" INT,
	"file" VARCHAR,
	"data_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_remotefile_data_id_ff16acda_fk_engine_data_id" FOREIGN KEY ("data_id") REFERENCES "engine_data" ("id")
);

CREATE TABLE "engine_image" (
	"id" INT,
	"path" VARCHAR,
	"frame" INT,
	"width" INT,
	"height" INT,
	"data_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_image_data_id_e89da547_fk_engine_data_id" FOREIGN KEY ("data_id") REFERENCES "engine_data" ("id")
);

CREATE TABLE "engine_clientfile" (
	"id" INT,
	"file" VARCHAR,
	"data_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine_attributespec" (
	"id" INT,
	"name" VARCHAR,
	"mutable" TINYINT,
	"input_type" VARCHAR,
	"default_value" VARCHAR,
	"values" VARCHAR,
	"label_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_site" (
	"id" INT,
	"domain" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "socialaccount_socialapp_sites" (
	"id" INT,
	"socialapp_id" INT,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id"),
	 CONSTRAINT "socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc" FOREIGN KEY ("socialapp_id") REFERENCES "socialaccount_socialapp" ("id")
);

CREATE TABLE "django_session" (
	"session_key" VARCHAR,
	"session_data" LONGTEXT,
	"expire_date" DATETIME,
	 PRIMARY KEY ("session_key")
);

CREATE TABLE "django_plotly_dash_statelessapp" (
	"id" INT,
	"app_name" VARCHAR,
	"slug" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_plotly_dash_dashapp" (
	"id" INT,
	"instance_name" VARCHAR,
	"slug" VARCHAR,
	"base_state" LONGTEXT,
	"creation" DATETIME,
	"update" DATETIME,
	"save_on_change" TINYINT,
	"stateless_app_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_migrations" (
	"id" INT,
	"app" VARCHAR,
	"name" VARCHAR,
	"applied" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_content_type" (
	"id" INT,
	"app_label" VARCHAR,
	"model" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user" (
	"id" INT,
	"password" VARCHAR,
	"last_login" DATETIME,
	"is_superuser" TINYINT,
	"username" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"is_staff" TINYINT,
	"is_active" TINYINT,
	"date_joined" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "socialaccount_socialaccount" (
	"id" INT,
	"provider" VARCHAR,
	"uid" VARCHAR,
	"last_login" DATETIME,
	"date_joined" DATETIME,
	"extra_data" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "socialaccount_socialtoken" (
	"id" INT,
	"token" LONGTEXT,
	"token_secret" LONGTEXT,
	"expires_at" DATETIME,
	"account_id" INT,
	"app_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "socialaccount_social_account_id_951f210e_fk_socialacc" FOREIGN KEY ("account_id") REFERENCES "socialaccount_socialaccount" ("id"),
	 CONSTRAINT "socialaccount_social_app_id_636a42d7_fk_socialacc" FOREIGN KEY ("app_id") REFERENCES "socialaccount_socialapp" ("id")
);

CREATE TABLE "schedule" (
	"id" INT,
	"active" TINYINT,
	"created" DATETIME,
	"updated" DATETIME,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"location_id" INT,
	"person_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "schedule_person_id_9f59b05d_fk_auth_user_id" FOREIGN KEY ("person_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "schedule_location_id_d296afa1_fk_location_id" FOREIGN KEY ("location_id") REFERENCES "location" ("id")
);

CREATE TABLE "neuroglancer_urls" (
	"id" INT,
	"person_id" INT,
	"url" LONGTEXT,
	"active" TINYINT,
	"vetted" TINYINT,
	"created" DATETIME,
	"user_date" VARCHAR,
	"comments" VARCHAR,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__NU_user_id" FOREIGN KEY ("person_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "location_primary_people" (
	"id" INT,
	"location_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "location_primary_people_location_id_bb62bcf7_fk_location_id" FOREIGN KEY ("location_id") REFERENCES "location" ("id"),
	 CONSTRAINT "location_primary_people_user_id_4125b3f6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "engine_project" (
	"id" INT,
	"name" VARCHAR,
	"bug_tracker" VARCHAR,
	"created_date" DATETIME,
	"updated_date" DATETIME,
	"status" VARCHAR,
	"assignee_id" INT,
	"owner_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_project_owner_id_de2a8424_fk_auth_user_id" FOREIGN KEY ("owner_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "engine_project_assignee_id_77655de8_fk_auth_user_id" FOREIGN KEY ("assignee_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "engine_task" (
	"id" INT,
	"name" VARCHAR,
	"mode" VARCHAR,
	"bug_tracker" VARCHAR,
	"created_date" DATETIME,
	"updated_date" DATETIME,
	"overlap" INT,
	"segment_size" INT,
	"z_order" TINYINT,
	"status" VARCHAR,
	"assignee_id" INT,
	"data_id" INT,
	"owner_id" INT,
	"project_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_task_data_id_e98ffd9b_fk_engine_data_id" FOREIGN KEY ("data_id") REFERENCES "engine_data" ("id"),
	 CONSTRAINT "engine_task_owner_id_95de3361_fk_auth_user_id" FOREIGN KEY ("owner_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "engine_task_assignee_id_51c82720_fk_auth_user_id" FOREIGN KEY ("assignee_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "engine_task_project_id_2dced848_fk_engine_project_id" FOREIGN KEY ("project_id") REFERENCES "engine_project" ("id")
);

CREATE TABLE "git_gitdata" (
	"task_id" INT,
	"url" VARCHAR,
	"path" VARCHAR,
	"sync_date" DATETIME,
	"status" VARCHAR,
	"lfs" TINYINT,
	 PRIMARY KEY ("task_id"),
	 CONSTRAINT "git_gitdata_task_id_a6f2ea20_fk_engine_task_id" FOREIGN KEY ("task_id") REFERENCES "engine_task" ("id")
);

CREATE TABLE "engine_job" (
	"id" INT,
	"status" VARCHAR,
	"assignee_id" INT,
	"segment_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_job_assignee_id_b80bea03_fk_auth_user_id" FOREIGN KEY ("assignee_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "engine_labeledtrack" (
	"id" BIGINT,
	"frame" INT,
	"group" INT,
	"job_id" INT,
	"label_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_labeledtrack_job_id_e00d9f2f_fk_engine_job_id" FOREIGN KEY ("job_id") REFERENCES "engine_job" ("id"),
	 CONSTRAINT "engine_labeledtrack_label_id_75d2c39b_fk_engine_label_id" FOREIGN KEY ("label_id") REFERENCES "engine_label" ("id")
);

CREATE TABLE "engine_trackedshape" (
	"type" VARCHAR,
	"occluded" TINYINT,
	"z_order" INT,
	"points" LONGTEXT,
	"id" BIGINT,
	"frame" INT,
	"outside" TINYINT,
	"track_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_trackedshape_track_id_a6dc58bd_fk_engine_labeledtrack_id" FOREIGN KEY ("track_id") REFERENCES "engine_labeledtrack" ("id")
);

CREATE TABLE "engine_trackedshapeattributeval" (
	"id" BIGINT,
	"value" VARCHAR,
	"shape_id" BIGINT,
	"spec_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_trackedshapea_shape_id_361f0e2f_fk_engine_tr" FOREIGN KEY ("shape_id") REFERENCES "engine_trackedshape" ("id"),
	 CONSTRAINT "engine_trackedshapea_spec_id_a944a532_fk_engine_at" FOREIGN KEY ("spec_id") REFERENCES "engine_attributespec" ("id")
);

CREATE TABLE "engine_labeledtrackattributeval" (
	"id" BIGINT,
	"value" VARCHAR,
	"spec_id" INT,
	"track_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_labeledtracka_spec_id_b7ee6fd2_fk_engine_at" FOREIGN KEY ("spec_id") REFERENCES "engine_attributespec" ("id"),
	 CONSTRAINT "engine_labeledtracka_track_id_4ed9e160_fk_engine_la" FOREIGN KEY ("track_id") REFERENCES "engine_labeledtrack" ("id")
);

CREATE TABLE "engine_labeledshape" (
	"id" BIGINT,
	"frame" INT,
	"group" INT,
	"type" VARCHAR,
	"occluded" TINYINT,
	"z_order" INT,
	"points" LONGTEXT,
	"job_id" INT,
	"label_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_labeledshape_label_id_872e4658_fk_engine_label_id" FOREIGN KEY ("label_id") REFERENCES "engine_label" ("id"),
	 CONSTRAINT "engine_labeledshape_job_id_b7694c3a_fk_engine_job_id" FOREIGN KEY ("job_id") REFERENCES "engine_job" ("id")
);

CREATE TABLE "engine_labeledshapeattributeval" (
	"id" BIGINT,
	"value" VARCHAR,
	"shape_id" BIGINT,
	"spec_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_labeledshapea_spec_id_144b73fa_fk_engine_at" FOREIGN KEY ("spec_id") REFERENCES "engine_attributespec" ("id"),
	 CONSTRAINT "engine_labeledshapea_shape_id_26c4daab_fk_engine_la" FOREIGN KEY ("shape_id") REFERENCES "engine_labeledshape" ("id")
);

CREATE TABLE "engine_labeledimage" (
	"id" BIGINT,
	"frame" INT,
	"group" INT,
	"job_id" INT,
	"label_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_labeledimage_job_id_7406d161_fk_engine_job_id" FOREIGN KEY ("job_id") REFERENCES "engine_job" ("id"),
	 CONSTRAINT "engine_labeledimage_label_id_b22eb9f7_fk_engine_label_id" FOREIGN KEY ("label_id") REFERENCES "engine_label" ("id")
);

CREATE TABLE "engine_labeledimageattributeval" (
	"id" BIGINT,
	"value" VARCHAR,
	"image_id" BIGINT,
	"spec_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_labeledimagea_image_id_f4c34a7a_fk_engine_la" FOREIGN KEY ("image_id") REFERENCES "engine_labeledimage" ("id"),
	 CONSTRAINT "engine_labeledimagea_spec_id_911f524c_fk_engine_at" FOREIGN KEY ("spec_id") REFERENCES "engine_attributespec" ("id")
);

CREATE TABLE "engine_jobcommit" (
	"id" BIGINT,
	"version" INT,
	"timestamp" DATETIME,
	"message" VARCHAR,
	"author_id" INT,
	"job_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "engine_jobcommit_author_id_fe2728f3_fk_auth_user_id" FOREIGN KEY ("author_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "engine_jobcommit_job_id_02b6da1d_fk_engine_job_id" FOREIGN KEY ("job_id") REFERENCES "engine_job" ("id")
);

CREATE TABLE "django_admin_log" (
	"id" INT,
	"action_time" DATETIME,
	"object_id" LONGTEXT,
	"object_repr" VARCHAR,
	"action_flag" SMALLINT,
	"change_message" LONGTEXT,
	"content_type_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "authtoken_token" (
	"key" VARCHAR,
	"created" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("key"),
	 CONSTRAINT "authtoken_token_user_id_35299eff_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "auth_permission" (
	"id" INT,
	"name" VARCHAR,
	"content_type_id" INT,
	"codename" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_user_permissions" (
	"id" INT,
	"user_id" INT,
	"permission_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id")
);

CREATE TABLE "auth_group" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_groups" (
	"id" INT,
	"user_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "FK__AUG_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id")
);

CREATE TABLE "auth_group_permissions" (
	"id" INT,
	"group_id" INT,
	"permission_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__AGP_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id")
);

CREATE TABLE "animal" (
	"prep_id" VARCHAR,
	"performance_center" ENUM,
	"date_of_birth" DATE,
	"species" ENUM,
	"strain" VARCHAR,
	"sex" ENUM,
	"genotype" VARCHAR,
	"breeder_line" VARCHAR,
	"vender" ENUM,
	"stock_number" VARCHAR,
	"tissue_source" ENUM,
	"ship_date" DATE,
	"shipper" ENUM,
	"tracking_number" VARCHAR,
	"aliases_1" VARCHAR,
	"aliases_2" VARCHAR,
	"aliases_3" VARCHAR,
	"aliases_4" VARCHAR,
	"aliases_5" VARCHAR,
	"comments" VARCHAR,
	"active" TINYINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("prep_id")
);

CREATE TABLE "task" (
	"id" INT,
	"lookup_id" INT,
	"prep_id" VARCHAR,
	"completed" TINYINT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"active" TINYINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__task_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id"),
	 CONSTRAINT "FK__task_lookup_id" FOREIGN KEY ("lookup_id") REFERENCES "progress_lookup" ("id")
);

CREATE TABLE "task_resources" (
	"id" INT,
	"task_id" INT,
	"resource_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__TR_resource_id" FOREIGN KEY ("resource_id") REFERENCES "resource" ("id"),
	 CONSTRAINT "FK__TR_task_id" FOREIGN KEY ("task_id") REFERENCES "task" ("id")
);

CREATE TABLE "scan_run" (
	"id" INT,
	"prep_id" VARCHAR,
	"performance_center" ENUM,
	"machine" ENUM,
	"objective" ENUM,
	"resolution" FLOAT,
	"number_of_slides" INT,
	"scan_date" DATE,
	"file_type" ENUM,
	"scenes_per_slide" ENUM,
	"section_schema" ENUM,
	"channels_per_scene" ENUM,
	"slide_folder_path" VARCHAR,
	"converted_folder_path" VARCHAR,
	"converted_status" ENUM,
	"ch_1_filter_set" ENUM,
	"ch_2_filter_set" ENUM,
	"ch_3_filter_set" ENUM,
	"ch_4_filter_set" ENUM,
	"width" INT,
	"height" INT,
	"rotation" INT,
	"flip" ENUM,
	"comments" VARCHAR,
	"active" TINYINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__scan_run_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id")
);

CREATE TABLE "slide" (
	"id" INT,
	"scan_run_id" INT,
	"slide_physical_id" INT,
	"rescan_number" ENUM,
	"slide_status" ENUM,
	"scenes" INT,
	"insert_before_one" TINYINT,
	"insert_between_one_two" TINYINT,
	"insert_between_two_three" TINYINT,
	"insert_between_three_four" TINYINT,
	"insert_between_four_five" TINYINT,
	"insert_between_five_six" TINYINT,
	"file_name" VARCHAR,
	"comments" VARCHAR,
	"active" TINYINT,
	"created" TIMESTAMP,
	"file_size" FLOAT,
	"processing_duration" FLOAT,
	"processed" TINYINT,
	"scene_qc_1" TINYINT,
	"scene_qc_2" TINYINT,
	"scene_qc_3" TINYINT,
	"scene_qc_4" TINYINT,
	"scene_qc_5" TINYINT,
	"scene_qc_6" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__slide_scan_run_id" FOREIGN KEY ("scan_run_id") REFERENCES "scan_run" ("id")
);

CREATE TABLE "slide_czi_to_tif" (
	"id" INT,
	"slide_id" INT,
	"file_name" VARCHAR,
	"scene_number" TINYINT,
	"channel" TINYINT,
	"width" INT,
	"height" INT,
	"comments" VARCHAR,
	"active" TINYINT,
	"created" TIMESTAMP,
	"file_size" FLOAT,
	"scene_index" INT,
	"processing_duration" FLOAT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__slide_id" FOREIGN KEY ("slide_id") REFERENCES "slide" ("id")
);

CREATE TABLE "logs" (
	"id" INT,
	"logger" VARCHAR,
	"level" VARCHAR,
	"prep_id" VARCHAR,
	"msg" VARCHAR,
	"created" TIMESTAMP,
	"active" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__logs_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id")
);

CREATE TABLE "journals" (
	"id" INT,
	"prep_id" VARCHAR,
	"entry" LONGTEXT,
	"fix" LONGTEXT,
	"image" VARCHAR,
	"issue_link" VARCHAR,
	"created" TIMESTAMP,
	"active" TINYINT,
	"completed" TINYINT,
	"person_id" INT,
	"problem_id" INT,
	"url_id" INT,
	"section" INT,
	"channel" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__journals_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id"),
	 CONSTRAINT "FK__journals_person_id" FOREIGN KEY ("person_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "injection" (
	"id" INT,
	"prep_id" VARCHAR,
	"label_id" INT,
	"performance_center" ENUM,
	"anesthesia" ENUM,
	"method" ENUM,
	"injection_volume" FLOAT,
	"pipet" ENUM,
	"location" VARCHAR,
	"angle" VARCHAR,
	"brain_location_dv" FLOAT,
	"brain_location_ml" FLOAT,
	"brain_location_ap" FLOAT,
	"injection_date" DATE,
	"transport_days" INT,
	"virus_count" INT,
	"comments" VARCHAR,
	"created" TIMESTAMP,
	"active" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__injection_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id")
);

CREATE TABLE "injection_virus" (
	"id" INT,
	"injection_id" INT,
	"virus_id" INT,
	"created" TIMESTAMP,
	"active" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__IV_injection_id" FOREIGN KEY ("injection_id") REFERENCES "injection" ("id")
);

CREATE TABLE "histology" (
	"id" INT,
	"prep_id" VARCHAR,
	"virus_id" INT,
	"label_id" INT,
	"performance_center" ENUM,
	"anesthesia" ENUM,
	"perfusion_age_in_days" TINYINT,
	"perfusion_date" DATE,
	"exsangination_method" ENUM,
	"fixative_method" ENUM,
	"special_perfusion_notes" VARCHAR,
	"post_fixation_period" TINYINT,
	"whole_brain" ENUM,
	"block" VARCHAR,
	"date_sectioned" DATE,
	"side_sectioned_first" ENUM,
	"sectioning_method" ENUM,
	"section_thickness" TINYINT,
	"orientation" ENUM,
	"oblique_notes" VARCHAR,
	"mounting" ENUM,
	"counterstain" ENUM,
	"comments" VARCHAR,
	"created" TIMESTAMP,
	"active" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__histology_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id")
);

CREATE TABLE "file_log" (
	"id" INT,
	"prep_id" VARCHAR,
	"progress_id" INT,
	"filename" VARCHAR,
	"active" TINYINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__FILE_LOG_AID" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id")
);

CREATE TABLE "center_of_mass" (
	"id" INT,
	"prep_id" VARCHAR,
	"structure_id" INT,
	"person_id" INT,
	"x" FLOAT,
	"y" FLOAT,
	"section" FLOAT,
	"input_type" ENUM,
	"active" TINYINT,
	"created" DATETIME,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK__COM_prep_id" FOREIGN KEY ("prep_id") REFERENCES "animal" ("prep_id"),
	 CONSTRAINT "FK__COM_PID" FOREIGN KEY ("person_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "account_emailaddress" (
	"id" INT,
	"email" VARCHAR,
	"verified" TINYINT,
	"primary" TINYINT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_emailconfirmation" (
	"id" INT,
	"created" DATETIME,
	"sent" DATETIME,
	"key" VARCHAR,
	"email_address_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "account_emailconfirm_email_address_id_5b7f8c58_fk_account_e" FOREIGN KEY ("email_address_id") REFERENCES "account_emailaddress" ("id")
);
