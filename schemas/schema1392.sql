DROP DATABASE IF EXISTS "schema1392";
CREATE DATABASE "schema1392";
USE "schema1392";
CREATE TABLE "zvalues" (
	"id" BIGINT,
	"class" VARCHAR,
	"atm_pressure" VARCHAR,
	"temperature" VARCHAR,
	"z_value" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "vouchers" (
	"id" BIGINT,
	"customize_id" VARCHAR,
	"v_date" DATE,
	"v_type" VARCHAR,
	"created_by" INT,
	"updated_by" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "voucherdetails" (
	"id" BIGINT,
	"v_id" INT,
	"acc_code" VARCHAR,
	"narration" LONGTEXT,
	"dr" DOUBLE,
	"cr" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "volumeentries" (
	"id" BIGINT,
	"parent_id" INT,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"y1" VARCHAR,
	"y2" VARCHAR,
	"y3" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"uuc" VARCHAR,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "vernierentries" (
	"id" BIGINT,
	"parent_id" VARCHAR,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"ref" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" BIGINT,
	"user_type" INT,
	"designation" INT,
	"department" INT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"father_name" VARCHAR,
	"cv" VARCHAR,
	"profile" VARCHAR,
	"phone" VARCHAR,
	"cnic" VARCHAR,
	"address" LONGTEXT,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"dob" DATE,
	"joining" DATE,
	"signature" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "units" (
	"id" BIGINT,
	"parameter" INT,
	"unit" VARCHAR,
	"primary_" INT,
	"factor_multiply" VARCHAR,
	"factor_add" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "uncertainties" (
	"id" BIGINT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"formula" VARCHAR,
	"coefficient_of_sensitivity" INT,
	"distribution" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "suggestions" (
	"id" BIGINT,
	"capabilities" INT,
	"parameter" INT,
	"optional_assets" VARCHAR
);

CREATE TABLE "spectrophotometerentries" (
	"id" BIGINT,
	"parent_id" VARCHAR,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"uuc_wavelength" VARCHAR,
	"filtertype" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sops" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" VARCHAR,
	"issue_no" VARCHAR,
	"rev_no" VARCHAR,
	"doc_no" VARCHAR,
	"file" VARCHAR,
	"issue" DATE,
	"reviewed_on" DATE,
	"reviewed_by" INT,
	"status" INT,
	"location" VARCHAR,
	"mode_of_storage" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"permissions" LONGTEXT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "requisitions" (
	"id" BIGINT,
	"requisition_designation" INT,
	"reason" LONGTEXT,
	"qualification" VARCHAR,
	"special_skills" VARCHAR,
	"initiated_by" INT,
	"time_frame" VARCHAR,
	"hrd_review" VARCHAR,
	"approved_by" INT,
	"remarks" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "receiving_ledgers" (
	"id" BIGINT,
	"invoice_id" INT,
	"payment_way" VARCHAR,
	"name" VARCHAR,
	"amount" VARCHAR,
	"number" VARCHAR,
	"date" DATE,
	"remarks" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "quotes" (
	"id" BIGINT,
	"customer_id" INT,
	"type" VARCHAR,
	"rfq_mode" VARCHAR,
	"rfq_mode_details" VARCHAR,
	"approval_mode" VARCHAR,
	"approval_mode_details" VARCHAR,
	"approval_date" DATE,
	"status" INT,
	"turnaround" VARCHAR,
	"remarks" VARCHAR,
	"reminder" INT,
	"tm" INT,
	"principal" VARCHAR,
	"revision" INT,
	"sendtocustomer_date" DATE,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "quoterevisionlogs" (
	"id" BIGINT,
	"quote_id" INT,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchaseindents" (
	"id" BIGINT,
	"location" VARCHAR,
	"department" INT,
	"indent_by" INT,
	"checked_by" INT,
	"approved_by" INT,
	"indent_type" VARCHAR,
	"deliver_to" VARCHAR,
	"status" INT,
	"required" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchaseindentitems" (
	"id" BIGINT,
	"indent_id" INT,
	"item_code" VARCHAR,
	"item_description" VARCHAR,
	"ref_code" VARCHAR,
	"unit" VARCHAR,
	"last_six_months_consumption" VARCHAR,
	"current_stock" VARCHAR,
	"qty" VARCHAR,
	"purpose" VARCHAR,
	"title" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "procedures" (
	"id" BIGINT,
	"name" VARCHAR,
	"uncertainties" LONGTEXT,
	"description" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "preventivemaintenancerecords" (
	"id" BIGINT,
	"asset_id" INT,
	"checked" VARCHAR,
	"unchecked" VARCHAR,
	"breakdown_description" LONGTEXT,
	"corrective_description" LONGTEXT,
	"performed_by" INT,
	"lab_in_charge" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "preventivechecklists" (
	"id" BIGINT,
	"group_id" INT,
	"tasktodo" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "preferences" (
	"id" BIGINT,
	"category" VARCHAR,
	"name" VARCHAR,
	"slug" VARCHAR,
	"value" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "permissions" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "parameters" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "notifications" (
	"id" CHAR,
	"type" VARCHAR,
	"notifiable_type" VARCHAR,
	"notifiable_id" BIGINT,
	"data" TEXT,
	"read_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "nofacilities" (
	"id" BIGINT,
	"capability" VARCHAR,
	"item_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "micrometer_entries" (
	"id" BIGINT,
	"parent_id" VARCHAR,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"ref" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "menus" (
	"id" BIGINT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"icon" VARCHAR,
	"status" INT,
	"url" VARCHAR,
	"position" INT,
	"parent_id" VARCHAR,
	"has_child" INT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "materialreceivings" (
	"id" BIGINT,
	"purchase_indent_item_id" VARCHAR,
	"received_from" VARCHAR,
	"purchase_type" VARCHAR,
	"physical_check" INT,
	"meet_specifications" INT,
	"unit" VARCHAR,
	"qty" INT,
	"specifications" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "massreferences" (
	"id" BIGINT,
	"parent_id" INT,
	"density" VARCHAR,
	"expanded_uncertainty" VARCHAR,
	"volume" VARCHAR,
	"gradient_temp" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "managereferences" (
	"id" BIGINT,
	"parameter" INT,
	"asset" INT,
	"unit" INT,
	"uuc" VARCHAR,
	"ref" VARCHAR,
	"error" VARCHAR,
	"uncertainty" VARCHAR,
	"channel" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ligentries" (
	"id" BIGINT,
	"parent_id" INT,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"uuc" VARCHAR,
	"noofdiv" VARCHAR,
	"k_value" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "leave_applications" (
	"id" BIGINT,
	"appraisal_id" INT,
	"nature_of_leave" VARCHAR,
	"type_of_leave" INT,
	"type_time" INT,
	"from" DATE,
	"to" DATE,
	"reason" VARCHAR,
	"address_contact" VARCHAR,
	"head_id" INT,
	"head_recommendation_status" INT,
	"head_recommendation_date" DATE,
	"head_remarks" VARCHAR,
	"ceo_id" INT,
	"ceo_recommendation_status" INT,
	"ceo_recommendation_date" DATE,
	"ceo_remarks" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "journals" (
	"id" BIGINT,
	"customize_id" VARCHAR,
	"date" DATE,
	"reference" VARCHAR,
	"reference_id" INT,
	"type" VARCHAR,
	"created_by" INT,
	"updated_by" INT,
	"acc_code" VARCHAR,
	"narration" LONGTEXT,
	"dr" INT,
	"cr" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"quote_id" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "jobitems" (
	"id" BIGINT,
	"type" INT,
	"job_id" INT,
	"item_id" INT,
	"eq_id" VARCHAR,
	"serial" VARCHAR,
	"resolution" VARCHAR,
	"accuracy" VARCHAR,
	"range" VARCHAR,
	"model" VARCHAR,
	"make" VARCHAR,
	"accessories" VARCHAR,
	"visual_inspection" VARCHAR,
	"status" INT,
	"start" DATE,
	"end" DATE,
	"started_at" DATETIME,
	"ended_at" DATETIME,
	"assign_user" INT,
	"assign_assets" VARCHAR,
	"group_users" VARCHAR,
	"group_assets" VARCHAR,
	"certificate" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "items" (
	"id" BIGINT,
	"quote_id" INT,
	"status" INT,
	"parameter" INT,
	"capability" INT,
	"not_available" VARCHAR,
	"location" VARCHAR,
	"accredited" VARCHAR,
	"range" VARCHAR,
	"price" INT,
	"quantity" INT,
	"rf_checks" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "invoicing_ledgers" (
	"id" BIGINT,
	"job_id" VARCHAR,
	"customer_id" INT,
	"service_charges" INT,
	"service_tax_type" VARCHAR,
	"service_tax_percent" VARCHAR,
	"service_tax_amount" INT,
	"income_tax_percent" INT,
	"income_tax_amount" INT,
	"service_tax_deducted" VARCHAR,
	"income_tax_deducted" VARCHAR,
	"net_receivable" INT,
	"srb_type" INT,
	"confirmed_by_name" VARCHAR,
	"confirmed_by_phone" VARCHAR,
	"invoice" DATE,
	"invoice_no" VARCHAR,
	"created_by" INT,
	"updated_by" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "inventorycategories" (
	"id" BIGINT,
	"category_name" VARCHAR,
	"status" VARCHAR,
	"user_id" INT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "inventories_quantity" (
	"id" BIGINT,
	"inventory_id" INT,
	"serial_no" VARCHAR,
	"quantity_type" VARCHAR,
	"user_id" INT,
	"status" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "inventories" (
	"id" BIGINT,
	"title" VARCHAR,
	"category_id" INT,
	"department_id" INT,
	"status" VARCHAR,
	"consumable" VARCHAR,
	"price" VARCHAR,
	"model" VARCHAR,
	"description" VARCHAR,
	"user_id" INT,
	"depreciation" INT,
	"depreciation_times" INT,
	"depreciation_max" INT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "interviewappraisals" (
	"id" BIGINT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"age" INT,
	"basic_qualification" VARCHAR,
	"basic_qualification_duration" INT,
	"highest_qualification" VARCHAR,
	"highest_qualification_duration" INT,
	"bu_for_candidate" VARCHAR,
	"relevant_experience" VARCHAR,
	"total_experience" VARCHAR,
	"last_salary" VARCHAR,
	"desired_salary" VARCHAR,
	"personal_traits" LONGTEXT,
	"suitable_for_other_department" INT,
	"evaluator" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "intermediatechecksofassets" (
	"id" BIGINT,
	"equipment_under_test_id" INT,
	"check_reference_id" INT,
	"reference_value" VARCHAR,
	"measured_value" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "incubatormappings" (
	"id" BIGINT,
	"parent_id" INT,
	"time_interval" VARCHAR,
	"channel_1" VARCHAR,
	"channel_2" VARCHAR,
	"channel_3" VARCHAR,
	"channel_4" VARCHAR,
	"channel_5" VARCHAR,
	"channel_6" VARCHAR,
	"channel_7" VARCHAR,
	"channel_8" VARCHAR,
	"channel_9" VARCHAR,
	"channel_10" VARCHAR,
	"uuc_reading" VARCHAR,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "incubatordataentries" (
	"id" BIGINT,
	"parent_id" INT,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"set_value" VARCHAR,
	"uuc_indication" VARCHAR,
	"data" VARCHAR,
	"channel" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "generaldataentries" (
	"id" BIGINT,
	"parent_id" INT,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"x4" VARCHAR,
	"x5" VARCHAR,
	"x6" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"fixed_value" VARCHAR,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "formsandformats" (
	"id" BIGINT,
	"name" VARCHAR,
	"sops" VARCHAR,
	"parent_id" VARCHAR,
	"doc_no" VARCHAR,
	"rev_no" VARCHAR,
	"issue_no" VARCHAR,
	"file" VARCHAR,
	"issue" DATE,
	"reviewed_on" DATE,
	"reviewed_by" INT,
	"status" INT,
	"location" VARCHAR,
	"mode_of_storage" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
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

CREATE TABLE "empcontracts" (
	"id" BIGINT,
	"appraisal_id" INT,
	"termination_period" VARCHAR,
	"probation_applicable" INT,
	"probation_period" VARCHAR,
	"designations" INT,
	"place_of_work" VARCHAR,
	"salary" INT,
	"allowances" VARCHAR,
	"cnic" VARCHAR,
	"representative" INT,
	"commencement" DATE,
	"status" INT,
	"signature" VARCHAR,
	"hr_user_id" INT,
	"joining" DATE,
	"o_area" LONGTEXT,
	"remarks" VARCHAR,
	"orientator" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "dialgauge_entries" (
	"id" BIGINT,
	"parent_id" VARCHAR,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"ref" VARCHAR,
	"asset_id" INT,
	"unit" INT,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "designations" (
	"id" INT,
	"department_id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "departments" (
	"id" BIGINT,
	"name" VARCHAR,
	"head" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "customers" (
	"id" BIGINT,
	"reg_name" VARCHAR,
	"ntn" VARCHAR,
	"region" VARCHAR,
	"address" VARCHAR,
	"credit_limit" INT,
	"customer_type" VARCHAR,
	"pay_terms" VARCHAR,
	"prin_name" VARCHAR,
	"prin_phone" VARCHAR,
	"prin_email" VARCHAR,
	"pur_name" VARCHAR,
	"pur_phone" VARCHAR,
	"pur_email" VARCHAR,
	"acc_name" VARCHAR,
	"acc_phone" VARCHAR,
	"acc_email" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "columns" (
	"id" BIGINT,
	"assets" VARCHAR,
	"column" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "clauses" (
	"id" BIGINT,
	"sop_id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "capabilities" (
	"id" BIGINT,
	"name" VARCHAR,
	"parameter" INT,
	"procedure" INT,
	"calculator" VARCHAR,
	"range" VARCHAR,
	"price" INT,
	"accuracy" VARCHAR,
	"unit" VARCHAR,
	"remarks" VARCHAR,
	"location" VARCHAR,
	"accredited" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "calculatorentries" (
	"id" BIGINT,
	"job_type_id" INT,
	"asset_id" INT,
	"start_temp" VARCHAR,
	"end_temp" VARCHAR,
	"start_humidity" VARCHAR,
	"end_humidity" VARCHAR,
	"location" VARCHAR,
	"fixed_type" VARCHAR,
	"before_offset" VARCHAR,
	"after_offset" VARCHAR,
	"start_atmospheric_pressure" VARCHAR,
	"end_atmospheric_pressure" VARCHAR,
	"pan_position" VARCHAR,
	"repeatability" VARCHAR,
	"uuc_temp" VARCHAR,
	"ref_temp" VARCHAR,
	"calibrated_by" INT,
	"tolerance" VARCHAR,
	"class" VARCHAR,
	"balance_id" VARCHAR,
	"balance_values" VARCHAR,
	"temp_id" VARCHAR,
	"temp_values" VARCHAR,
	"noise" VARCHAR,
	"reproducibility" VARCHAR,
	"stability" VARCHAR,
	"baseline" VARCHAR,
	"anti_parallelism" VARCHAR,
	"zero_error" VARCHAR,
	"measuring_faces" VARCHAR,
	"uuc_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "balancedataentries" (
	"id" BIGINT,
	"parent_id" INT,
	"x1" VARCHAR,
	"x2" VARCHAR,
	"x3" VARCHAR,
	"x4" VARCHAR,
	"nominal_mass" VARCHAR,
	"data" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "attendances" (
	"id" BIGINT,
	"user_id" INT,
	"check_in_date" DATE,
	"check_out_date" DATE,
	"check_in" TIME,
	"check_out" TIME,
	"day" VARCHAR,
	"status" INT,
	"leave_id" INT,
	"remarks" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "assetspecifications" (
	"id" BIGINT,
	"asset_id" VARCHAR,
	"column" INT,
	"value" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "assets" (
	"id" BIGINT,
	"name" VARCHAR,
	"code" VARCHAR,
	"parameter" INT,
	"group_id" INT,
	"make" VARCHAR,
	"model" VARCHAR,
	"range" VARCHAR,
	"resolution" VARCHAR,
	"status" INT,
	"accuracy" VARCHAR,
	"certificate_no" VARCHAR,
	"serial_no" VARCHAR,
	"traceability" VARCHAR,
	"location" VARCHAR,
	"image" VARCHAR,
	"due" DATE,
	"calibration_interval" INT,
	"commissioned" DATE,
	"calibration" DATE,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "assetgroups" (
	"id" BIGINT,
	"parameter" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "activity_log" (
	"id" BIGINT,
	"log_name" VARCHAR,
	"description" TEXT,
	"subject_type" VARCHAR,
	"subject_id" BIGINT,
	"causer_type" VARCHAR,
	"causer_id" BIGINT,
	"properties" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "acc_level_twos" (
	"id" BIGINT,
	"code1" INT,
	"code2" CHAR,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "acc_level_threes" (
	"id" BIGINT,
	"code1" INT,
	"code2" INT,
	"code3" CHAR,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "acc_level_ones" (
	"id" BIGINT,
	"code1" CHAR,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "acc_level_fours" (
	"id" BIGINT,
	"code1" INT,
	"code2" INT,
	"code3" INT,
	"code4" CHAR,
	"acc_code" CHAR,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
