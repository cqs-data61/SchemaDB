DROP DATABASE IF EXISTS "schema2439";
CREATE DATABASE "schema2439";
USE "schema2439";
CREATE TABLE "workflow_assessmentworkflow" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"status" VARCHAR,
	"status_changed" DATETIME,
	"submission_uuid" VARCHAR,
	"uuid" CHAR,
	"course_id" VARCHAR,
	"item_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workflow_teamassessmentworkflow" (
	"assessmentworkflow_ptr_id" INT,
	"team_submission_uuid" VARCHAR,
	 PRIMARY KEY ("assessmentworkflow_ptr_id"),
	 CONSTRAINT "workflow_teamassessm_assessmentworkflow_p_53110fc3_fk_workflow_" FOREIGN KEY ("assessmentworkflow_ptr_id") REFERENCES "workflow_assessmentworkflow" ("id")
);

CREATE TABLE "workflow_assessmentworkflowstep" (
	"id" INT,
	"name" VARCHAR,
	"submitter_completed_at" DATETIME,
	"assessment_completed_at" DATETIME,
	"order_num" INT,
	"workflow_id" INT,
	"skipped" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "workflow_assessmentw_workflow_id_fe52b4aa_fk_workflow_" FOREIGN KEY ("workflow_id") REFERENCES "workflow_assessmentworkflow" ("id")
);

CREATE TABLE "workflow_assessmentworkflowcancellation" (
	"id" INT,
	"comments" LONGTEXT,
	"cancelled_by_id" VARCHAR,
	"created_at" DATETIME,
	"workflow_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "workflow_assessmentw_workflow_id_5e534711_fk_workflow_" FOREIGN KEY ("workflow_id") REFERENCES "workflow_assessmentworkflow" ("id")
);

CREATE TABLE "waffle_switch" (
	"id" INT,
	"name" VARCHAR,
	"active" TINYINT,
	"note" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "waffle_sample" (
	"id" INT,
	"name" VARCHAR,
	"percent" DECIMAL,
	"note" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "waffle_flag" (
	"id" INT,
	"name" VARCHAR,
	"everyone" TINYINT,
	"percent" DECIMAL,
	"testing" TINYINT,
	"superusers" TINYINT,
	"staff" TINYINT,
	"authenticated" TINYINT,
	"languages" LONGTEXT,
	"rollout" TINYINT,
	"note" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "video_config_updatedcoursevideos" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"edx_video_id" VARCHAR,
	"command_run" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "video_config_migrationenqueuedcourse" (
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"command_run" INT,
	 PRIMARY KEY ("course_id")
);

CREATE TABLE "verify_student_verificationdeadline" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_key" VARCHAR,
	"deadline" DATETIME,
	"deadline_is_explicit" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "verified_track_content_verifiedtrackcohortedcourse" (
	"id" INT,
	"course_key" VARCHAR,
	"enabled" TINYINT,
	"verified_cohort_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_tasks_usertaskartifact" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"name" VARCHAR,
	"file" VARCHAR,
	"url" LONGTEXT,
	"text" LONGTEXT,
	"status_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_api_retirementstate" (
	"id" INT,
	"state_name" VARCHAR,
	"state_execution_order" SMALLINT,
	"is_dead_end_state" TINYINT,
	"required" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "thumbnail_kvstore" (
	"key" VARCHAR,
	"value" LONGTEXT,
	 PRIMARY KEY ("key")
);

CREATE TABLE "third_party_auth_samlproviderdata" (
	"id" INT,
	"fetched_at" DATETIME,
	"expires_at" DATETIME,
	"entity_id" VARCHAR,
	"sso_url" VARCHAR,
	"public_key" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teams_courseteam" (
	"id" INT,
	"team_id" VARCHAR,
	"discussion_topic_id" VARCHAR,
	"name" VARCHAR,
	"course_id" VARCHAR,
	"topic_id" VARCHAR,
	"date_created" DATETIME,
	"description" VARCHAR,
	"country" VARCHAR,
	"language" VARCHAR,
	"last_activity_at" DATETIME,
	"team_size" INT,
	"organization_protected" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tagging_tagcategories" (
	"id" INT,
	"name" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tagging_tagavailablevalues" (
	"id" INT,
	"value" VARCHAR,
	"category_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system_wide_roles_systemwiderole" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "survey_surveyform" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"form" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "submissions_studentitem" (
	"id" INT,
	"student_id" VARCHAR,
	"course_id" VARCHAR,
	"item_id" VARCHAR,
	"item_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "submissions_submission" (
	"id" INT,
	"uuid" CHAR,
	"attempt_number" INT,
	"submitted_at" DATETIME,
	"created_at" DATETIME,
	"raw_answer" LONGTEXT,
	"student_item_id" INT,
	"status" VARCHAR,
	"team_submission_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "submissions_submissi_student_item_id_9d087470_fk_submissio" FOREIGN KEY ("student_item_id") REFERENCES "submissions_studentitem" ("id")
);

CREATE TABLE "submissions_score" (
	"id" INT,
	"points_earned" INT,
	"points_possible" INT,
	"created_at" DATETIME,
	"reset" TINYINT,
	"student_item_id" INT,
	"submission_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "submissions_scoresummary" (
	"id" INT,
	"highest_id" INT,
	"latest_id" INT,
	"student_item_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "submissions_scoresum_latest_id_dd8a17bb_fk_submissio" FOREIGN KEY ("latest_id") REFERENCES "submissions_score" ("id"),
	 CONSTRAINT "submissions_scoresum_highest_id_3efe897d_fk_submissio" FOREIGN KEY ("highest_id") REFERENCES "submissions_score" ("id")
);

CREATE TABLE "submissions_scoreannotation" (
	"id" INT,
	"annotation_type" VARCHAR,
	"creator" VARCHAR,
	"reason" LONGTEXT,
	"score_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "submissions_scoreann_score_id_2dda6e02_fk_submissio" FOREIGN KEY ("score_id") REFERENCES "submissions_score" ("id")
);

CREATE TABLE "student_usertestgroup" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "status_coursemessage" (
	"id" INT,
	"course_key" VARCHAR,
	"message" LONGTEXT,
	"global_message_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_auth_partial" (
	"id" INT,
	"token" VARCHAR,
	"next_step" SMALLINT,
	"backend" VARCHAR,
	"data" LONGTEXT,
	"timestamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_auth_nonce" (
	"id" INT,
	"server_url" VARCHAR,
	"timestamp" INT,
	"salt" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_auth_code" (
	"id" INT,
	"email" VARCHAR,
	"code" VARCHAR,
	"verified" TINYINT,
	"timestamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_auth_association" (
	"id" INT,
	"server_url" VARCHAR,
	"handle" VARCHAR,
	"secret" VARCHAR,
	"issued" INT,
	"lifetime" INT,
	"assoc_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedules_schedule" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"upgrade_deadline" DATETIME,
	"enrollment_id" INT,
	"start_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedules_scheduleexperience" (
	"id" INT,
	"experience_type" SMALLINT,
	"schedule_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "schedules_scheduleex_schedule_id_ed95c8e7_fk_schedules" FOREIGN KEY ("schedule_id") REFERENCES "schedules_schedule" ("id")
);

CREATE TABLE "sap_success_factors_sapsuccessfactorslearnerdatatransmission3ce5" (
	"id" INT,
	"enterprise_course_enrollment_id" INT,
	"sapsf_user_id" VARCHAR,
	"course_id" VARCHAR,
	"course_completed" TINYINT,
	"completed_timestamp" BIGINT,
	"instructor_name" VARCHAR,
	"grade" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	"total_hours" DOUBLE,
	"credit_hours" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rss_proxy_whitelistedrssurl" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "program_enrollments_courseaccessroleassignment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"role" VARCHAR,
	"enrollment_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "proctoring_proctoredexam" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"content_id" VARCHAR,
	"external_id" VARCHAR,
	"exam_name" LONGTEXT,
	"time_limit_mins" INT,
	"due_date" DATETIME,
	"is_proctored" TINYINT,
	"is_practice_exam" TINYINT,
	"is_active" TINYINT,
	"hide_after_due" TINYINT,
	"backend" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "problem_builder_answer" (
	"id" INT,
	"name" VARCHAR,
	"student_id" VARCHAR,
	"student_input" LONGTEXT,
	"created_on" DATETIME,
	"modified_on" DATETIME,
	"course_key" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "organizations_organization" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"description" LONGTEXT,
	"logo" VARCHAR,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "organizations_organizationcourse" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"active" TINYINT,
	"organization_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "organizations_organi_organization_id_99e77fe0_fk_organizat" FOREIGN KEY ("organization_id") REFERENCES "organizations_organization" ("id")
);

CREATE TABLE "oauth_provider_scope" (
	"id" INT,
	"name" VARCHAR,
	"url" LONGTEXT,
	"is_readonly" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_provider_nonce" (
	"id" INT,
	"token_key" VARCHAR,
	"consumer_key" VARCHAR,
	"key" VARCHAR,
	"timestamp" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notify_notification" (
	"id" INT,
	"message" LONGTEXT,
	"url" VARCHAR,
	"is_viewed" TINYINT,
	"is_emailed" TINYINT,
	"created" DATETIME,
	"subscription_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "moodle_moodlelearnerdatatransmissionaudit" (
	"id" INT,
	"moodle_user_email" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"grade" DECIMAL,
	"total_hours" DOUBLE,
	"course_completed" TINYINT,
	"completed_timestamp" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mobile_api_appversionconfig" (
	"id" INT,
	"platform" VARCHAR,
	"version" VARCHAR,
	"major_version" INT,
	"minor_version" INT,
	"patch_version" INT,
	"expire_at" DATETIME,
	"enabled" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "milestones_milestonerelationshiptype" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" LONGTEXT,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "milestones_milestone" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"namespace" VARCHAR,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"description" LONGTEXT,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "milestones_usermilestone" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_id" INT,
	"source" LONGTEXT,
	"collected" DATETIME,
	"active" TINYINT,
	"milestone_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "milestones_usermiles_milestone_id_f90f9430_fk_milestone" FOREIGN KEY ("milestone_id") REFERENCES "milestones_milestone" ("id")
);

CREATE TABLE "milestones_coursemilestone" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"active" TINYINT,
	"milestone_id" INT,
	"milestone_relationship_type_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "milestones_coursecontentmilestone" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"content_id" VARCHAR,
	"active" TINYINT,
	"milestone_id" INT,
	"milestone_relationship_type_id" INT,
	"requirements" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lti_provider_lticonsumer" (
	"id" INT,
	"consumer_name" VARCHAR,
	"consumer_key" VARCHAR,
	"consumer_secret" VARCHAR,
	"instance_guid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lti_provider_outcomeservice" (
	"id" INT,
	"lis_outcome_service_url" VARCHAR,
	"lti_consumer_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lti_provider_outcome_lti_consumer_id_eb82db58_fk_lti_provi" FOREIGN KEY ("lti_consumer_id") REFERENCES "lti_provider_lticonsumer" ("id")
);

CREATE TABLE "lti_consumer_lticonfiguration" (
	"id" INT,
	"version" VARCHAR,
	"config_store" VARCHAR,
	"location" VARCHAR,
	"lti_1p3_internal_private_key" LONGTEXT,
	"lti_1p3_internal_private_key_id" VARCHAR,
	"lti_1p3_internal_public_jwk" LONGTEXT,
	"lti_1p3_client_id" VARCHAR,
	"config_id" CHAR,
	"lti_1p1_client_key" VARCHAR,
	"lti_1p1_client_secret" VARCHAR,
	"lti_1p1_launch_url" VARCHAR,
	"lti_config" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lti_consumer_ltidlcontentitem" (
	"id" INT,
	"content_type" VARCHAR,
	"attributes" LONGTEXT,
	"lti_configuration_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lti_consumer_ltidlco_lti_configuration_id_887d35fa_fk_lti_consu" FOREIGN KEY ("lti_configuration_id") REFERENCES "lti_consumer_lticonfiguration" ("id")
);

CREATE TABLE "lti_consumer_ltiagslineitem" (
	"id" INT,
	"resource_id" VARCHAR,
	"resource_link_id" VARCHAR,
	"label" VARCHAR,
	"score_maximum" INT,
	"tag" VARCHAR,
	"start_date_time" DATETIME,
	"end_date_time" DATETIME,
	"lti_configuration_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lti_consumer_ltiagsscore" (
	"id" INT,
	"timestamp" DATETIME,
	"score_given" DOUBLE,
	"score_maximum" DOUBLE,
	"comment" LONGTEXT,
	"activity_progress" VARCHAR,
	"grading_progress" VARCHAR,
	"user_id" VARCHAR,
	"line_item_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lti_consumer_ltiagss_line_item_id_168433dc_fk_lti_consu" FOREIGN KEY ("line_item_id") REFERENCES "lti_consumer_ltiagslineitem" ("id")
);

CREATE TABLE "learning_sequences_learningcontext" (
	"id" BIGINT,
	"context_key" VARCHAR,
	"title" VARCHAR,
	"published_at" DATETIME,
	"published_version" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "learning_sequences_publishreport" (
	"id" INT,
	"num_errors" INT,
	"num_sections" INT,
	"num_sequences" INT,
	"learning_context_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "learning_sequences_p_learning_context_id_dd7a29fd_fk_learning_" FOREIGN KEY ("learning_context_id") REFERENCES "learning_sequences_learningcontext" ("id")
);

CREATE TABLE "learning_sequences_learningsequence" (
	"id" BIGINT,
	"learning_context_id" BIGINT,
	"usage_key" VARCHAR,
	"title" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "learning_sequences_l_learning_context_id_25f3e4ab_fk_learning_" FOREIGN KEY ("learning_context_id") REFERENCES "learning_sequences_learningcontext" ("id")
);

CREATE TABLE "learning_sequences_coursecontext" (
	"created" DATETIME,
	"modified" DATETIME,
	"learning_context_id" BIGINT,
	"course_visibility" VARCHAR,
	"self_paced" TINYINT,
	"days_early_for_beta" DOUBLE,
	"entrance_exam_id" VARCHAR,
	 PRIMARY KEY ("learning_context_id")
);

CREATE TABLE "learning_sequences_coursesection" (
	"id" BIGINT,
	"ordering" INT,
	"usage_key" VARCHAR,
	"title" VARCHAR,
	"hide_from_toc" TINYINT,
	"visible_to_staff_only" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_context_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "learning_sequences_c_course_context_id_f9845b47_fk_learning_" FOREIGN KEY ("course_context_id") REFERENCES "learning_sequences_coursecontext" ("learning_context_id")
);

CREATE TABLE "learning_sequences_coursesectionsequence" (
	"id" BIGINT,
	"ordering" INT,
	"hide_from_toc" TINYINT,
	"visible_to_staff_only" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	"section_id" BIGINT,
	"sequence_id" BIGINT,
	"inaccessible_after_due" TINYINT,
	"course_context_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "learning_sequences_c_course_context_id_bb2762af_fk_learning_" FOREIGN KEY ("course_context_id") REFERENCES "learning_sequences_coursecontext" ("learning_context_id"),
	 CONSTRAINT "learning_sequences_c_section_id_646c2074_fk_learning_" FOREIGN KEY ("section_id") REFERENCES "learning_sequences_coursesection" ("id")
);

CREATE TABLE "learning_sequences_coursesequenceexam" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"is_practice_exam" TINYINT,
	"is_proctored_enabled" TINYINT,
	"is_time_limited" TINYINT,
	"course_section_sequence_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "learning_sequences_c_course_section_seque_89ce42a5_fk_learning_" FOREIGN KEY ("course_section_sequence_id") REFERENCES "learning_sequences_coursesectionsequence" ("id")
);

CREATE TABLE "learning_sequences_contenterror" (
	"id" BIGINT,
	"usage_key" VARCHAR,
	"message" LONGTEXT,
	"publish_report_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "integrated_channel_learnerdatatransmissionaudit" (
	"id" INT,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"course_completed" TINYINT,
	"completed_timestamp" BIGINT,
	"instructor_name" VARCHAR,
	"grade" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	"subsection_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "grades_visibleblocks" (
	"id" INT,
	"blocks_json" LONGTEXT,
	"hashed" VARCHAR,
	"course_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "grades_persistentsubsectiongrade" (
	"created" DATETIME,
	"modified" DATETIME,
	"id" BIGINT,
	"user_id" INT,
	"course_id" VARCHAR,
	"usage_key" VARCHAR,
	"subtree_edited_timestamp" DATETIME,
	"course_version" VARCHAR,
	"earned_all" DOUBLE,
	"possible_all" DOUBLE,
	"earned_graded" DOUBLE,
	"possible_graded" DOUBLE,
	"visible_blocks_hash" VARCHAR,
	"first_attempted" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "grades_persistentsubsectiongradeoverride" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"earned_all_override" DOUBLE,
	"possible_all_override" DOUBLE,
	"earned_graded_override" DOUBLE,
	"possible_graded_override" DOUBLE,
	"grade_id" BIGINT,
	"override_reason" VARCHAR,
	"system" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "grades_persistentsub_grade_id_74123016_fk_grades_pe" FOREIGN KEY ("grade_id") REFERENCES "grades_persistentsubsectiongrade" ("id")
);

CREATE TABLE "grades_persistentcoursegrade" (
	"created" DATETIME,
	"modified" DATETIME,
	"id" BIGINT,
	"user_id" INT,
	"course_id" VARCHAR,
	"course_edited_timestamp" DATETIME,
	"course_version" VARCHAR,
	"grading_policy_hash" VARCHAR,
	"percent_grade" DOUBLE,
	"letter_grade" VARCHAR,
	"passed_timestamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "external_user_ids_externalidtype" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "experiments_experimentkeyvalue" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"experiment_id" SMALLINT,
	"key" VARCHAR,
	"value" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_systemwideenterpriserole" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_enterprisefeaturerole" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_enterpriseenrollmentsource" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"slug" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_pendingenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"course_mode" VARCHAR,
	"user_id" INT,
	"cohort_name" VARCHAR,
	"source_id" INT,
	"discount_percentage" DECIMAL,
	"sales_force_id" VARCHAR,
	"license_uuid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_pendingen_source_id_7b6fed0c_fk_enterpris" FOREIGN KEY ("source_id") REFERENCES "enterprise_enterpriseenrollmentsource" ("id")
);

CREATE TABLE "enterprise_enterprisecustomertype" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_enterprisecourseenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"enterprise_customer_user_id" INT,
	"source_id" INT,
	"saved_for_later" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_licensedenterprisecourseenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"license_uuid" CHAR,
	"enterprise_course_enrollment_id" INT,
	"is_revoked" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_licensede_enterprise_course_en_db2f5a9f_fk_enterpris" FOREIGN KEY ("enterprise_course_enrollment_id") REFERENCES "enterprise_enterprisecourseenrollment" ("id")
);

CREATE TABLE "enterprise_enterprisecatalogquery" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"title" VARCHAR,
	"content_filter" LONGTEXT,
	"uuid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_enterpriseanalyticsuser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"analytics_user_id" VARCHAR,
	"enterprise_customer_user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "enterprise_enrollmentnotificationemailtemplate" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"plaintext_template" LONGTEXT,
	"html_template" LONGTEXT,
	"subject_line" VARCHAR,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "embargo_restrictedcourse" (
	"id" INT,
	"course_key" VARCHAR,
	"enroll_msg_key" VARCHAR,
	"access_msg_key" VARCHAR,
	"disable_access_check" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "embargo_embargoedcourse" (
	"id" INT,
	"course_id" VARCHAR,
	"embargoed" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "embargo_courseaccessrulehistory" (
	"id" INT,
	"timestamp" DATETIME,
	"course_key" VARCHAR,
	"snapshot" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "embargo_country" (
	"id" INT,
	"country" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "embargo_countryaccessrule" (
	"id" INT,
	"rule_type" VARCHAR,
	"country_id" INT,
	"restricted_course_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "embargo_countryacces_country_id_6af33e89_fk_embargo_c" FOREIGN KEY ("country_id") REFERENCES "embargo_country" ("id")
);

CREATE TABLE "edxval_video" (
	"id" INT,
	"created" DATETIME,
	"edx_video_id" VARCHAR,
	"client_video_id" VARCHAR,
	"duration" DOUBLE,
	"status" VARCHAR,
	"error_description" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edxval_videotranscript" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"transcript" VARCHAR,
	"language_code" VARCHAR,
	"provider" VARCHAR,
	"file_format" VARCHAR,
	"video_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "edxval_videotranscript_video_id_6ffdfb56_fk_edxval_video_id" FOREIGN KEY ("video_id") REFERENCES "edxval_video" ("id")
);

CREATE TABLE "edxval_transcriptpreference" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"provider" VARCHAR,
	"cielo24_fidelity" VARCHAR,
	"cielo24_turnaround" VARCHAR,
	"three_play_turnaround" VARCHAR,
	"preferred_languages" LONGTEXT,
	"video_source_language" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edxval_thirdpartytranscriptcredentialsstate" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"org" VARCHAR,
	"provider" VARCHAR,
	"has_creds" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edxval_profile" (
	"id" INT,
	"profile_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edxval_encodedvideo" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"url" VARCHAR,
	"file_size" INT,
	"bitrate" INT,
	"profile_id" INT,
	"video_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edxval_coursevideo" (
	"id" INT,
	"course_id" VARCHAR,
	"video_id" INT,
	"is_hidden" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edxval_videoimage" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"image" VARCHAR,
	"generated_images" LONGTEXT,
	"course_video_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "edxval_videoimage_course_video_id_06855d34_fk_edxval_co" FOREIGN KEY ("course_video_id") REFERENCES "edxval_coursevideo" ("id")
);

CREATE TABLE "edx_when_datepolicy" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"abs_date" DATETIME,
	"rel_date" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edx_when_contentdate" (
	"id" INT,
	"course_id" VARCHAR,
	"location" VARCHAR,
	"policy_id" INT,
	"active" TINYINT,
	"field" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "djcelery_workerstate" (
	"id" INT,
	"hostname" VARCHAR,
	"last_heartbeat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "djcelery_taskstate" (
	"id" INT,
	"state" VARCHAR,
	"task_id" VARCHAR,
	"name" VARCHAR,
	"tstamp" DATETIME,
	"args" LONGTEXT,
	"kwargs" LONGTEXT,
	"eta" DATETIME,
	"expires" DATETIME,
	"result" LONGTEXT,
	"traceback" LONGTEXT,
	"runtime" DOUBLE,
	"retries" INT,
	"hidden" TINYINT,
	"worker_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "djcelery_periodictasks" (
	"ident" SMALLINT,
	"last_update" DATETIME,
	 PRIMARY KEY ("ident")
);

CREATE TABLE "djcelery_intervalschedule" (
	"id" INT,
	"every" INT,
	"period" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "djcelery_crontabschedule" (
	"id" INT,
	"minute" VARCHAR,
	"hour" VARCHAR,
	"day_of_week" VARCHAR,
	"day_of_month" VARCHAR,
	"month_of_year" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "djcelery_periodictask" (
	"id" INT,
	"name" VARCHAR,
	"task" VARCHAR,
	"args" LONGTEXT,
	"kwargs" LONGTEXT,
	"queue" VARCHAR,
	"exchange" VARCHAR,
	"routing_key" VARCHAR,
	"expires" DATETIME,
	"enabled" TINYINT,
	"last_run_at" DATETIME,
	"total_run_count" INT,
	"date_changed" DATETIME,
	"description" LONGTEXT,
	"crontab_id" INT,
	"interval_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "djcelery_periodictas_crontab_id_75609bab_fk_djcelery_" FOREIGN KEY ("crontab_id") REFERENCES "djcelery_crontabschedule" ("id"),
	 CONSTRAINT "djcelery_periodictas_interval_id_b426ab02_fk_djcelery_" FOREIGN KEY ("interval_id") REFERENCES "djcelery_intervalschedule" ("id")
);

CREATE TABLE "django_site" (
	"id" INT,
	"domain" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "theming_sitetheme" (
	"id" INT,
	"theme_dir_name" VARCHAR,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "theming_sitetheme_site_id_fe93d039_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "student_allowedauthuser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"email" VARCHAR,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_allowedauthuser_site_id_9a6aae9b_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "site_configuration_siteconfigurationhistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"site_id" INT,
	"enabled" TINYINT,
	"site_values" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "site_configuration_s_site_id_272f5c1a_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "site_configuration_siteconfiguration" (
	"id" INT,
	"site_id" INT,
	"enabled" TINYINT,
	"site_values" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "site_configuration_s_site_id_84302d1f_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "entitlements_courseentitlementpolicy" (
	"id" INT,
	"expiration_period" BIGINT,
	"refund_period" BIGINT,
	"regain_period" BIGINT,
	"site_id" INT,
	"mode" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "entitlements_coursee_site_id_c7a9e107_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "enterprise_enterprisecustomer" (
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"name" VARCHAR,
	"active" TINYINT,
	"site_id" INT,
	"enable_data_sharing_consent" TINYINT,
	"enforce_data_sharing_consent" VARCHAR,
	"enable_audit_enrollment" TINYINT,
	"enable_audit_data_reporting" TINYINT,
	"replace_sensitive_sso_username" TINYINT,
	"hide_course_original_price" TINYINT,
	"slug" VARCHAR,
	"country" VARCHAR,
	"enable_autocohorting" TINYINT,
	"customer_type_id" INT,
	"enable_portal_code_management_screen" TINYINT,
	"enable_learner_portal" TINYINT,
	"enable_portal_reporting_config_screen" TINYINT,
	"contact_email" VARCHAR,
	"enable_portal_subscription_management_screen" TINYINT,
	"enable_slug_login" TINYINT,
	"enable_portal_saml_configuration_screen" TINYINT,
	"default_contract_discount" DECIMAL,
	"enable_analytics_screen" TINYINT,
	"enable_integrated_customer_learner_portal_search" TINYINT,
	"default_language" VARCHAR,
	"enable_portal_lms_configurations_screen" TINYINT,
	"sender_alias" VARCHAR,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "enterprise_enterprisecustomer_site_id_947ed084_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "xapi_xapilrsconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"version" VARCHAR,
	"endpoint" VARCHAR,
	"key" VARCHAR,
	"secret" VARCHAR,
	"active" TINYINT,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xapi_xapilrsconfigur_enterprise_customer__90c03ad5_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "sap_success_factors_sapsuccessfactorsenterprisecustomerconfidb8a" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"sapsf_base_url" VARCHAR,
	"key" VARCHAR,
	"secret" VARCHAR,
	"enterprise_customer_id" CHAR,
	"sapsf_company_id" VARCHAR,
	"sapsf_user_id" VARCHAR,
	"user_type" VARCHAR,
	"transmission_chunk_size" INT,
	"additional_locales" LONGTEXT,
	"show_course_price" TINYINT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"transmit_total_hours" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "sap_success_factors__enterprise_customer__4819a28c_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "moodle_moodleenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"moodle_base_url" VARCHAR,
	"service_short_name" VARCHAR,
	"category_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"token" VARCHAR,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "moodle_moodleenterpr_enterprise_customer__6668537b_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "integrated_channel_contentmetadataitemtransmission" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"integrated_channel_code" VARCHAR,
	"content_id" VARCHAR,
	"channel_metadata" LONGTEXT,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "integrated_channel_c_enterprise_customer__f6439bfb_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_pendingenterprisecustomeruser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_email" VARCHAR,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_pendingen_enterprise_customer__a858ce2d_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_pendingenterprisecustomeradminuser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_email" VARCHAR,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_pendingen_enterprise_customer__aae02661_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_enterprisecustomeruser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_id" INT,
	"enterprise_customer_id" CHAR,
	"active" TINYINT,
	"linked" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_enterpris_enterprise_customer__f0fea924_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_enterprisecustomerreportingconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"delivery_method" VARCHAR,
	"email" LONGTEXT,
	"frequency" VARCHAR,
	"day_of_month" SMALLINT,
	"day_of_week" SMALLINT,
	"hour_of_day" SMALLINT,
	"enterprise_customer_id" CHAR,
	"sftp_file_path" VARCHAR,
	"sftp_hostname" VARCHAR,
	"sftp_port" INT,
	"sftp_username" VARCHAR,
	"decrypted_password" LONGBLOB,
	"decrypted_sftp_password" LONGBLOB,
	"data_type" VARCHAR,
	"report_type" VARCHAR,
	"pgp_encryption_key" LONGTEXT,
	"uuid" CHAR,
	"include_date" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_enterpris_enterprise_customer__d5b55543_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_enterprisecustomeridentityprovider" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"provider_id" VARCHAR,
	"enterprise_customer_id" CHAR,
	"default_provider" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_enterpris_enterprise_customer__40b39097_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_enterprisecustomercatalog" (
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"enterprise_customer_id" CHAR,
	"content_filter" LONGTEXT,
	"title" VARCHAR,
	"enabled_course_modes" LONGTEXT,
	"publish_audit_enrollment_urls" TINYINT,
	"enterprise_catalog_query_id" INT,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "enterprise_enterpris_enterprise_catalog_q_aa53eb7d_fk_enterpris" FOREIGN KEY ("enterprise_catalog_query_id") REFERENCES "enterprise_enterprisecatalogquery" ("id"),
	 CONSTRAINT "enterprise_enterpris_enterprise_customer__3b4660ad_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "enterprise_enterprisecustomerreportingconfiguration_enterpricf00" (
	"id" INT,
	"enterprisecustomerreportingconfiguration_id" INT,
	"enterprisecustomercatalog_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_enterpris_enterprisecustomerca_ebdae525_fk_enterpris" FOREIGN KEY ("enterprisecustomercatalog_id") REFERENCES "enterprise_enterprisecustomercatalog" ("uuid"),
	 CONSTRAINT "enterprise_enterpris_enterprisecustomerre_66147101_fk_enterpris" FOREIGN KEY ("enterprisecustomerreportingconfiguration_id") REFERENCES "enterprise_enterprisecustomerreportingconfiguration" ("id")
);

CREATE TABLE "enterprise_enterprisecustomerbrandingconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"logo" VARCHAR,
	"enterprise_customer_id" CHAR,
	"primary_color" VARCHAR,
	"secondary_color" VARCHAR,
	"tertiary_color" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_enterpris_enterprise_customer__09c1ee14_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid")
);

CREATE TABLE "django_session" (
	"session_key" VARCHAR,
	"session_data" LONGTEXT,
	"expire_date" DATETIME,
	 PRIMARY KEY ("session_key")
);

CREATE TABLE "django_redirect" (
	"id" INT,
	"site_id" INT,
	"old_path" VARCHAR,
	"new_path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_openid_auth_nonce" (
	"id" INT,
	"server_url" VARCHAR,
	"timestamp" INT,
	"salt" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_openid_auth_association" (
	"id" INT,
	"server_url" LONGTEXT,
	"handle" VARCHAR,
	"secret" LONGTEXT,
	"issued" INT,
	"lifetime" INT,
	"assoc_type" LONGTEXT,
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

CREATE TABLE "notify_notificationtype" (
	"key" VARCHAR,
	"label" VARCHAR,
	"content_type_id" INT,
	 PRIMARY KEY ("key"),
	 CONSTRAINT "notify_notificationt_content_type_id_f575bac5_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id")
);

CREATE TABLE "django_comment_common_discussionsidmapping" (
	"course_id" VARCHAR,
	"mapping" LONGTEXT,
	 PRIMARY KEY ("course_id")
);

CREATE TABLE "django_comment_common_coursediscussionsettings" (
	"id" INT,
	"course_id" VARCHAR,
	"always_divide_inline_discussions" TINYINT,
	"divided_discussions" LONGTEXT,
	"division_scheme" VARCHAR,
	"discussions_id_map" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_comment_client_role" (
	"id" INT,
	"name" VARCHAR,
	"course_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_comment_client_permission" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "django_comment_client_permission_roles" (
	"id" INT,
	"permission_id" VARCHAR,
	"role_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_comment_clien_permission_id_f9f47fd2_fk_django_co" FOREIGN KEY ("permission_id") REFERENCES "django_comment_client_permission" ("name")
);

CREATE TABLE "django_celery_results_taskresult" (
	"id" INT,
	"task_id" VARCHAR,
	"status" VARCHAR,
	"content_type" VARCHAR,
	"content_encoding" VARCHAR,
	"result" LONGTEXT,
	"date_done" DATETIME,
	"traceback" LONGTEXT,
	"meta" LONGTEXT,
	"task_args" LONGTEXT,
	"task_kwargs" LONGTEXT,
	"task_name" VARCHAR,
	"worker" VARCHAR,
	"date_created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_celery_results_chordcounter" (
	"id" INT,
	"group_id" VARCHAR,
	"sub_tasks" LONGTEXT,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "discussions_discussionsconfiguration" (
	"created" DATETIME,
	"modified" DATETIME,
	"context_key" VARCHAR,
	"enabled" TINYINT,
	"plugin_configuration" LONGTEXT,
	"provider_type" VARCHAR,
	"lti_configuration_id" INT,
	 PRIMARY KEY ("context_key")
);

CREATE TABLE "degreed_degreedlearnerdatatransmissionaudit" (
	"id" INT,
	"degreed_user_email" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"course_completed" TINYINT,
	"completed_timestamp" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "degreed_degreedenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"key" VARCHAR,
	"secret" VARCHAR,
	"degreed_company_id" VARCHAR,
	"enterprise_customer_id" CHAR,
	"transmission_chunk_size" INT,
	"degreed_base_url" VARCHAR,
	"degreed_user_id" VARCHAR,
	"degreed_user_password" VARCHAR,
	"provider_id" VARCHAR,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "credit_creditprovider" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"provider_id" VARCHAR,
	"active" TINYINT,
	"display_name" VARCHAR,
	"enable_integration" TINYINT,
	"provider_url" VARCHAR,
	"provider_status_url" VARCHAR,
	"provider_description" LONGTEXT,
	"fulfillment_instructions" LONGTEXT,
	"eligibility_email_message" LONGTEXT,
	"receipt_email_message" LONGTEXT,
	"thumbnail_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "credit_creditcourse" (
	"id" INT,
	"course_key" VARCHAR,
	"enabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "credit_creditrequirement" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"namespace" VARCHAR,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"criteria" LONGTEXT,
	"active" TINYINT,
	"course_id" INT,
	"sort_value" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credit_creditrequire_course_id_b6aa812a_fk_credit_cr" FOREIGN KEY ("course_id") REFERENCES "credit_creditcourse" ("id")
);

CREATE TABLE "credit_creditrequirementstatus" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"username" VARCHAR,
	"status" VARCHAR,
	"reason" LONGTEXT,
	"requirement_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credit_creditrequire_requirement_id_cde25c76_fk_credit_cr" FOREIGN KEY ("requirement_id") REFERENCES "credit_creditrequirement" ("id")
);

CREATE TABLE "credit_creditrequest" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" VARCHAR,
	"username" VARCHAR,
	"parameters" LONGTEXT,
	"status" VARCHAR,
	"course_id" INT,
	"provider_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credit_creditrequest_provider_id_5465ab8b_fk_credit_cr" FOREIGN KEY ("provider_id") REFERENCES "credit_creditprovider" ("id"),
	 CONSTRAINT "credit_creditrequest_course_id_5478ceaf_fk_credit_cr" FOREIGN KEY ("course_id") REFERENCES "credit_creditcourse" ("id")
);

CREATE TABLE "credit_crediteligibility" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"username" VARCHAR,
	"deadline" DATETIME,
	"course_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credit_crediteligibi_course_id_d86f481f_fk_credit_cr" FOREIGN KEY ("course_id") REFERENCES "credit_creditcourse" ("id")
);

CREATE TABLE "courseware_xmoduleuserstatesummaryfield" (
	"id" INT,
	"field_name" VARCHAR,
	"value" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	"usage_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courseware_studentmodulehistory" (
	"id" INT,
	"version" VARCHAR,
	"created" DATETIME,
	"state" LONGTEXT,
	"grade" DOUBLE,
	"max_grade" DOUBLE,
	"student_module_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courseware_studentmodule" (
	"id" BIGINT,
	"module_type" VARCHAR,
	"module_id" VARCHAR,
	"course_id" VARCHAR,
	"state" LONGTEXT,
	"grade" DOUBLE,
	"max_grade" DOUBLE,
	"done" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"student_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courseware_offlinecomputedgradelog" (
	"id" INT,
	"course_id" VARCHAR,
	"created" DATETIME,
	"seconds" INT,
	"nstudents" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_overviews_courseoverview" (
	"created" DATETIME,
	"modified" DATETIME,
	"version" INT,
	"id" VARCHAR,
	"_location" VARCHAR,
	"display_name" LONGTEXT,
	"display_number_with_default" LONGTEXT,
	"display_org_with_default" LONGTEXT,
	"start" DATETIME,
	"end" DATETIME,
	"advertised_start" LONGTEXT,
	"course_image_url" LONGTEXT,
	"social_sharing_url" LONGTEXT,
	"end_of_course_survey_url" LONGTEXT,
	"certificates_display_behavior" LONGTEXT,
	"certificates_show_before_end" TINYINT,
	"cert_html_view_enabled" TINYINT,
	"has_any_active_web_certificate" TINYINT,
	"cert_name_short" LONGTEXT,
	"cert_name_long" LONGTEXT,
	"lowest_passing_grade" DECIMAL,
	"days_early_for_beta" DOUBLE,
	"mobile_available" TINYINT,
	"visible_to_staff_only" TINYINT,
	"_pre_requisite_courses_json" LONGTEXT,
	"enrollment_start" DATETIME,
	"enrollment_end" DATETIME,
	"enrollment_domain" LONGTEXT,
	"invitation_only" TINYINT,
	"max_student_enrollments_allowed" INT,
	"announcement" DATETIME,
	"catalog_visibility" LONGTEXT,
	"course_video_url" LONGTEXT,
	"effort" LONGTEXT,
	"short_description" LONGTEXT,
	"org" LONGTEXT,
	"self_paced" TINYINT,
	"marketing_url" LONGTEXT,
	"eligible_for_financial_aid" TINYINT,
	"language" LONGTEXT,
	"certificate_available_date" DATETIME,
	"end_date" DATETIME,
	"start_date" DATETIME,
	"banner_image_url" LONGTEXT,
	"has_highlights" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "program_enrollments_programcourseenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"status" VARCHAR,
	"course_id" VARCHAR,
	"course_enrollment_id" INT,
	"program_enrollment_id" INT,
	"course_key" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "program_enrollments__course_id_4f564456_fk_course_ov" FOREIGN KEY ("course_id") REFERENCES "course_overviews_courseoverview" ("id")
);

CREATE TABLE "course_overviews_courseoverviewtab" (
	"id" INT,
	"tab_id" VARCHAR,
	"course_overview_id" VARCHAR,
	"course_staff_only" TINYINT,
	"name" LONGTEXT,
	"type" VARCHAR,
	"url_slug" LONGTEXT,
	"link" LONGTEXT,
	"is_hidden" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_overviews_cou_course_overview_id_71fa6321_fk_course_ov" FOREIGN KEY ("course_overview_id") REFERENCES "course_overviews_courseoverview" ("id")
);

CREATE TABLE "course_overviews_courseoverviewimageset" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"small_url" LONGTEXT,
	"large_url" LONGTEXT,
	"course_overview_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_overviews_cou_course_overview_id_ef7aa548_fk_course_ov" FOREIGN KEY ("course_overview_id") REFERENCES "course_overviews_courseoverview" ("id")
);

CREATE TABLE "course_modes_coursemodesarchive" (
	"id" INT,
	"course_id" VARCHAR,
	"mode_slug" VARCHAR,
	"mode_display_name" VARCHAR,
	"min_price" INT,
	"suggested_prices" VARCHAR,
	"currency" VARCHAR,
	"expiration_date" DATE,
	"expiration_datetime" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_modes_coursemode" (
	"id" INT,
	"course_id" VARCHAR,
	"mode_slug" VARCHAR,
	"mode_display_name" VARCHAR,
	"min_price" INT,
	"currency" VARCHAR,
	"expiration_datetime" DATETIME,
	"expiration_date" DATE,
	"suggested_prices" VARCHAR,
	"description" LONGTEXT,
	"sku" VARCHAR,
	"expiration_datetime_is_explicit" TINYINT,
	"bulk_sku" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_groups_courseusergroup" (
	"id" INT,
	"name" VARCHAR,
	"course_id" VARCHAR,
	"group_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_groups_unregisteredlearnercohortassignments" (
	"id" INT,
	"email" VARCHAR,
	"course_id" VARCHAR,
	"course_user_group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_groups_unregi_course_user_group_id_c1c8a247_fk_course_gr" FOREIGN KEY ("course_user_group_id") REFERENCES "course_groups_courseusergroup" ("id")
);

CREATE TABLE "course_groups_courseusergrouppartitiongroup" (
	"id" INT,
	"partition_id" INT,
	"group_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"course_user_group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_groups_course_course_user_group_id_6032d512_fk_course_gr" FOREIGN KEY ("course_user_group_id") REFERENCES "course_groups_courseusergroup" ("id")
);

CREATE TABLE "course_groups_coursecohortssettings" (
	"id" INT,
	"is_cohorted" TINYINT,
	"course_id" VARCHAR,
	"cohorted_discussions" LONGTEXT,
	"always_cohort_inline_discussions" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_groups_coursecohort" (
	"id" INT,
	"assignment_type" VARCHAR,
	"course_user_group_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cornerstone_cornerstoneenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"cornerstone_base_url" VARCHAR,
	"enterprise_customer_id" CHAR,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "content_libraries_contentlibrary" (
	"id" INT,
	"slug" VARCHAR,
	"bundle_uuid" CHAR,
	"allow_public_learning" TINYINT,
	"allow_public_read" TINYINT,
	"org_id" INT,
	"type" VARCHAR,
	"license" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "consent_datasharingconsenttextoverrides" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"page_title" VARCHAR,
	"left_sidebar_text" LONGTEXT,
	"top_paragraph" LONGTEXT,
	"agreement_text" LONGTEXT,
	"continue_text" VARCHAR,
	"abort_text" VARCHAR,
	"policy_dropdown_header" VARCHAR,
	"policy_paragraph" LONGTEXT,
	"confirmation_modal_header" VARCHAR,
	"confirmation_modal_text" LONGTEXT,
	"modal_affirm_decline_text" VARCHAR,
	"modal_abort_decline_text" VARCHAR,
	"declined_notification_title" LONGTEXT,
	"declined_notification_message" LONGTEXT,
	"published" TINYINT,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "consent_datasharingconsent" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"username" VARCHAR,
	"granted" TINYINT,
	"course_id" VARCHAR,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificates_examplecertificateset" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_key" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificates_examplecertificate" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"description" VARCHAR,
	"uuid" VARCHAR,
	"access_key" VARCHAR,
	"full_name" VARCHAR,
	"template" VARCHAR,
	"status" VARCHAR,
	"error_reason" LONGTEXT,
	"download_url" VARCHAR,
	"example_cert_set_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificates_certificatetemplateasset" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"description" VARCHAR,
	"asset" VARCHAR,
	"asset_slug" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificates_certificatetemplate" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" VARCHAR,
	"template" LONGTEXT,
	"organization_id" INT,
	"course_key" VARCHAR,
	"mode" VARCHAR,
	"is_active" TINYINT,
	"language" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificates_certificategenerationcoursesetting" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_key" VARCHAR,
	"language_specific_templates_enabled" TINYINT,
	"self_generation_enabled" TINYINT,
	"include_hours_of_effort" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "celery_utils_failedtask" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"task_name" VARCHAR,
	"task_id" VARCHAR,
	"args" LONGTEXT,
	"kwargs" LONGTEXT,
	"exc" VARCHAR,
	"datetime_resolved" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "celery_tasksetmeta" (
	"id" INT,
	"taskset_id" VARCHAR,
	"result" LONGTEXT,
	"date_done" DATETIME,
	"hidden" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "celery_taskmeta" (
	"id" INT,
	"task_id" VARCHAR,
	"status" VARCHAR,
	"result" LONGTEXT,
	"date_done" DATETIME,
	"traceback" LONGTEXT,
	"hidden" TINYINT,
	"meta" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "celery_utils_chorddata" (
	"id" INT,
	"serialized_callback" LONGTEXT,
	"callback_result_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "celery_utils_chordda_callback_result_id_08132c0d_fk_celery_ta" FOREIGN KEY ("callback_result_id") REFERENCES "celery_taskmeta" ("id")
);

CREATE TABLE "celery_utils_chorddata_completed_results" (
	"id" INT,
	"chorddata_id" INT,
	"taskmeta_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "celery_utils_chordda_chorddata_id_216509e3_fk_celery_ut" FOREIGN KEY ("chorddata_id") REFERENCES "celery_utils_chorddata" ("id"),
	 CONSTRAINT "celery_utils_chordda_taskmeta_id_f86c2999_fk_celery_ta" FOREIGN KEY ("taskmeta_id") REFERENCES "celery_taskmeta" ("id")
);

CREATE TABLE "ccxcon_ccxcon" (
	"id" INT,
	"url" VARCHAR,
	"oauth_client_id" VARCHAR,
	"oauth_client_secret" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ccx_ccxfieldoverride" (
	"id" INT,
	"location" VARCHAR,
	"field" VARCHAR,
	"value" LONGTEXT,
	"ccx_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "canvas_canvaslearnerdatatransmissionaudit" (
	"id" INT,
	"canvas_user_email" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"course_completed" TINYINT,
	"completed_timestamp" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	"grade" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "canvas_canvaslearnerassessmentdatatransmissionaudit" (
	"id" INT,
	"canvas_user_email" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"subsection_id" VARCHAR,
	"grade_point_score" DOUBLE,
	"grade_points_possible" DOUBLE,
	"grade" DOUBLE,
	"subsection_name" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "canvas_canvasenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"canvas_account_id" BIGINT,
	"canvas_base_url" VARCHAR,
	"enterprise_customer_id" CHAR,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bulk_email_target" (
	"id" INT,
	"target_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bulk_email_coursemodetarget" (
	"target_ptr_id" INT,
	"track_id" INT,
	 PRIMARY KEY ("target_ptr_id")
);

CREATE TABLE "bulk_email_courseemailtemplate" (
	"id" INT,
	"html_template" LONGTEXT,
	"plain_template" LONGTEXT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bulk_email_courseauthorization" (
	"id" INT,
	"course_id" VARCHAR,
	"email_enabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bulk_email_cohorttarget" (
	"target_ptr_id" INT,
	"cohort_id" INT,
	 PRIMARY KEY ("target_ptr_id")
);

CREATE TABLE "bookmarks_xblockcache" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_key" VARCHAR,
	"usage_key" VARCHAR,
	"display_name" VARCHAR,
	"paths" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "block_structure" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"data_usage_key" VARCHAR,
	"data_version" VARCHAR,
	"data_edit_timestamp" DATETIME,
	"transformers_schema_version" VARCHAR,
	"block_structure_schema_version" VARCHAR,
	"data" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blackboard_blackboardlearnerdatatransmissionaudit" (
	"id" INT,
	"blackboard_user_email" VARCHAR,
	"completed_timestamp" VARCHAR,
	"course_id" VARCHAR,
	"course_completed" TINYINT,
	"enterprise_course_enrollment_id" INT,
	"grade" DECIMAL,
	"total_hours" DOUBLE,
	"created" DATETIME,
	"error_message" LONGTEXT,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blackboard_blackboardlearnerassessmentdatatransmissionaudit" (
	"id" INT,
	"blackboard_user_email" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"subsection_id" VARCHAR,
	"grade_point_score" DOUBLE,
	"grade_points_possible" DOUBLE,
	"grade" DOUBLE,
	"subsection_name" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blackboard_blackboardenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"blackboard_base_url" VARCHAR,
	"refresh_token" VARCHAR,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "badges_coursecompleteimageconfiguration" (
	"id" INT,
	"mode" VARCHAR,
	"icon" VARCHAR,
	"default" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "badges_badgeclass" (
	"id" INT,
	"slug" VARCHAR,
	"issuing_component" VARCHAR,
	"display_name" VARCHAR,
	"course_id" VARCHAR,
	"description" LONGTEXT,
	"criteria" LONGTEXT,
	"mode" VARCHAR,
	"image" VARCHAR,
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

CREATE TABLE "xblock_django_xblockstudioconfigurationflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xblock_django_xblock_changed_by_id_fdf047b8_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "xblock_django_xblockstudioconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"name" VARCHAR,
	"template" VARCHAR,
	"support_level" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xblock_django_xblock_changed_by_id_641b0905_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "xblock_django_xblockconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"name" VARCHAR,
	"deprecated" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xblock_django_xblock_changed_by_id_221b9d0e_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "xblock_config_studioconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"disabled_blocks" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xblock_config_studio_changed_by_id_8e87ad07_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "xblock_config_courseeditltifieldsenabledflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xblock_config_course_changed_by_id_09761e15_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "xapi_xapilearnerdatatransmissionaudit" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"course_completed" TINYINT,
	"completed_timestamp" DATETIME,
	"grade" VARCHAR,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "xapi_xapilearnerdata_user_id_6a49eb25_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "waffle_utils_waffleflagcourseoverridemodel" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"waffle_flag" VARCHAR,
	"course_id" VARCHAR,
	"override_choice" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "waffle_utils_wafflef_changed_by_id_28429bf5_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "waffle_flag_users" (
	"id" INT,
	"flag_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "waffle_flag_users_flag_id_833c37b0_fk_waffle_flag_id" FOREIGN KEY ("flag_id") REFERENCES "waffle_flag" ("id"),
	 CONSTRAINT "waffle_flag_users_user_id_8026df9b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_pipeline_videouploadsenabledbydefault" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"enabled_for_all_courses" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_pipeline_video_changed_by_id_3d066822_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_pipeline_vempipelineintegration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"client_name" VARCHAR,
	"api_url" VARCHAR,
	"service_username" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_pipeline_vempi_changed_by_id_cadc1895_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_pipeline_coursevideouploadsenabledbydefault" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_pipeline_cours_changed_by_id_84ec1a58_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_videotranscriptenabledflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"enabled_for_all_courses" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_videotr_changed_by_id_9f0afd7f_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_videothumbnailsetting" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"command_run" INT,
	"batch_size" INT,
	"videos_per_task" INT,
	"commit" TINYINT,
	"all_course_videos" TINYINT,
	"course_ids" LONGTEXT,
	"changed_by_id" INT,
	"offset" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_videoth_changed_by_id_9385a0b2_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_transcriptmigrationsetting" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"force_update" TINYINT,
	"commit" TINYINT,
	"all_courses" TINYINT,
	"course_ids" LONGTEXT,
	"changed_by_id" INT,
	"command_run" INT,
	"batch_size" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_transcr_changed_by_id_4c7817bd_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_hlsplaybackenabledflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"enabled_for_all_courses" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_hlsplay_changed_by_id_d93f2234_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_courseyoutubeblockedflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_coursey_changed_by_id_3496713f_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_coursevideotranscriptenabledflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_coursev_changed_by_id_3bdcf2a6_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "video_config_coursehlsplaybackenabledflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "video_config_courseh_changed_by_id_fa268d53_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "verify_student_sspverificationretryconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"arguments" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "verify_student_sspve_changed_by_id_c035fbe5_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "verify_student_ssoverification" (
	"id" INT,
	"status" VARCHAR,
	"status_changed" DATETIME,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"identity_provider_type" VARCHAR,
	"identity_provider_slug" VARCHAR,
	"user_id" INT,
	"expiration_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "verify_student_ssoverification_user_id_5e6186eb_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "verify_student_softwaresecurephotoverification" (
	"id" INT,
	"status" VARCHAR,
	"status_changed" DATETIME,
	"name" VARCHAR,
	"face_image_url" VARCHAR,
	"photo_id_image_url" VARCHAR,
	"receipt_id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"display" TINYINT,
	"submitted_at" DATETIME,
	"reviewing_service" VARCHAR,
	"error_msg" LONGTEXT,
	"error_code" VARCHAR,
	"photo_id_key" LONGTEXT,
	"copy_id_photo_from_id" INT,
	"reviewing_user_id" INT,
	"user_id" INT,
	"expiry_date" DATETIME,
	"expiry_email_date" DATETIME,
	"expiration_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "verify_student_softw_reviewing_user_id_55fd003a_fk_auth_user" FOREIGN KEY ("reviewing_user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "verify_student_softw_user_id_66ca4f6d_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "verify_student_softw_copy_id_photo_from_i_059e40b6_fk_verify_st" FOREIGN KEY ("copy_id_photo_from_id") REFERENCES "verify_student_softwaresecurephotoverification" ("id")
);

CREATE TABLE "verify_student_manualverification" (
	"id" INT,
	"status" VARCHAR,
	"status_changed" DATETIME,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"reason" VARCHAR,
	"user_id" INT,
	"expiration_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "verify_student_manua_user_id_f38b72b4_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "verified_track_content_migrateverifiedtrackcohortssetting" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"old_course_key" VARCHAR,
	"rerun_course_key" VARCHAR,
	"audit_cohort_names" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "verified_track_conte_changed_by_id_29944bff_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "util_ratelimitconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "util_ratelimitconfig_changed_by_id_794ac118_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "user_tasks_usertaskstatus" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"task_id" VARCHAR,
	"is_container" TINYINT,
	"task_class" VARCHAR,
	"name" VARCHAR,
	"state" VARCHAR,
	"completed_steps" SMALLINT,
	"total_steps" SMALLINT,
	"attempts" SMALLINT,
	"parent_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_tasks_usertaskstatus_user_id_5bec3d4a_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "user_tasks_usertasks_parent_id_5009f727_fk_user_task" FOREIGN KEY ("parent_id") REFERENCES "user_tasks_usertaskstatus" ("id")
);

CREATE TABLE "user_api_userretirementstatus" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"original_username" VARCHAR,
	"original_email" VARCHAR,
	"original_name" VARCHAR,
	"retired_username" VARCHAR,
	"retired_email" VARCHAR,
	"responses" LONGTEXT,
	"current_state_id" INT,
	"last_state_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_api_userretirementstatus_user_id_aca4dc7b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "user_api_userretirem_last_state_id_359e74cd_fk_user_api_" FOREIGN KEY ("last_state_id") REFERENCES "user_api_retirementstate" ("id"),
	 CONSTRAINT "user_api_userretirem_current_state_id_e37bb094_fk_user_api_" FOREIGN KEY ("current_state_id") REFERENCES "user_api_retirementstate" ("id")
);

CREATE TABLE "user_api_userretirementrequest" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_api_userretirementrequest_user_id_7f7ca22f_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "user_api_userretirementpartnerreportingstatus" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"original_username" VARCHAR,
	"original_email" VARCHAR,
	"original_name" VARCHAR,
	"is_being_processed" TINYINT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_api_userretirem_user_id_272c8f78_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "user_api_userpreference" (
	"id" INT,
	"key" VARCHAR,
	"value" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_api_userpreference_user_id_68f8a34b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "user_api_userorgtag" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"key" VARCHAR,
	"org" VARCHAR,
	"value" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_api_userorgtag_user_id_cc0d415d_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "user_api_usercoursetag" (
	"id" INT,
	"key" VARCHAR,
	"course_id" VARCHAR,
	"value" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_api_usercoursetag_user_id_106a4cbc_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "third_party_auth_samlconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"private_key" LONGTEXT,
	"public_key" LONGTEXT,
	"entity_id" VARCHAR,
	"org_info_str" LONGTEXT,
	"other_config_str" LONGTEXT,
	"changed_by_id" INT,
	"site_id" INT,
	"slug" VARCHAR,
	"is_public" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "third_party_auth_sam_site_id_8fab01ee_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id"),
	 CONSTRAINT "third_party_auth_sam_changed_by_id_c9343fb9_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "third_party_auth_samlproviderconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"icon_class" VARCHAR,
	"name" VARCHAR,
	"secondary" TINYINT,
	"skip_registration_form" TINYINT,
	"skip_email_verification" TINYINT,
	"backend_name" VARCHAR,
	"entity_id" VARCHAR,
	"metadata_source" VARCHAR,
	"attr_user_permanent_id" VARCHAR,
	"attr_full_name" VARCHAR,
	"attr_first_name" VARCHAR,
	"attr_last_name" VARCHAR,
	"attr_username" VARCHAR,
	"attr_email" VARCHAR,
	"other_settings" LONGTEXT,
	"changed_by_id" INT,
	"icon_image" VARCHAR,
	"debug_mode" TINYINT,
	"visible" TINYINT,
	"site_id" INT,
	"automatic_refresh_enabled" TINYINT,
	"identity_provider_type" VARCHAR,
	"max_session_length" INT,
	"skip_hinted_login_dialog" TINYINT,
	"send_to_registration_first" TINYINT,
	"sync_learner_profile_data" TINYINT,
	"archived" TINYINT,
	"saml_configuration_id" INT,
	"send_welcome_email" TINYINT,
	"slug" VARCHAR,
	"enable_sso_id_verification" TINYINT,
	"default_email" VARCHAR,
	"default_first_name" VARCHAR,
	"default_full_name" VARCHAR,
	"default_last_name" VARCHAR,
	"default_username" VARCHAR,
	"organization_id" INT,
	"country" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "third_party_auth_sam_organization_id_8a7f5596_fk_organizat" FOREIGN KEY ("organization_id") REFERENCES "organizations_organization" ("id"),
	 CONSTRAINT "third_party_auth_sam_site_id_b7e2af73_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id"),
	 CONSTRAINT "third_party_auth_sam_saml_configuration_i_eeb9fe72_fk_third_par" FOREIGN KEY ("saml_configuration_id") REFERENCES "third_party_auth_samlconfiguration" ("id"),
	 CONSTRAINT "third_party_auth_sam_changed_by_id_4c8fa8c0_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "third_party_auth_oauth2providerconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"icon_class" VARCHAR,
	"name" VARCHAR,
	"secondary" TINYINT,
	"skip_registration_form" TINYINT,
	"skip_email_verification" TINYINT,
	"backend_name" VARCHAR,
	"key" LONGTEXT,
	"secret" LONGTEXT,
	"other_settings" LONGTEXT,
	"changed_by_id" INT,
	"icon_image" VARCHAR,
	"visible" TINYINT,
	"site_id" INT,
	"max_session_length" INT,
	"skip_hinted_login_dialog" TINYINT,
	"send_to_registration_first" TINYINT,
	"sync_learner_profile_data" TINYINT,
	"send_welcome_email" TINYINT,
	"slug" VARCHAR,
	"enable_sso_id_verification" TINYINT,
	"organization_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "third_party_auth_oau_site_id_a4ae3e66_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id"),
	 CONSTRAINT "third_party_auth_oau_organization_id_cc8874ba_fk_organizat" FOREIGN KEY ("organization_id") REFERENCES "organizations_organization" ("id"),
	 CONSTRAINT "third_party_auth_oau_changed_by_id_55219296_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "third_party_auth_ltiproviderconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"name" VARCHAR,
	"skip_registration_form" TINYINT,
	"skip_email_verification" TINYINT,
	"lti_consumer_key" VARCHAR,
	"lti_hostname" VARCHAR,
	"lti_consumer_secret" VARCHAR,
	"lti_max_timestamp_age" INT,
	"changed_by_id" INT,
	"visible" TINYINT,
	"site_id" INT,
	"max_session_length" INT,
	"skip_hinted_login_dialog" TINYINT,
	"send_to_registration_first" TINYINT,
	"sync_learner_profile_data" TINYINT,
	"send_welcome_email" TINYINT,
	"slug" VARCHAR,
	"enable_sso_id_verification" TINYINT,
	"organization_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "third_party_auth_lti_organization_id_7494c417_fk_organizat" FOREIGN KEY ("organization_id") REFERENCES "organizations_organization" ("id"),
	 CONSTRAINT "third_party_auth_lti_changed_by_id_7b39c829_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "third_party_auth_lti_site_id_c8442a80_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id")
);

CREATE TABLE "teams_courseteammembership" (
	"id" INT,
	"date_joined" DATETIME,
	"last_activity_at" DATETIME,
	"team_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "teams_courseteammembership_user_id_18f9ff5d_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "teams_courseteammemb_team_id_b021eccd_fk_teams_cou" FOREIGN KEY ("team_id") REFERENCES "teams_courseteam" ("id")
);

CREATE TABLE "system_wide_roles_systemwideroleassignment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"role_id" INT,
	"user_id" INT,
	"applies_to_all_contexts" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "system_wide_roles_sy_role_id_b553068b_fk_system_wi" FOREIGN KEY ("role_id") REFERENCES "system_wide_roles_systemwiderole" ("id"),
	 CONSTRAINT "system_wide_roles_sy_user_id_8ec7ad0d_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "survey_surveyanswer" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"field_name" VARCHAR,
	"field_value" VARCHAR,
	"course_key" VARCHAR,
	"form_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "survey_surveyanswer_user_id_4c028d25_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "super_csv_csvoperation" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"class_name" VARCHAR,
	"unique_id" VARCHAR,
	"operation" VARCHAR,
	"data" VARCHAR,
	"user_id" INT,
	"original_filename" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "super_csv_csvoperation_user_id_f87de59a_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "submissions_teamsubmission" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"attempt_number" INT,
	"submitted_at" DATETIME,
	"course_id" VARCHAR,
	"item_id" VARCHAR,
	"team_id" VARCHAR,
	"status" VARCHAR,
	"submitted_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "submissions_teamsubm_submitted_by_id_5a27162a_fk_auth_user" FOREIGN KEY ("submitted_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_usertestgroup_users" (
	"id" INT,
	"usertestgroup_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_usertestgroup_users_user_id_81b93062_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "student_usertestgrou_usertestgroup_id_a9097958_fk_student_u" FOREIGN KEY ("usertestgroup_id") REFERENCES "student_usertestgroup" ("id")
);

CREATE TABLE "student_userstanding" (
	"id" INT,
	"account_status" VARCHAR,
	"standing_last_changed_at" DATETIME,
	"changed_by_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_userstanding_changed_by_id_469252b4_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "student_userstanding_user_id_00b147e5_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_usersignupsource" (
	"id" INT,
	"site" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_usersignupsource_user_id_4979dd6e_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_userpasswordtogglehistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"comment" VARCHAR,
	"disabled" TINYINT,
	"created_by_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_userpassword_user_id_1e2a09c9_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "student_userpassword_created_by_id_f7092add_fk_auth_user" FOREIGN KEY ("created_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_usercelebration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"last_day_of_streak" DATE,
	"streak_length" INT,
	"longest_ever_streak" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_usercelebration_user_id_8682222f_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_userattribute" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"value" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_userattribute_user_id_19c01f5e_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_registrationcookieconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"utm_cookie_name" VARCHAR,
	"affiliate_cookie_name" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_registration_changed_by_id_52ac88b0_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_pendingsecondaryemailchange" (
	"id" INT,
	"new_secondary_email" VARCHAR,
	"activation_key" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_pendingsecon_user_id_deacc54f_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_pendingnamechange" (
	"id" INT,
	"new_name" VARCHAR,
	"rationale" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_pendingnamechange_user_id_e2cd8b70_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_pendingemailchange" (
	"id" INT,
	"new_email" VARCHAR,
	"activation_key" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_pendingemailchange_user_id_8f2778c5_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_loginfailures" (
	"id" INT,
	"failure_count" INT,
	"lockout_until" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_loginfailures_user_id_50d85202_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_linkedinaddtoprofileconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"company_identifier" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_linkedinaddt_changed_by_id_dc1c453f_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_historicalmanualenrollmentaudit" (
	"id" INT,
	"enrolled_email" VARCHAR,
	"time_stamp" DATETIME,
	"state_transition" VARCHAR,
	"reason" LONGTEXT,
	"role" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enrolled_by_id" INT,
	"enrollment_id" INT,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "student_historicalma_history_user_id_b5f488c2_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_entranceexamconfiguration" (
	"id" INT,
	"course_id" VARCHAR,
	"created" DATETIME,
	"updated" DATETIME,
	"skip_entrance_exam" TINYINT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_entranceexam_user_id_387a35d6_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_enrollmentrefundconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"refund_window_microseconds" BIGINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_enrollmentre_changed_by_id_082b4f6f_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_dashboardconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"recent_enrollment_time_delta" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_dashboardcon_changed_by_id_1960484b_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_courseenrollmentallowed" (
	"id" INT,
	"email" VARCHAR,
	"course_id" VARCHAR,
	"auto_enroll" TINYINT,
	"created" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_courseenrollmentallowed_user_id_5875cce6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_courseenrollment_history" (
	"id" INT,
	"created" DATETIME,
	"is_active" TINYINT,
	"mode" VARCHAR,
	"history_id" CHAR,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"course_id" VARCHAR,
	"history_user_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "student_courseenroll_history_user_id_7065c772_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_courseenrollment" (
	"id" INT,
	"course_id" VARCHAR,
	"created" DATETIME,
	"is_active" TINYINT,
	"mode" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_courseenrollment_user_id_4263a8e2_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_manualenrollmentaudit" (
	"id" INT,
	"enrolled_email" VARCHAR,
	"time_stamp" DATETIME,
	"state_transition" VARCHAR,
	"reason" LONGTEXT,
	"enrolled_by_id" INT,
	"enrollment_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_manualenroll_enrollment_id_decc94fe_fk_student_c" FOREIGN KEY ("enrollment_id") REFERENCES "student_courseenrollment" ("id"),
	 CONSTRAINT "student_manualenroll_enrolled_by_id_1217a0dc_fk_auth_user" FOREIGN KEY ("enrolled_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_fbeenrollmentexclusion" (
	"id" INT,
	"enrollment_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_fbeenrollmen_enrollment_id_28537ff8_fk_student_c" FOREIGN KEY ("enrollment_id") REFERENCES "student_courseenrollment" ("id")
);

CREATE TABLE "student_courseenrollmentcelebration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"celebrate_first_section" TINYINT,
	"enrollment_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_courseenroll_enrollment_id_c697e4ce_fk_student_c" FOREIGN KEY ("enrollment_id") REFERENCES "student_courseenrollment" ("id")
);

CREATE TABLE "student_courseenrollmentattribute" (
	"id" INT,
	"namespace" VARCHAR,
	"name" VARCHAR,
	"value" VARCHAR,
	"enrollment_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_courseenroll_enrollment_id_b2173db0_fk_student_c" FOREIGN KEY ("enrollment_id") REFERENCES "student_courseenrollment" ("id")
);

CREATE TABLE "student_courseaccessrole" (
	"id" INT,
	"org" VARCHAR,
	"course_id" VARCHAR,
	"role" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_courseaccessrole_user_id_90cf21fe_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_bulkunenrollconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"csv_file" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_bulkunenroll_changed_by_id_7b6131b9_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_bulkchangeenrollmentconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"csv_file" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_bulkchangeen_changed_by_id_38bf23de_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_anonymoususerid" (
	"id" INT,
	"anonymous_user_id" VARCHAR,
	"course_id" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_anonymoususerid_user_id_0fb2ad5c_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_accountrecoveryconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"csv_file" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_accountrecov_changed_by_id_d9d1ddf6_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "status_globalstatusmessage" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"message" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "status_globalstatusm_changed_by_id_3c627848_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "static_replace_assetexcludedextensionsconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"excluded_extensions" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "static_replace_asset_changed_by_id_e58299b3_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "static_replace_assetbaseurlconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"base_url" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "static_replace_asset_changed_by_id_f592e050_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "splash_splashconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"cookie_name" LONGTEXT,
	"cookie_allowed_values" LONGTEXT,
	"unaffected_usernames" LONGTEXT,
	"unaffected_url_paths" LONGTEXT,
	"redirect_url" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "splash_splashconfig_changed_by_id_883b17ba_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "social_auth_usersocialauth" (
	"id" INT,
	"provider" VARCHAR,
	"uid" VARCHAR,
	"extra_data" LONGTEXT,
	"user_id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "self_paced_selfpacedconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"enable_course_home_improvements" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "self_paced_selfpaced_changed_by_id_02789a26_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "schedules_scheduleconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"enqueue_recurring_nudge" TINYINT,
	"deliver_recurring_nudge" TINYINT,
	"changed_by_id" INT,
	"site_id" INT,
	"deliver_upgrade_reminder" TINYINT,
	"enqueue_upgrade_reminder" TINYINT,
	"deliver_course_update" TINYINT,
	"enqueue_course_update" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "schedules_scheduleconfig_site_id_44296ee1_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id"),
	 CONSTRAINT "schedules_scheduleconfig_changed_by_id_38ef599b_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "schedules_historicalschedule" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"start_date" DATETIME,
	"upgrade_deadline" DATETIME,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enrollment_id" INT,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "schedules_historical_history_user_id_6f5d6d7b_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "sap_success_factors_sapsuccessfactorsglobalconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"completion_status_api_path" VARCHAR,
	"course_api_path" VARCHAR,
	"oauth_api_path" VARCHAR,
	"provider_id" VARCHAR,
	"changed_by_id" INT,
	"search_student_api_path" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "sap_success_factors__changed_by_id_e3241cc9_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "programs_programsapiconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	"marketing_path" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "programs_programsapi_changed_by_id_93e09d74_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "programs_customprogramsconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"arguments" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "programs_customprogr_changed_by_id_ae95c36c_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "program_enrollments_programenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"email" VARCHAR,
	"external_user_key" VARCHAR,
	"program_uuid" CHAR,
	"curriculum_uuid" CHAR,
	"status" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "program_enrollments__user_id_dcfde442_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "program_enrollments_historicalprogramenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"email" VARCHAR,
	"external_user_key" VARCHAR,
	"program_uuid" CHAR,
	"curriculum_uuid" CHAR,
	"status" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "program_enrollments__history_user_id_abf2d584_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "program_enrollments_historicalprogramcourseenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"status" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"course_id" VARCHAR,
	"course_enrollment_id" INT,
	"history_user_id" INT,
	"program_enrollment_id" INT,
	"course_key" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "program_enrollments__history_user_id_428d002e_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "proctoring_proctoredexamstudentattempthistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"attempt_id" INT,
	"started_at" DATETIME,
	"completed_at" DATETIME,
	"attempt_code" VARCHAR,
	"external_id" VARCHAR,
	"allowed_time_limit_mins" INT,
	"status" VARCHAR,
	"taking_as_proctored" TINYINT,
	"is_sample_attempt" TINYINT,
	"student_name" VARCHAR,
	"review_policy_id" INT,
	"last_poll_timestamp" DATETIME,
	"last_poll_ipaddr" VARCHAR,
	"proctored_exam_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_user_id_52fb8674_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "proctoring_proctored_proctored_exam_id_72c6f4ab_fk_proctorin" FOREIGN KEY ("proctored_exam_id") REFERENCES "proctoring_proctoredexam" ("id")
);

CREATE TABLE "proctoring_proctoredexamstudentattempt" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"started_at" DATETIME,
	"completed_at" DATETIME,
	"last_poll_timestamp" DATETIME,
	"last_poll_ipaddr" VARCHAR,
	"attempt_code" VARCHAR,
	"external_id" VARCHAR,
	"allowed_time_limit_mins" INT,
	"status" VARCHAR,
	"taking_as_proctored" TINYINT,
	"is_sample_attempt" TINYINT,
	"student_name" VARCHAR,
	"review_policy_id" INT,
	"proctored_exam_id" INT,
	"user_id" INT,
	"is_status_acknowledged" TINYINT,
	"time_remaining_seconds" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_user_id_2b58b7ed_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "proctoring_proctored_proctored_exam_id_0732c688_fk_proctorin" FOREIGN KEY ("proctored_exam_id") REFERENCES "proctoring_proctoredexam" ("id")
);

CREATE TABLE "proctoring_proctoredexamstudentallowancehistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"allowance_id" INT,
	"key" VARCHAR,
	"value" VARCHAR,
	"proctored_exam_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_proctored_exam_id_a4c8237c_fk_proctorin" FOREIGN KEY ("proctored_exam_id") REFERENCES "proctoring_proctoredexam" ("id"),
	 CONSTRAINT "proctoring_proctored_user_id_29b863c1_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "proctoring_proctoredexamstudentallowance" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"key" VARCHAR,
	"value" VARCHAR,
	"proctored_exam_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_proctored_exam_id_9baf5a64_fk_proctorin" FOREIGN KEY ("proctored_exam_id") REFERENCES "proctoring_proctoredexam" ("id"),
	 CONSTRAINT "proctoring_proctored_user_id_f21ce9b6_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "proctoring_proctoredexamsoftwaresecurereviewhistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"attempt_code" VARCHAR,
	"review_status" VARCHAR,
	"raw_data" LONGTEXT,
	"video_url" LONGTEXT,
	"exam_id" INT,
	"reviewed_by_id" INT,
	"student_id" INT,
	"is_attempt_active" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_student_id_97a63653_fk_auth_user" FOREIGN KEY ("student_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "proctoring_proctored_exam_id_380d8588_fk_proctorin" FOREIGN KEY ("exam_id") REFERENCES "proctoring_proctoredexam" ("id"),
	 CONSTRAINT "proctoring_proctored_reviewed_by_id_bb993b3a_fk_auth_user" FOREIGN KEY ("reviewed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "proctoring_proctoredexamsoftwaresecurereview" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"attempt_code" VARCHAR,
	"review_status" VARCHAR,
	"raw_data" LONGTEXT,
	"video_url" LONGTEXT,
	"exam_id" INT,
	"reviewed_by_id" INT,
	"student_id" INT,
	"is_attempt_active" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_reviewed_by_id_546b4204_fk_auth_user" FOREIGN KEY ("reviewed_by_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "proctoring_proctored_student_id_7e197288_fk_auth_user" FOREIGN KEY ("student_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "proctoring_proctored_exam_id_ea6095a3_fk_proctorin" FOREIGN KEY ("exam_id") REFERENCES "proctoring_proctoredexam" ("id")
);

CREATE TABLE "proctoring_proctoredexamstudentattemptcomment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"start_time" INT,
	"stop_time" INT,
	"duration" INT,
	"comment" LONGTEXT,
	"status" VARCHAR,
	"review_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_review_id_7f4eec67_fk_proctorin" FOREIGN KEY ("review_id") REFERENCES "proctoring_proctoredexamsoftwaresecurereview" ("id")
);

CREATE TABLE "proctoring_proctoredexamreviewpolicyhistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"original_id" INT,
	"review_policy" LONGTEXT,
	"proctored_exam_id" INT,
	"set_by_user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_proctored_exam_id_8126b616_fk_proctorin" FOREIGN KEY ("proctored_exam_id") REFERENCES "proctoring_proctoredexam" ("id"),
	 CONSTRAINT "proctoring_proctored_set_by_user_id_42ce126e_fk_auth_user" FOREIGN KEY ("set_by_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "proctoring_proctoredexamreviewpolicy" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"review_policy" LONGTEXT,
	"proctored_exam_id" INT,
	"set_by_user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "proctoring_proctored_proctored_exam_id_57f9ce30_fk_proctorin" FOREIGN KEY ("proctored_exam_id") REFERENCES "proctoring_proctoredexam" ("id"),
	 CONSTRAINT "proctoring_proctored_set_by_user_id_7c101300_fk_auth_user" FOREIGN KEY ("set_by_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "problem_builder_share" (
	"id" INT,
	"submission_uid" VARCHAR,
	"block_id" VARCHAR,
	"notified" TINYINT,
	"shared_by_id" INT,
	"shared_with_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "problem_builder_share_shared_with_id_acab4570_fk_auth_user_id" FOREIGN KEY ("shared_with_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "problem_builder_share_shared_by_id_0b75382c_fk_auth_user_id" FOREIGN KEY ("shared_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "organizations_historicalorganizationcourse" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"active" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"organization_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "organizations_histor_history_user_id_0f165c1b_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "organizations_historicalorganization" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"description" LONGTEXT,
	"logo" LONGTEXT,
	"active" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "organizations_histor_history_user_id_bb516493_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "oauth_provider_consumer" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT,
	"key" VARCHAR,
	"secret" VARCHAR,
	"status" SMALLINT,
	"xauth_allowed" TINYINT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth_provider_consumer_user_id_90ce7b49_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "oauth_provider_token" (
	"id" INT,
	"key" VARCHAR,
	"secret" VARCHAR,
	"token_type" SMALLINT,
	"timestamp" INT,
	"is_approved" TINYINT,
	"verifier" VARCHAR,
	"callback" VARCHAR,
	"callback_confirmed" TINYINT,
	"consumer_id" INT,
	"scope_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth_provider_token_consumer_id_419f9c5c_fk_oauth_pro" FOREIGN KEY ("consumer_id") REFERENCES "oauth_provider_consumer" ("id"),
	 CONSTRAINT "oauth_provider_token_scope_id_20fc31eb_fk_oauth_pro" FOREIGN KEY ("scope_id") REFERENCES "oauth_provider_scope" ("id"),
	 CONSTRAINT "oauth_provider_token_user_id_6e750fab_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "oauth2_provider_application" (
	"id" BIGINT,
	"client_id" VARCHAR,
	"redirect_uris" LONGTEXT,
	"client_type" VARCHAR,
	"authorization_grant_type" VARCHAR,
	"client_secret" VARCHAR,
	"name" VARCHAR,
	"user_id" INT,
	"skip_authorization" TINYINT,
	"created" DATETIME,
	"updated" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_provider_application_user_id_79829054_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "oauth_dispatch_restrictedapplication" (
	"id" INT,
	"application_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth_dispatch_restr_application_id_6b8d0930_fk_oauth2_pr" FOREIGN KEY ("application_id") REFERENCES "oauth2_provider_application" ("id")
);

CREATE TABLE "oauth_dispatch_applicationorganization" (
	"id" INT,
	"relation_type" VARCHAR,
	"application_id" BIGINT,
	"organization_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth_dispatch_appli_application_id_dea619c6_fk_oauth2_pr" FOREIGN KEY ("application_id") REFERENCES "oauth2_provider_application" ("id")
);

CREATE TABLE "oauth_dispatch_applicationaccess" (
	"id" INT,
	"scopes" VARCHAR,
	"application_id" BIGINT,
	"filters" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth_dispatch_appli_application_id_dcddee6e_fk_oauth2_pr" FOREIGN KEY ("application_id") REFERENCES "oauth2_provider_application" ("id")
);

CREATE TABLE "oauth2_provider_grant" (
	"id" BIGINT,
	"code" VARCHAR,
	"expires" DATETIME,
	"redirect_uri" VARCHAR,
	"scope" LONGTEXT,
	"application_id" BIGINT,
	"user_id" INT,
	"created" DATETIME,
	"updated" DATETIME,
	"code_challenge" VARCHAR,
	"code_challenge_method" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "oauth2_provider_grant_application_id_81923564_fk" FOREIGN KEY ("application_id") REFERENCES "oauth2_provider_application" ("id")
);

CREATE TABLE "oauth2_provider_accesstoken" (
	"id" BIGINT,
	"token" VARCHAR,
	"expires" DATETIME,
	"scope" LONGTEXT,
	"application_id" BIGINT,
	"user_id" INT,
	"created" DATETIME,
	"updated" DATETIME,
	"source_refresh_token_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "oauth2_provider_refreshtoken" (
	"id" BIGINT,
	"token" VARCHAR,
	"access_token_id" BIGINT,
	"application_id" BIGINT,
	"user_id" INT,
	"created" DATETIME,
	"updated" DATETIME,
	"revoked" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr" FOREIGN KEY ("access_token_id") REFERENCES "oauth2_provider_accesstoken" ("id"),
	 CONSTRAINT "oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "oauth2_provider_refreshtoken_application_id_2d1c311b_fk" FOREIGN KEY ("application_id") REFERENCES "oauth2_provider_application" ("id")
);

CREATE TABLE "oauth2_client" (
	"id" INT,
	"name" VARCHAR,
	"url" VARCHAR,
	"redirect_uri" VARCHAR,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"client_type" INT,
	"user_id" INT,
	"logout_uri" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_client_user_id_21c89c78_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "third_party_auth_providerapipermissions" (
	"id" INT,
	"provider_id" VARCHAR,
	"client_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "third_party_auth_pro_client_id_c28afa10_fk_oauth2_cl" FOREIGN KEY ("client_id") REFERENCES "oauth2_client" ("id")
);

CREATE TABLE "oauth2_provider_trustedclient" (
	"id" INT,
	"client_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_provider_trus_client_id_01d81d1c_fk_oauth2_cl" FOREIGN KEY ("client_id") REFERENCES "oauth2_client" ("id")
);

CREATE TABLE "oauth2_grant" (
	"id" INT,
	"code" VARCHAR,
	"expires" DATETIME,
	"redirect_uri" VARCHAR,
	"scope" INT,
	"client_id" INT,
	"user_id" INT,
	"nonce" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_grant_user_id_d8248ea3_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "oauth2_grant_client_id_430bbcf7_fk_oauth2_client_id" FOREIGN KEY ("client_id") REFERENCES "oauth2_client" ("id")
);

CREATE TABLE "oauth2_accesstoken" (
	"id" INT,
	"token" VARCHAR,
	"expires" DATETIME,
	"scope" INT,
	"client_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_accesstoken_user_id_bcf4c395_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "oauth2_refreshtoken" (
	"id" INT,
	"token" VARCHAR,
	"expired" TINYINT,
	"access_token_id" INT,
	"client_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "oauth2_refreshtoken_access_token_id_4302e339_fk_oauth2_ac" FOREIGN KEY ("access_token_id") REFERENCES "oauth2_accesstoken" ("id"),
	 CONSTRAINT "oauth2_refreshtoken_client_id_22c52347_fk_oauth2_client_id" FOREIGN KEY ("client_id") REFERENCES "oauth2_client" ("id"),
	 CONSTRAINT "oauth2_refreshtoken_user_id_3d206436_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "notify_settings" (
	"id" INT,
	"interval" SMALLINT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "notify_settings_user_id_088ebffc_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "notify_subscription" (
	"subscription_id" INT,
	"object_id" VARCHAR,
	"send_emails" TINYINT,
	"notification_type_id" VARCHAR,
	"settings_id" INT,
	 PRIMARY KEY ("subscription_id"),
	 CONSTRAINT "notify_subscription_settings_id_dbc3961d_fk_notify_settings_id" FOREIGN KEY ("settings_id") REFERENCES "notify_settings" ("id"),
	 CONSTRAINT "notify_subscription_notification_type_id_f73a8b13_fk_notify_no" FOREIGN KEY ("notification_type_id") REFERENCES "notify_notificationtype" ("key")
);

CREATE TABLE "notes_note" (
	"id" INT,
	"course_id" VARCHAR,
	"uri" VARCHAR,
	"text" LONGTEXT,
	"quote" LONGTEXT,
	"range_start" VARCHAR,
	"range_start_offset" INT,
	"range_end" VARCHAR,
	"range_end_offset" INT,
	"tags" LONGTEXT,
	"created" DATETIME,
	"updated" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "notes_note_user_id_be6c80b4_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "moodle_historicalmoodleenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"moodle_base_url" VARCHAR,
	"service_short_name" VARCHAR,
	"category_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"token" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "moodle_historicalmoo_history_user_id_22017ee9_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "mobile_api_mobileapiconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"video_profiles" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "mobile_api_mobileapi_changed_by_id_8799981a_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "mobile_api_ignoremobileavailableflagconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "mobile_api_ignoremob_changed_by_id_4ca9c0d6_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "lti_provider_ltiuser" (
	"id" INT,
	"lti_user_id" VARCHAR,
	"edx_user_id" INT,
	"lti_consumer_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lti_provider_ltiuser_lti_consumer_id_c1b42ee3_fk_lti_provi" FOREIGN KEY ("lti_consumer_id") REFERENCES "lti_provider_lticonsumer" ("id"),
	 CONSTRAINT "lti_provider_ltiuser_edx_user_id_e06b2db5_fk_auth_user_id" FOREIGN KEY ("edx_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "lti_provider_gradedassignment" (
	"id" INT,
	"course_key" VARCHAR,
	"usage_key" VARCHAR,
	"lis_result_sourcedid" VARCHAR,
	"version_number" INT,
	"outcome_service_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lti_provider_gradedassignment_user_id_c45f47d4_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "lms_xblock_xblockasidesconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"disabled_blocks" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lms_xblock_xblockasi_changed_by_id_71928be3_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "instructor_task_instructortask" (
	"id" INT,
	"task_type" VARCHAR,
	"course_id" VARCHAR,
	"task_key" VARCHAR,
	"task_input" LONGTEXT,
	"task_id" VARCHAR,
	"task_state" VARCHAR,
	"task_output" VARCHAR,
	"created" DATETIME,
	"updated" DATETIME,
	"subtasks" LONGTEXT,
	"requester_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "instructor_task_inst_requester_id_307f955d_fk_auth_user" FOREIGN KEY ("requester_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "instructor_task_gradereportsetting" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"batch_size" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "instructor_task_grad_changed_by_id_dae9a995_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "grades_persistentgradesenabledflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"enabled_for_all_courses" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "grades_persistentgra_changed_by_id_f80cdad1_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "grades_historicalpersistentsubsectiongradeoverride" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"earned_all_override" DOUBLE,
	"possible_all_override" DOUBLE,
	"earned_graded_override" DOUBLE,
	"possible_graded_override" DOUBLE,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"grade_id" BIGINT,
	"history_user_id" INT,
	"override_reason" VARCHAR,
	"system" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "grades_historicalper_history_user_id_05000562_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "grades_coursepersistentgradesflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "grades_coursepersist_changed_by_id_c8c392d6_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "grades_computegradessetting" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"batch_size" INT,
	"course_ids" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "grades_computegrades_changed_by_id_f2bf3678_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "external_user_ids_historicalexternalidtype" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"name" VARCHAR,
	"description" LONGTEXT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "external_user_ids_hi_history_user_id_6a2c78fc_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "external_user_ids_historicalexternalid" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"external_user_id" CHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"external_id_type_id" INT,
	"history_user_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "external_user_ids_hi_history_user_id_fd67f897_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "external_user_ids_externalid" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"external_user_id" CHAR,
	"external_id_type_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "external_user_ids_externalid_user_id_7789441b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "external_auth_externalauthmap" (
	"id" INT,
	"external_id" VARCHAR,
	"external_domain" VARCHAR,
	"external_credentials" LONGTEXT,
	"external_email" VARCHAR,
	"external_name" VARCHAR,
	"internal_password" VARCHAR,
	"dtcreated" DATETIME,
	"dtsignup" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "external_auth_externalauthmap_user_id_91b3ca08_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "experiments_historicalexperimentkeyvalue" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"experiment_id" SMALLINT,
	"key" VARCHAR,
	"value" LONGTEXT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "experiments_historic_history_user_id_3892eb1a_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "experiments_experimentdata" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"experiment_id" SMALLINT,
	"key" VARCHAR,
	"value" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "experiments_experimentdata_user_id_bd6f4720_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "event_routing_backends_routerconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"backend_name" VARCHAR,
	"configurations" LONGBLOB,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "event_routing_backen_changed_by_id_32085a77_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "entitlements_historicalcourseentitlementsupportdetail" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"reason" VARCHAR,
	"action" VARCHAR,
	"comments" LONGTEXT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"entitlement_id" INT,
	"history_user_id" INT,
	"support_user_id" INT,
	"unenrolled_run_id" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "entitlements_histori_history_user_id_b00a74ce_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "entitlements_historicalcourseentitlement" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"course_uuid" CHAR,
	"expired_at" DATETIME,
	"mode" VARCHAR,
	"order_number" VARCHAR,
	"refund_locked" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"_policy_id" INT,
	"enrollment_course_run_id" INT,
	"history_user_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "entitlements_histori_history_user_id_a3bc1823_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "entitlements_courseentitlement" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"course_uuid" CHAR,
	"expired_at" DATETIME,
	"mode" VARCHAR,
	"order_number" VARCHAR,
	"enrollment_course_run_id" INT,
	"user_id" INT,
	"_policy_id" INT,
	"refund_locked" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "entitlements_courseentitlement_user_id_a518a225_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "entitlements_courseentitlementsupportdetail" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"reason" VARCHAR,
	"comments" LONGTEXT,
	"entitlement_id" INT,
	"support_user_id" INT,
	"unenrolled_run_id" VARCHAR,
	"action" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "entitlements_coursee_support_user_id_97d3095e_fk_auth_user" FOREIGN KEY ("support_user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "entitlements_coursee_entitlement_id_93b9020b_fk_entitleme" FOREIGN KEY ("entitlement_id") REFERENCES "entitlements_courseentitlement" ("id")
);

CREATE TABLE "enterprise_updateroleassignmentswithcustomersconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"role" VARCHAR,
	"batch_size" INT,
	"enterprise_customer_uuid" VARCHAR,
	"dry_run" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_updaterol_changed_by_id_1053fb4d_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_systemwideenterpriseuserroleassignment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"role_id" INT,
	"user_id" INT,
	"applies_to_all_contexts" TINYINT,
	"enterprise_customer_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_systemwid_role_id_bc7092f0_fk_enterpris" FOREIGN KEY ("role_id") REFERENCES "enterprise_systemwideenterpriserole" ("id"),
	 CONSTRAINT "enterprise_systemwid_enterprise_customer__0136c565_fk_enterpris" FOREIGN KEY ("enterprise_customer_id") REFERENCES "enterprise_enterprisecustomer" ("uuid"),
	 CONSTRAINT "enterprise_systemwid_user_id_e890aef2_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalpendingenterprisecustomeruser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_email" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_c491461b_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalpendingenterprisecustomeradminuser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_email" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_3a051cc8_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalpendingenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"course_mode" VARCHAR,
	"cohort_name" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"user_id" INT,
	"source_id" INT,
	"discount_percentage" DECIMAL,
	"sales_force_id" VARCHAR,
	"license_uuid" CHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_894ad7d0_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicallicensedenterprisecourseenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"license_uuid" CHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"history_user_id" INT,
	"is_revoked" TINYINT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_1db87766_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalenterprisecustomercatalog" (
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	"content_filter" LONGTEXT,
	"title" VARCHAR,
	"enabled_course_modes" LONGTEXT,
	"history_change_reason" VARCHAR,
	"publish_audit_enrollment_urls" TINYINT,
	"enterprise_catalog_query_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_31eab231_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalenterprisecustomer" (
	"created" DATETIME,
	"modified" DATETIME,
	"uuid" CHAR,
	"name" VARCHAR,
	"active" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"site_id" INT,
	"enable_data_sharing_consent" TINYINT,
	"enforce_data_sharing_consent" VARCHAR,
	"enable_audit_enrollment" TINYINT,
	"enable_audit_data_reporting" TINYINT,
	"history_change_reason" VARCHAR,
	"replace_sensitive_sso_username" TINYINT,
	"hide_course_original_price" TINYINT,
	"slug" VARCHAR,
	"country" VARCHAR,
	"enable_autocohorting" TINYINT,
	"customer_type_id" INT,
	"enable_portal_code_management_screen" TINYINT,
	"enable_learner_portal" TINYINT,
	"enable_portal_reporting_config_screen" TINYINT,
	"contact_email" VARCHAR,
	"enable_portal_subscription_management_screen" TINYINT,
	"enable_slug_login" TINYINT,
	"enable_portal_saml_configuration_screen" TINYINT,
	"default_contract_discount" DECIMAL,
	"enable_analytics_screen" TINYINT,
	"enable_integrated_customer_learner_portal_search" TINYINT,
	"default_language" VARCHAR,
	"enable_portal_lms_configurations_screen" TINYINT,
	"sender_alias" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_bbd9b0d6_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalenterprisecourseenrollment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_type" VARCHAR,
	"enterprise_customer_user_id" INT,
	"history_user_id" INT,
	"history_change_reason" VARCHAR,
	"source_id" INT,
	"saved_for_later" TINYINT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_a7d84786_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalenterpriseanalyticsuser" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"analytics_user_id" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_user_id" INT,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_749d5e98_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_historicalenrollmentnotificationemailtemplate" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"plaintext_template" LONGTEXT,
	"html_template" LONGTEXT,
	"subject_line" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"enterprise_customer_id" CHAR,
	"history_change_reason" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "enterprise_historica_history_user_id_f2a6d605_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "enterprise_enterprisefeatureuserroleassignment" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"role_id" INT,
	"user_id" INT,
	"applies_to_all_contexts" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "enterprise_enterpris_user_id_2d335bd4_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "enterprise_enterpris_role_id_5e8cff42_fk_enterpris" FOREIGN KEY ("role_id") REFERENCES "enterprise_enterprisefeaturerole" ("id")
);

CREATE TABLE "embargo_ipfilter" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"whitelist" LONGTEXT,
	"blacklist" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "embargo_ipfilter_changed_by_id_39e4eed2_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "embargo_embargoedstate" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"embargoed_countries" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "embargo_embargoedstate_changed_by_id_f7763260_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "email_marketing_emailmarketingconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"sailthru_key" VARCHAR,
	"sailthru_secret" VARCHAR,
	"sailthru_new_user_list" VARCHAR,
	"sailthru_retry_interval" INT,
	"sailthru_max_retries" INT,
	"changed_by_id" INT,
	"sailthru_abandoned_cart_delay" INT,
	"sailthru_abandoned_cart_template" VARCHAR,
	"sailthru_content_cache_age" INT,
	"sailthru_enroll_cost" INT,
	"sailthru_enroll_template" VARCHAR,
	"sailthru_get_tags_from_sailthru" TINYINT,
	"sailthru_purchase_template" VARCHAR,
	"sailthru_upgrade_template" VARCHAR,
	"sailthru_lms_url_override" VARCHAR,
	"welcome_email_send_delay" INT,
	"user_registration_cookie_timeout_delay" DOUBLE,
	"sailthru_welcome_template" VARCHAR,
	"sailthru_verification_failed_template" VARCHAR,
	"sailthru_verification_passed_template" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "email_marketing_emai_changed_by_id_15ce753b_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "edx_when_userdate" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"abs_date" DATETIME,
	"rel_date" BIGINT,
	"reason" LONGTEXT,
	"actor_id" INT,
	"user_id" INT,
	"content_date_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "edx_when_userdate_actor_id_cbef1cdc_fk_auth_user_id" FOREIGN KEY ("actor_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "edx_when_userdate_user_id_46e8cc36_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "edx_when_userdate_content_date_id_35c5e2e2_fk_edx_when_" FOREIGN KEY ("content_date_id") REFERENCES "edx_when_contentdate" ("id")
);

CREATE TABLE "django_openid_auth_useropenid" (
	"id" INT,
	"claimed_id" LONGTEXT,
	"display_id" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_openid_auth_useropenid_user_id_707d846c_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "django_comment_common_forumsconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"connection_timeout" DOUBLE,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_comment_commo_changed_by_id_9292e296_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "django_comment_client_role_users" (
	"id" INT,
	"role_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_comment_clien_role_id_baec77f6_fk_django_co" FOREIGN KEY ("role_id") REFERENCES "django_comment_client_role" ("id"),
	 CONSTRAINT "django_comment_clien_user_id_5d7991df_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
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

CREATE TABLE "discussions_providerfilter" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org" VARCHAR,
	"org_course" VARCHAR,
	"allow" VARCHAR,
	"deny" VARCHAR,
	"changed_by_id" INT,
	"course_id" VARCHAR,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "discussions_provider_changed_by_id_771ce4d3_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "discussions_provider_course_id_7b7d915c_fk_course_ov" FOREIGN KEY ("course_id") REFERENCES "course_overviews_courseoverview" ("id")
);

CREATE TABLE "discussions_historicaldiscussionsconfiguration" (
	"created" DATETIME,
	"modified" DATETIME,
	"context_key" VARCHAR,
	"enabled" TINYINT,
	"plugin_configuration" LONGTEXT,
	"provider_type" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"lti_configuration_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "discussions_historic_history_user_id_df7ddb62_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "discounts_discountrestrictionconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org" VARCHAR,
	"org_course" VARCHAR,
	"disabled" TINYINT,
	"changed_by_id" INT,
	"course_id" VARCHAR,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "discounts_discountre_changed_by_id_f18a5c1b_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "discounts_discountre_course_id_d7f6674b_fk_course_ov" FOREIGN KEY ("course_id") REFERENCES "course_overviews_courseoverview" ("id")
);

CREATE TABLE "discounts_discountpercentageconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org" VARCHAR,
	"org_course" VARCHAR,
	"percentage" INT,
	"changed_by_id" INT,
	"course_id" VARCHAR,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "discounts_discountpe_changed_by_id_b00d7aa3_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "discounts_discountpe_course_id_19913d92_fk_course_ov" FOREIGN KEY ("course_id") REFERENCES "course_overviews_courseoverview" ("id")
);

CREATE TABLE "demographics_userdemographics" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"show_call_to_action" TINYINT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "demographics_userdemographics_user_id_e435d5d5_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "demographics_historicaluserdemographics" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"show_call_to_action" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "demographics_histori_history_user_id_a05d5af3_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "degreed_historicaldegreedenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"key" VARCHAR,
	"secret" VARCHAR,
	"degreed_company_id" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	"transmission_chunk_size" INT,
	"degreed_base_url" VARCHAR,
	"degreed_user_id" VARCHAR,
	"degreed_user_password" VARCHAR,
	"provider_id" VARCHAR,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "degreed_historicalde_history_user_id_5b4776d8_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "degreed_degreedglobalconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"completion_status_api_path" VARCHAR,
	"course_api_path" VARCHAR,
	"oauth_api_path" VARCHAR,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "degreed_degreedgloba_changed_by_id_00a8a7be_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "dark_lang_darklangconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"released_languages" LONGTEXT,
	"changed_by_id" INT,
	"beta_languages" LONGTEXT,
	"enable_beta_languages" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "dark_lang_darklangconfig_changed_by_id_9a7df899_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "credit_creditconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"cache_ttl" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credit_creditconfig_changed_by_id_72e1eca9_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "credentials_notifycredentialsconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"arguments" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credentials_notifycr_changed_by_id_e31cde0e_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "credentials_credentialsapiconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"internal_service_url" VARCHAR,
	"public_service_url" VARCHAR,
	"enable_learner_issuance" TINYINT,
	"enable_studio_authoring" TINYINT,
	"cache_ttl" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "credentials_credenti_changed_by_id_9e145a81_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "crawlers_crawlersconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"known_user_agents" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "crawlers_crawlersconfig_changed_by_id_544af924_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_xmodulestudentprefsfield" (
	"id" INT,
	"field_name" VARCHAR,
	"value" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	"module_type" VARCHAR,
	"student_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_xmodulest_student_id_3c60ec8a_fk_auth_user" FOREIGN KEY ("student_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_xmodulestudentinfofield" (
	"id" INT,
	"field_name" VARCHAR,
	"value" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	"student_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_xmodulest_student_id_b78d39b4_fk_auth_user" FOREIGN KEY ("student_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_studentfieldoverride" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"location" VARCHAR,
	"field" VARCHAR,
	"value" LONGTEXT,
	"student_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_studentfi_student_id_7a972765_fk_auth_user" FOREIGN KEY ("student_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_orgdynamicupgradedeadlineconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org_id" VARCHAR,
	"deadline_days" SMALLINT,
	"opt_out" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_orgdynami_changed_by_id_b557a1ea_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_offlinecomputedgrade" (
	"id" INT,
	"course_id" VARCHAR,
	"created" DATETIME,
	"updated" DATETIME,
	"gradeset" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_offlinecomputedgrade_user_id_14864cea_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_dynamicupgradedeadlineconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"deadline_days" SMALLINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_dynamicup_changed_by_id_6a450e2c_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "courseware_coursedynamicupgradedeadlineconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"course_id" VARCHAR,
	"deadline_days" SMALLINT,
	"opt_out" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "courseware_coursedyn_changed_by_id_2c4efc3a_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_overviews_simulatecoursepublishconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"arguments" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_overviews_sim_changed_by_id_3413c118_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_overviews_historicalcourseoverview" (
	"created" DATETIME,
	"modified" DATETIME,
	"version" INT,
	"id" VARCHAR,
	"_location" VARCHAR,
	"org" LONGTEXT,
	"display_name" LONGTEXT,
	"display_number_with_default" LONGTEXT,
	"display_org_with_default" LONGTEXT,
	"start" DATETIME,
	"end" DATETIME,
	"advertised_start" LONGTEXT,
	"announcement" DATETIME,
	"course_image_url" LONGTEXT,
	"social_sharing_url" LONGTEXT,
	"end_of_course_survey_url" LONGTEXT,
	"certificates_display_behavior" LONGTEXT,
	"certificates_show_before_end" TINYINT,
	"cert_html_view_enabled" TINYINT,
	"has_any_active_web_certificate" TINYINT,
	"cert_name_short" LONGTEXT,
	"cert_name_long" LONGTEXT,
	"certificate_available_date" DATETIME,
	"lowest_passing_grade" DECIMAL,
	"days_early_for_beta" DOUBLE,
	"mobile_available" TINYINT,
	"visible_to_staff_only" TINYINT,
	"_pre_requisite_courses_json" LONGTEXT,
	"enrollment_start" DATETIME,
	"enrollment_end" DATETIME,
	"enrollment_domain" LONGTEXT,
	"invitation_only" TINYINT,
	"max_student_enrollments_allowed" INT,
	"catalog_visibility" LONGTEXT,
	"short_description" LONGTEXT,
	"course_video_url" LONGTEXT,
	"effort" LONGTEXT,
	"self_paced" TINYINT,
	"marketing_url" LONGTEXT,
	"eligible_for_financial_aid" TINYINT,
	"language" LONGTEXT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"end_date" DATETIME,
	"start_date" DATETIME,
	"banner_image_url" LONGTEXT,
	"has_highlights" TINYINT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "course_overviews_his_history_user_id_e21063d9_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_overviews_courseoverviewimageconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"small_width" INT,
	"small_height" INT,
	"large_width" INT,
	"large_height" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_overviews_cou_changed_by_id_b60ae39a_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_modes_historicalcoursemode" (
	"id" INT,
	"mode_slug" VARCHAR,
	"mode_display_name" VARCHAR,
	"min_price" INT,
	"currency" VARCHAR,
	"expiration_datetime" DATETIME,
	"expiration_datetime_is_explicit" TINYINT,
	"expiration_date" DATE,
	"suggested_prices" VARCHAR,
	"description" LONGTEXT,
	"sku" VARCHAR,
	"bulk_sku" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"course_id" VARCHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "course_modes_histori_history_user_id_d92d6b6e_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_modes_coursemodeexpirationconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"verification_window" BIGINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_modes_coursem_changed_by_id_208463ee_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_groups_courseusergroup_users" (
	"id" INT,
	"courseusergroup_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_groups_course_user_id_28aff981_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "course_groups_course_courseusergroup_id_26a7966f_fk_course_gr" FOREIGN KEY ("courseusergroup_id") REFERENCES "course_groups_courseusergroup" ("id")
);

CREATE TABLE "course_groups_cohortmembership" (
	"id" INT,
	"course_id" VARCHAR,
	"course_user_group_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_groups_cohortmembership_user_id_aae5b8e7_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_goals_coursegoal" (
	"id" INT,
	"course_key" VARCHAR,
	"goal_key" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_goals_coursegoal_user_id_0a07e3db_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_duration_limits_coursedurationlimitconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org" VARCHAR,
	"enabled_as_of" DATETIME,
	"changed_by_id" INT,
	"course_id" VARCHAR,
	"site_id" INT,
	"org_course" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_duration_limi_changed_by_id_f320fd76_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_date_signals_selfpacedrelativedatesconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org" VARCHAR,
	"org_course" VARCHAR,
	"changed_by_id" INT,
	"course_id" VARCHAR,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_date_signals__changed_by_id_5f8228f2_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_creators_coursecreator" (
	"id" INT,
	"state_changed" DATETIME,
	"state" VARCHAR,
	"note" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_creators_coursecreator_user_id_e4da548d_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "course_action_state_coursererunstate" (
	"id" INT,
	"created_time" DATETIME,
	"updated_time" DATETIME,
	"course_key" VARCHAR,
	"action" VARCHAR,
	"state" VARCHAR,
	"should_display" TINYINT,
	"message" VARCHAR,
	"source_course_key" VARCHAR,
	"display_name" VARCHAR,
	"created_user_id" INT,
	"updated_user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_action_state__created_user_id_5373c218_fk_auth_user" FOREIGN KEY ("created_user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "course_action_state__updated_user_id_3689fe4b_fk_auth_user" FOREIGN KEY ("updated_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "cors_csrf_xdomainproxyconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"whitelist" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cors_csrf_xdomainpro_changed_by_id_b8e97ec3_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "cornerstone_historicalcornerstoneenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"cornerstone_base_url" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "cornerstone_historic_history_user_id_1ded83c5_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "cornerstone_cornerstonelearnerdatatransmissionaudit" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"user_guid" VARCHAR,
	"enterprise_course_enrollment_id" INT,
	"course_id" VARCHAR,
	"session_token" VARCHAR,
	"callback_url" VARCHAR,
	"subdomain" VARCHAR,
	"course_completed" TINYINT,
	"completed_timestamp" DATETIME,
	"status" VARCHAR,
	"error_message" LONGTEXT,
	"user_id" INT,
	"grade" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cornerstone_cornerst_user_id_43bd15bf_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "cornerstone_cornerstoneglobalconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"completion_status_api_path" VARCHAR,
	"oauth_api_path" VARCHAR,
	"changed_by_id" INT,
	"subject_mapping" LONGTEXT,
	"key" VARCHAR,
	"secret" VARCHAR,
	"languages" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cornerstone_cornerst_changed_by_id_117db502_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "contentstore_videouploadconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"profile_whitelist" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "contentstore_videoup_changed_by_id_e7352cb2_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "contentserver_courseassetcachettlconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"cache_ttl" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "contentserver_course_changed_by_id_a9213047_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "contentserver_cdnuseragentsconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"cdn_user_agents" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "contentserver_cdnuse_changed_by_id_19d8cb94_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "content_type_gating_contenttypegatingconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"org" VARCHAR,
	"enabled_as_of" DATETIME,
	"studio_override_enabled" TINYINT,
	"changed_by_id" INT,
	"course_id" VARCHAR,
	"site_id" INT,
	"org_course" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "content_type_gating__changed_by_id_e1754c4b_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "consent_historicaldatasharingconsent" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"username" VARCHAR,
	"granted" TINYINT,
	"course_id" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	"history_change_reason" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "consent_historicalda_history_user_id_08d7bf89_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "completion_blockcompletion" (
	"created" DATETIME,
	"modified" DATETIME,
	"id" BIGINT,
	"course_key" VARCHAR,
	"block_key" VARCHAR,
	"block_type" VARCHAR,
	"completion" DOUBLE,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "completion_blockcompletion_user_id_20994c23_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "commerce_commerceconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"checkout_on_ecommerce_service" TINYINT,
	"changed_by_id" INT,
	"cache_ttl" INT,
	"receipt_page" VARCHAR,
	"enable_automatic_refund_approval" TINYINT,
	"basket_checkout_page" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "commerce_commercecon_changed_by_id_2c9a6f14_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_historicalgeneratedcertificate" (
	"id" INT,
	"course_id" VARCHAR,
	"verify_uuid" VARCHAR,
	"download_uuid" VARCHAR,
	"download_url" VARCHAR,
	"grade" VARCHAR,
	"key" VARCHAR,
	"distinction" TINYINT,
	"status" VARCHAR,
	"mode" VARCHAR,
	"name" VARCHAR,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	"error_reason" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "certificates_histori_history_user_id_1b53bb5f_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_historicalcertificateinvalidation" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"notes" LONGTEXT,
	"active" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"generated_certificate_id" INT,
	"history_user_id" INT,
	"invalidated_by_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "certificates_histori_history_user_id_67c7d840_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_generatedcertificate" (
	"id" INT,
	"course_id" VARCHAR,
	"verify_uuid" VARCHAR,
	"download_uuid" VARCHAR,
	"download_url" VARCHAR,
	"grade" VARCHAR,
	"key" VARCHAR,
	"distinction" TINYINT,
	"status" VARCHAR,
	"mode" VARCHAR,
	"name" VARCHAR,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	"error_reason" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_generat_user_id_54119d22_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_certificatewhitelist" (
	"id" INT,
	"course_id" VARCHAR,
	"whitelist" TINYINT,
	"created" DATETIME,
	"notes" LONGTEXT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_certifi_user_id_c2ab1b7c_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_certificateinvalidation" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"notes" LONGTEXT,
	"active" TINYINT,
	"generated_certificate_id" INT,
	"invalidated_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_certifi_invalidated_by_id_e3c101f1_fk_auth_user" FOREIGN KEY ("invalidated_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_certificatehtmlviewconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"configuration" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_certifi_changed_by_id_bcf656f2_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_certificategenerationhistory" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"is_regeneration" TINYINT,
	"generated_by_id" INT,
	"instructor_task_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_certifi_generated_by_id_e9d4b7f2_fk_auth_user" FOREIGN KEY ("generated_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_certificategenerationconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_certifi_changed_by_id_a6d06e99_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "certificates_certificategenerationcommandconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"arguments" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "certificates_certifi_changed_by_id_a2950eaa_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "ccx_customcourseforedx" (
	"id" INT,
	"course_id" VARCHAR,
	"display_name" VARCHAR,
	"coach_id" INT,
	"structure_json" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ccx_customcourseforedx_coach_id_efe121f7_fk_auth_user_id" FOREIGN KEY ("coach_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "catalog_catalogintegration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"internal_api_url" VARCHAR,
	"cache_ttl" INT,
	"changed_by_id" INT,
	"service_username" VARCHAR,
	"page_size" INT,
	"long_term_cache_ttl" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "catalog_cataloginteg_changed_by_id_cde406de_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "canvas_historicalcanvasenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"canvas_account_id" BIGINT,
	"canvas_base_url" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "canvas_historicalcan_history_user_id_615fc2a2_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "calendar_sync_usercalendarsyncconfig" (
	"id" INT,
	"course_key" VARCHAR,
	"enabled" TINYINT,
	"user_id" INT,
	"ics_sequence" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "calendar_sync_userca_user_id_5dd14ead_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "calendar_sync_historicalusercalendarsyncconfig" (
	"id" INT,
	"course_key" VARCHAR,
	"enabled" TINYINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"user_id" INT,
	"ics_sequence" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "calendar_sync_histor_history_user_id_e696e2d5_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "bulk_grades_scoreoverrider" (
	"id" INT,
	"modified" DATETIME,
	"created" DATETIME,
	"module_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bulk_grades_scoreoverrider_user_id_9768d9f6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "bulk_email_optout" (
	"id" INT,
	"course_id" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bulk_email_optout_user_id_ff6223d6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "bulk_email_courseemail" (
	"id" INT,
	"slug" VARCHAR,
	"subject" VARCHAR,
	"html_message" LONGTEXT,
	"text_message" LONGTEXT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_id" VARCHAR,
	"to_option" VARCHAR,
	"template_name" VARCHAR,
	"from_addr" VARCHAR,
	"sender_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bulk_email_courseemail_sender_id_865f6979_fk_auth_user_id" FOREIGN KEY ("sender_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "bulk_email_courseemail_targets" (
	"id" INT,
	"courseemail_id" INT,
	"target_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bulk_email_courseema_courseemail_id_83f5bdcd_fk_bulk_emai" FOREIGN KEY ("courseemail_id") REFERENCES "bulk_email_courseemail" ("id")
);

CREATE TABLE "bulk_email_bulkemailflag" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"require_course_email_auth" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bulk_email_bulkemailflag_changed_by_id_c510754b_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "branding_brandinginfoconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"configuration" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "branding_brandinginf_changed_by_id_616dd172_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "branding_brandingapiconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "branding_brandingapi_changed_by_id_bab2730f_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "bookmarks_bookmark" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"course_key" VARCHAR,
	"usage_key" VARCHAR,
	"path" LONGTEXT,
	"user_id" INT,
	"xblock_cache_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bookmarks_bookmark_user_id_a26bf17c_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "block_structure_config" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"num_versions_to_keep" INT,
	"cache_timeout_in_seconds" INT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "block_structure_config_changed_by_id_45af0b10_fk_auth_user_id" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "blackboard_historicalblackboardenterprisecustomerconfiguration" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"active" TINYINT,
	"transmission_chunk_size" INT,
	"channel_worker_username" VARCHAR,
	"catalogs_to_transmit" LONGTEXT,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"blackboard_base_url" VARCHAR,
	"refresh_token" VARCHAR,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"enterprise_customer_id" CHAR,
	"history_user_id" INT,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "blackboard_historica_history_user_id_099f295b_fk_auth_user" FOREIGN KEY ("history_user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "badges_courseeventbadgesconfiguration" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"courses_completed" LONGTEXT,
	"courses_enrolled" LONGTEXT,
	"course_groups" LONGTEXT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "badges_courseeventba_changed_by_id_db04ed01_fk_auth_user" FOREIGN KEY ("changed_by_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "badges_badgeassertion" (
	"id" INT,
	"data" LONGTEXT,
	"backend" VARCHAR,
	"image_url" VARCHAR,
	"assertion_url" VARCHAR,
	"modified" DATETIME,
	"created" DATETIME,
	"badge_class_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "badges_badgeassertion_user_id_13665630_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "auth_userprofile" (
	"id" INT,
	"name" VARCHAR,
	"meta" LONGTEXT,
	"courseware" VARCHAR,
	"language" VARCHAR,
	"location" VARCHAR,
	"year_of_birth" INT,
	"gender" VARCHAR,
	"level_of_education" VARCHAR,
	"mailing_address" LONGTEXT,
	"city" LONGTEXT,
	"country" VARCHAR,
	"goals" LONGTEXT,
	"allow_certificate" TINYINT,
	"bio" VARCHAR,
	"profile_image_uploaded_at" DATETIME,
	"user_id" INT,
	"phone_number" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_userprofile_user_id_62634b27_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "student_sociallink" (
	"id" INT,
	"platform" VARCHAR,
	"social_link" VARCHAR,
	"user_profile_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_sociallink_user_profile_id_19f54475_fk_auth_user" FOREIGN KEY ("user_profile_id") REFERENCES "auth_userprofile" ("id")
);

CREATE TABLE "student_languageproficiency" (
	"id" INT,
	"code" VARCHAR,
	"user_profile_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_languageprof_user_profile_id_768cd3eb_fk_auth_user" FOREIGN KEY ("user_profile_id") REFERENCES "auth_userprofile" ("id")
);

CREATE TABLE "auth_registration" (
	"id" INT,
	"activation_key" VARCHAR,
	"user_id" INT,
	"activation_timestamp" DATETIME,
	 PRIMARY KEY ("id")
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

CREATE TABLE "wiki_article" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"group_read" TINYINT,
	"group_write" TINYINT,
	"other_read" TINYINT,
	"other_write" TINYINT,
	"current_revision_id" INT,
	"group_id" INT,
	"owner_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_article_group_id_bf035c83_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "wiki_article_owner_id_956bc94a_fk_auth_user_id" FOREIGN KEY ("owner_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "wiki_urlpath" (
	"id" INT,
	"slug" VARCHAR,
	"lft" INT,
	"rght" INT,
	"tree_id" INT,
	"level" INT,
	"article_id" INT,
	"parent_id" INT,
	"site_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_urlpath_parent_id_a6e675ac_fk_wiki_urlpath_id" FOREIGN KEY ("parent_id") REFERENCES "wiki_urlpath" ("id"),
	 CONSTRAINT "wiki_urlpath_site_id_319be912_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site" ("id"),
	 CONSTRAINT "wiki_urlpath_article_id_9ef0c0fb_fk_wiki_article_id" FOREIGN KEY ("article_id") REFERENCES "wiki_article" ("id")
);

CREATE TABLE "wiki_articlerevision" (
	"id" INT,
	"revision_number" INT,
	"user_message" LONGTEXT,
	"automatic_log" LONGTEXT,
	"ip_address" CHAR,
	"modified" DATETIME,
	"created" DATETIME,
	"deleted" TINYINT,
	"locked" TINYINT,
	"content" LONGTEXT,
	"title" VARCHAR,
	"article_id" INT,
	"previous_revision_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_articlerevision_user_id_c687e4de_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "wiki_articlerevision_previous_revision_id_bcfaf4c9_fk_wiki_arti" FOREIGN KEY ("previous_revision_id") REFERENCES "wiki_articlerevision" ("id"),
	 CONSTRAINT "wiki_articlerevision_article_id_e0fb2474_fk_wiki_article_id" FOREIGN KEY ("article_id") REFERENCES "wiki_article" ("id")
);

CREATE TABLE "wiki_articleplugin" (
	"id" INT,
	"deleted" TINYINT,
	"created" DATETIME,
	"article_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_articleplugin_article_id_9ab0e854_fk_wiki_article_id" FOREIGN KEY ("article_id") REFERENCES "wiki_article" ("id")
);

CREATE TABLE "wiki_simpleplugin" (
	"articleplugin_ptr_id" INT,
	"article_revision_id" INT,
	 PRIMARY KEY ("articleplugin_ptr_id"),
	 CONSTRAINT "wiki_simpleplugin_articleplugin_ptr_id_2b99b828_fk_wiki_arti" FOREIGN KEY ("articleplugin_ptr_id") REFERENCES "wiki_articleplugin" ("id"),
	 CONSTRAINT "wiki_simpleplugin_article_revision_id_cff7df92_fk_wiki_arti" FOREIGN KEY ("article_revision_id") REFERENCES "wiki_articlerevision" ("id")
);

CREATE TABLE "wiki_revisionplugin" (
	"articleplugin_ptr_id" INT,
	"current_revision_id" INT,
	 PRIMARY KEY ("articleplugin_ptr_id"),
	 CONSTRAINT "wiki_revisionplugin_articleplugin_ptr_id_95c295f2_fk_wiki_arti" FOREIGN KEY ("articleplugin_ptr_id") REFERENCES "wiki_articleplugin" ("id")
);

CREATE TABLE "wiki_revisionpluginrevision" (
	"id" INT,
	"revision_number" INT,
	"user_message" LONGTEXT,
	"automatic_log" LONGTEXT,
	"ip_address" CHAR,
	"modified" DATETIME,
	"created" DATETIME,
	"deleted" TINYINT,
	"locked" TINYINT,
	"plugin_id" INT,
	"previous_revision_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_revisionpluginr_plugin_id_c8f4475b_fk_wiki_revi" FOREIGN KEY ("plugin_id") REFERENCES "wiki_revisionplugin" ("articleplugin_ptr_id"),
	 CONSTRAINT "wiki_revisionpluginrevision_user_id_ee40f729_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "wiki_revisionpluginr_previous_revision_id_38c877c0_fk_wiki_revi" FOREIGN KEY ("previous_revision_id") REFERENCES "wiki_revisionpluginrevision" ("id")
);

CREATE TABLE "wiki_reusableplugin" (
	"articleplugin_ptr_id" INT,
	 PRIMARY KEY ("articleplugin_ptr_id"),
	 CONSTRAINT "wiki_reusableplugin_articleplugin_ptr_id_c1737239_fk_wiki_arti" FOREIGN KEY ("articleplugin_ptr_id") REFERENCES "wiki_articleplugin" ("id")
);

CREATE TABLE "wiki_reusableplugin_articles" (
	"id" INT,
	"reusableplugin_id" INT,
	"article_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_reusableplugin__article_id_8a09d39e_fk_wiki_arti" FOREIGN KEY ("article_id") REFERENCES "wiki_article" ("id"),
	 CONSTRAINT "wiki_reusableplugin__reusableplugin_id_52618a1c_fk_wiki_reus" FOREIGN KEY ("reusableplugin_id") REFERENCES "wiki_reusableplugin" ("articleplugin_ptr_id")
);

CREATE TABLE "wiki_articleforobject" (
	"id" INT,
	"object_id" INT,
	"is_mptt" TINYINT,
	"article_id" INT,
	"content_type_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "wiki_articleforobjec_content_type_id_ba569059_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id"),
	 CONSTRAINT "wiki_articleforobject_article_id_7d67d809_fk_wiki_article_id" FOREIGN KEY ("article_id") REFERENCES "wiki_article" ("id")
);

CREATE TABLE "waffle_flag_groups" (
	"id" INT,
	"flag_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "waffle_flag_groups_group_id_a97c4f66_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "waffle_flag_groups_flag_id_c11c0c05_fk_waffle_flag_id" FOREIGN KEY ("flag_id") REFERENCES "waffle_flag" ("id")
);

CREATE TABLE "content_libraries_contentlibrarypermission" (
	"id" INT,
	"access_level" VARCHAR,
	"library_id" INT,
	"user_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "content_libraries_co_group_id_c2a4b6a1_fk_auth_grou" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "content_libraries_co_user_id_b071c54d_fk_auth_user" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "content_libraries_co_library_id_51247096_fk_content_l" FOREIGN KEY ("library_id") REFERENCES "content_libraries_contentlibrary" ("id")
);

CREATE TABLE "auth_user_groups" (
	"id" INT,
	"user_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "auth_group_permissions" (
	"id" INT,
	"group_id" INT,
	"permission_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id")
);

CREATE TABLE "auth_accountrecovery" (
	"id" INT,
	"secondary_email" VARCHAR,
	"user_id" INT,
	"is_active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_studenttrainingworkflow" (
	"id" INT,
	"submission_uuid" VARCHAR,
	"student_id" VARCHAR,
	"item_id" VARCHAR,
	"course_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_studenttrainingworkflowitem" (
	"id" INT,
	"order_num" INT,
	"started_at" DATETIME,
	"completed_at" DATETIME,
	"training_example_id" INT,
	"workflow_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_studenttr_workflow_id_a75a9a2e_fk_assessmen" FOREIGN KEY ("workflow_id") REFERENCES "assessment_studenttrainingworkflow" ("id")
);

CREATE TABLE "assessment_staffworkflow" (
	"id" INT,
	"scorer_id" VARCHAR,
	"course_id" VARCHAR,
	"item_id" VARCHAR,
	"submission_uuid" VARCHAR,
	"created_at" DATETIME,
	"grading_completed_at" DATETIME,
	"grading_started_at" DATETIME,
	"cancelled_at" DATETIME,
	"assessment" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_teamstaffworkflow" (
	"staffworkflow_ptr_id" INT,
	"team_submission_uuid" VARCHAR,
	 PRIMARY KEY ("staffworkflow_ptr_id"),
	 CONSTRAINT "assessment_teamstaff_staffworkflow_ptr_id_e55a780c_fk_assessmen" FOREIGN KEY ("staffworkflow_ptr_id") REFERENCES "assessment_staffworkflow" ("id")
);

CREATE TABLE "assessment_sharedfileupload" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"team_id" VARCHAR,
	"course_id" VARCHAR,
	"item_id" VARCHAR,
	"owner_id" VARCHAR,
	"file_key" VARCHAR,
	"description" LONGTEXT,
	"size" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_rubric" (
	"id" INT,
	"content_hash" VARCHAR,
	"structure_hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_trainingexample" (
	"id" INT,
	"raw_answer" LONGTEXT,
	"content_hash" VARCHAR,
	"rubric_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_traininge_rubric_id_cfb4afc3_fk_assessmen" FOREIGN KEY ("rubric_id") REFERENCES "assessment_rubric" ("id")
);

CREATE TABLE "assessment_peerworkflow" (
	"id" INT,
	"student_id" VARCHAR,
	"item_id" VARCHAR,
	"course_id" VARCHAR,
	"submission_uuid" VARCHAR,
	"created_at" DATETIME,
	"completed_at" DATETIME,
	"grading_completed_at" DATETIME,
	"cancelled_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_historicalsharedfileupload" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"team_id" VARCHAR,
	"course_id" VARCHAR,
	"item_id" VARCHAR,
	"owner_id" VARCHAR,
	"file_key" VARCHAR,
	"description" LONGTEXT,
	"size" BIGINT,
	"history_id" INT,
	"history_date" DATETIME,
	"history_change_reason" VARCHAR,
	"history_type" VARCHAR,
	"history_user_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("history_id")
);

CREATE TABLE "assessment_criterion" (
	"id" INT,
	"name" VARCHAR,
	"label" VARCHAR,
	"order_num" INT,
	"prompt" LONGTEXT,
	"rubric_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_criterionoption" (
	"id" INT,
	"order_num" INT,
	"points" INT,
	"name" VARCHAR,
	"label" VARCHAR,
	"explanation" LONGTEXT,
	"criterion_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_criterion_criterion_id_53928be7_fk_assessmen" FOREIGN KEY ("criterion_id") REFERENCES "assessment_criterion" ("id")
);

CREATE TABLE "assessment_trainingexample_options_selected" (
	"id" INT,
	"trainingexample_id" INT,
	"criterionoption_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_traininge_criterionoption_id_de6716f1_fk_assessmen" FOREIGN KEY ("criterionoption_id") REFERENCES "assessment_criterionoption" ("id"),
	 CONSTRAINT "assessment_traininge_trainingexample_id_7a04b572_fk_assessmen" FOREIGN KEY ("trainingexample_id") REFERENCES "assessment_trainingexample" ("id")
);

CREATE TABLE "assessment_assessmentfeedbackoption" (
	"id" INT,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_assessmentfeedback" (
	"id" INT,
	"submission_uuid" VARCHAR,
	"feedback_text" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_assessmentfeedback_options" (
	"id" INT,
	"assessmentfeedback_id" INT,
	"assessmentfeedbackoption_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_assessmen_assessmentfeedback_i_004e1bf0_fk_assessmen" FOREIGN KEY ("assessmentfeedback_id") REFERENCES "assessment_assessmentfeedback" ("id")
);

CREATE TABLE "assessment_assessment" (
	"id" INT,
	"submission_uuid" VARCHAR,
	"scored_at" DATETIME,
	"scorer_id" VARCHAR,
	"score_type" VARCHAR,
	"feedback" LONGTEXT,
	"rubric_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assessment_peerworkflowitem" (
	"id" INT,
	"submission_uuid" VARCHAR,
	"started_at" DATETIME,
	"scored" TINYINT,
	"assessment_id" INT,
	"author_id" INT,
	"scorer_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_peerworkf_assessment_id_27f9ef1f_fk_assessmen" FOREIGN KEY ("assessment_id") REFERENCES "assessment_assessment" ("id"),
	 CONSTRAINT "assessment_peerworkf_author_id_0e3ed804_fk_assessmen" FOREIGN KEY ("author_id") REFERENCES "assessment_peerworkflow" ("id"),
	 CONSTRAINT "assessment_peerworkf_scorer_id_27e47cd4_fk_assessmen" FOREIGN KEY ("scorer_id") REFERENCES "assessment_peerworkflow" ("id")
);

CREATE TABLE "assessment_assessmentpart" (
	"id" INT,
	"feedback" LONGTEXT,
	"assessment_id" INT,
	"criterion_id" INT,
	"option_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_assessmen_assessment_id_de1999cd_fk_assessmen" FOREIGN KEY ("assessment_id") REFERENCES "assessment_assessment" ("id")
);

CREATE TABLE "assessment_assessmentfeedback_assessments" (
	"id" INT,
	"assessmentfeedback_id" INT,
	"assessment_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "assessment_assessmen_assessment_id_033f1121_fk_assessmen" FOREIGN KEY ("assessment_id") REFERENCES "assessment_assessment" ("id"),
	 CONSTRAINT "assessment_assessmen_assessmentfeedback_i_6634a3b4_fk_assessmen" FOREIGN KEY ("assessmentfeedback_id") REFERENCES "assessment_assessmentfeedback" ("id")
);

CREATE TABLE "api_admin_apiaccessrequest" (
	"id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	"status" VARCHAR,
	"website" VARCHAR,
	"reason" LONGTEXT,
	"user_id" INT,
	"company_address" VARCHAR,
	"company_name" VARCHAR,
	"contacted" TINYINT,
	"site_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "api_admin_apiaccessconfig" (
	"id" INT,
	"change_date" DATETIME,
	"enabled" TINYINT,
	"changed_by_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "announcements_announcement" (
	"id" INT,
	"content" VARCHAR,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);
