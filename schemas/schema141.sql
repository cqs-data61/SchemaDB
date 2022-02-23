DROP DATABASE IF EXISTS "schema141";
CREATE DATABASE "schema141";
USE "schema141";
CREATE TABLE "topic" (
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "testplan_instance" (
	"id" INTEGER,
	"path" VARCHAR,
	"name" VARCHAR,
	"evaluated_testplan" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME
);

CREATE TABLE "suite" (
	"id" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"description" TEXT
);

CREATE TABLE "report" (
	"id" INTEGER,
	"suite_id" INT,
	"suite_version" VARCHAR,
	"reportername" VARCHAR,
	"peeraddr" VARCHAR,
	"peerport" VARCHAR,
	"peerhost" VARCHAR,
	"successgrade" VARCHAR,
	"reviewed_successgrade" VARCHAR,
	"total" INT,
	"failed" INT,
	"parse_errors" INT,
	"passed" INT,
	"skipped" INT,
	"todo" INT,
	"todo_passed" INT,
	"success_ratio" VARCHAR,
	"starttime_test_program" DATETIME,
	"endtime_test_program" DATETIME,
	"machine_name" VARCHAR,
	"machine_description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_report_to_suite" FOREIGN KEY ("suite_id") REFERENCES "suite" ("id")
);

CREATE TABLE "tap" (
	"id" INTEGER,
	"report_id" INT,
	"tap" LONGBLOB,
	"tap_is_archive" INT,
	"tapdom" LONGBLOB,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_tap_to_report" FOREIGN KEY ("report_id") REFERENCES "report" ("id")
);

CREATE TABLE "reporttopic" (
	"id" INTEGER,
	"report_id" INT,
	"name" VARCHAR,
	"details" TEXT,
	 CONSTRAINT "fkeycon_reporttopic_to_report" FOREIGN KEY ("report_id") REFERENCES "report" ("id")
);

CREATE TABLE "reportgrouptestrun" (
	"testrun_id" INT,
	"report_id" INT,
	"primaryreport" INT,
	"owner" VARCHAR,
	 PRIMARY KEY ("testrun_id","report_id"),
	 CONSTRAINT "fkeycon_reportgrouptestrun_to_report" FOREIGN KEY ("report_id") REFERENCES "report" ("id")
);

CREATE TABLE "reportgrouparbitrary" (
	"arbitrary_id" VARCHAR,
	"report_id" INT,
	"primaryreport" INT,
	"owner" VARCHAR,
	 PRIMARY KEY ("arbitrary_id","report_id"),
	 CONSTRAINT "fkeycon_reportgrouparbitrary_to_report" FOREIGN KEY ("report_id") REFERENCES "report" ("id")
);

CREATE TABLE "reportfile" (
	"id" INTEGER,
	"report_id" INT,
	"filename" VARCHAR,
	"contenttype" VARCHAR,
	"filecontent" LONGBLOB,
	"is_compressed" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_reportfile_to_report" FOREIGN KEY ("report_id") REFERENCES "report" ("id")
);

CREATE TABLE "scenario" (
	"id" INTEGER,
	"type" VARCHAR,
	"options" TEXT,
	"name" VARCHAR
);

CREATE TABLE "reportsection" (
	"id" INTEGER,
	"report_id" INT,
	"succession" INT,
	"name" VARCHAR,
	"osname" VARCHAR,
	"uname" VARCHAR,
	"flags" VARCHAR,
	"changeset" VARCHAR,
	"kernel" VARCHAR,
	"description" VARCHAR,
	"language_description" TEXT,
	"cpuinfo" TEXT,
	"bios" TEXT,
	"ram" VARCHAR,
	"uptime" VARCHAR,
	"lspci" TEXT,
	"lsusb" TEXT,
	"ticket_url" VARCHAR,
	"wiki_url" VARCHAR,
	"planning_id" VARCHAR,
	"moreinfo_url" VARCHAR,
	"tags" VARCHAR,
	"xen_changeset" VARCHAR,
	"xen_hvbits" VARCHAR,
	"xen_dom0_kernel" TEXT,
	"xen_base_os_description" TEXT,
	"xen_guest_description" TEXT,
	"xen_guest_flags" VARCHAR,
	"xen_version" VARCHAR,
	"xen_guest_test" VARCHAR,
	"xen_guest_start" VARCHAR,
	"kvm_kernel" TEXT,
	"kvm_base_os_description" TEXT,
	"kvm_guest_description" TEXT,
	"kvm_module_version" VARCHAR,
	"kvm_userspace_version" VARCHAR,
	"kvm_guest_flags" VARCHAR,
	"kvm_guest_test" VARCHAR,
	"kvm_guest_start" VARCHAR,
	"simnow_svn_version" VARCHAR,
	"simnow_version" VARCHAR,
	"simnow_svn_repository" VARCHAR,
	"simnow_device_interface_version" VARCHAR,
	"simnow_bsd_file" VARCHAR,
	"simnow_image_file" VARCHAR
);

CREATE TABLE "reportgrouptestrunstats" (
	"testrun_id" INTEGER,
	"total" INT,
	"failed" INT,
	"passed" INT,
	"parse_errors" INT,
	"skipped" INT,
	"todo" INT,
	"todo_passed" INT,
	"success_ratio" VARCHAR
);

CREATE TABLE "queue" (
	"id" INTEGER,
	"name" VARCHAR,
	"priority" INT,
	"runcount" INT,
	"active" INT,
	"is_deleted" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME
);

CREATE TABLE "preconditiontype" (
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "precondition" (
	"id" INTEGER,
	"shortname" VARCHAR,
	"precondition" TEXT,
	"timeout" INT
);

CREATE TABLE "pre_precondition" (
	"parent_precondition_id" INT,
	"child_precondition_id" INT,
	"succession" INT,
	 PRIMARY KEY ("parent_precondition_id","child_precondition_id"),
	 CONSTRAINT "fkeycon_pre_precondition_to_precondition" FOREIGN KEY ("parent_precondition_id") REFERENCES "precondition" ("id")
);

CREATE TABLE "owner" (
	"id" INTEGER,
	"name" VARCHAR,
	"login" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "reportcomment" (
	"id" INTEGER,
	"report_id" INT,
	"owner_id" INT,
	"succession" INT,
	"comment" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_reportcomment_to_report" FOREIGN KEY ("report_id") REFERENCES "report" ("id"),
	 CONSTRAINT "fkeycon_reportcomment_to_owner" FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "testrun" (
	"id" INTEGER,
	"shortname" VARCHAR,
	"notes" TEXT,
	"topic_name" VARCHAR,
	"starttime_earliest" TIMESTAMP,
	"starttime_testrun" TIMESTAMP,
	"starttime_test_program" TIMESTAMP,
	"endtime_test_program" TIMESTAMP,
	"owner_id" INT,
	"testplan_id" INT,
	"wait_after_tests" TINYINT,
	"rerun_on_error" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_testrun_to_testplan_instance" FOREIGN KEY ("testplan_id") REFERENCES "testplan_instance" ("id"),
	 CONSTRAINT "fkeycon_testrun_to_owner" FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "testrun_precondition" (
	"testrun_id" INT,
	"precondition_id" INT,
	"succession" INT,
	 PRIMARY KEY ("testrun_id","precondition_id"),
	 CONSTRAINT "fkeycon_testrun_precondition_to_precondition" FOREIGN KEY ("precondition_id") REFERENCES "precondition" ("id"),
	 CONSTRAINT "fkeycon_testrun_precondition_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id")
);

CREATE TABLE "scenario_element" (
	"id" INTEGER,
	"testrun_id" INT,
	"scenario_id" INT,
	"is_fitted" INT,
	 CONSTRAINT "fkeycon_scenario_element_to_scenario" FOREIGN KEY ("scenario_id") REFERENCES "scenario" ("id"),
	 CONSTRAINT "fkeycon_scenario_element_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id")
);

CREATE TABLE "testrun_requested_feature" (
	"id" INTEGER,
	"testrun_id" INT,
	"feature" VARCHAR,
	 CONSTRAINT "fkeycon_testrun_requested_feature_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id")
);

CREATE TABLE "state" (
	"id" INTEGER,
	"testrun_id" INT,
	"state" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_state_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id")
);

CREATE TABLE "message" (
	"id" INTEGER,
	"testrun_id" INT,
	"message" VARCHAR,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_message_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id")
);

CREATE TABLE "notification" (
	"id" INTEGER,
	"owner_id" INT,
	"persist" INT,
	"event" VARCHAR,
	"filter" TEXT,
	"comment" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_notification_to_owner" FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "contact" (
	"id" INTEGER,
	"owner_id" INT,
	"address" VARCHAR,
	"protocol" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_contact_to_owner" FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "notification_event" (
	"id" INTEGER,
	"message" VARCHAR,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME
);

CREATE TABLE "host" (
	"id" INTEGER,
	"name" VARCHAR,
	"comment" VARCHAR,
	"free" TINYINT,
	"active" TINYINT,
	"is_deleted" TINYINT,
	"pool_free" INT,
	"pool_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_host_to_host" FOREIGN KEY ("pool_id") REFERENCES "host" ("id")
);

CREATE TABLE "testrun_scheduling" (
	"id" INTEGER,
	"testrun_id" INT,
	"queue_id" INT,
	"host_id" INT,
	"prioqueue_seq" INT,
	"status" VARCHAR,
	"auto_rerun" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_testrun_scheduling_to_host" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fkeycon_testrun_scheduling_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id"),
	 CONSTRAINT "fkeycon_testrun_scheduling_to_queue" FOREIGN KEY ("queue_id") REFERENCES "queue" ("id")
);

CREATE TABLE "testrun_requested_host" (
	"id" INTEGER,
	"testrun_id" INT,
	"host_id" INT,
	 CONSTRAINT "fkeycon_testrun_requested_host_to_testrun" FOREIGN KEY ("testrun_id") REFERENCES "testrun" ("id"),
	 CONSTRAINT "fkeycon_testrun_requested_host_to_host" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "queue_host" (
	"id" INTEGER,
	"queue_id" INT,
	"host_id" INT,
	 CONSTRAINT "fkeycon_queue_host_to_host" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fkeycon_queue_host_to_queue" FOREIGN KEY ("queue_id") REFERENCES "queue" ("id")
);

CREATE TABLE "denied_host" (
	"id" INTEGER,
	"queue_id" INT,
	"host_id" INT,
	 CONSTRAINT "fkeycon_denied_host_to_queue" FOREIGN KEY ("queue_id") REFERENCES "queue" ("id"),
	 CONSTRAINT "fkeycon_denied_host_to_host" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "host_feature" (
	"id" INTEGER,
	"host_id" INT,
	"entry" VARCHAR,
	"value" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" DATETIME,
	 CONSTRAINT "fkeycon_host_feature_to_host" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "charts" (
	"chart_id" INTEGER,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "chart_types" (
	"chart_type_id" INTEGER,
	"chart_type_name" VARCHAR,
	"chart_type_description" VARCHAR,
	"chart_type_flot_name" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "chart_tiny_urls" (
	"chart_tiny_url_id" INTEGER,
	"visit_count" INT,
	"last_visited" TIMESTAMP,
	"created_at" TIMESTAMP
);

CREATE TABLE "chart_tags" (
	"chart_tag_id" INTEGER,
	"chart_tag" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "chart_tag_relations" (
	"chart_id" INT,
	"chart_tag_id" SMALLINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("chart_id","chart_tag_id"),
	 CONSTRAINT "fkeycon_chart_tag_relations_to_chart_tags" FOREIGN KEY ("chart_tag_id") REFERENCES "chart_tags" ("chart_tag_id"),
	 CONSTRAINT "fkeycon_chart_tag_relations_to_charts" FOREIGN KEY ("chart_id") REFERENCES "charts" ("chart_id")
);

CREATE TABLE "chart_axis_types" (
	"chart_axis_type_id" INTEGER,
	"chart_axis_type_name" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "chart_versions" (
	"chart_version_id" INTEGER,
	"chart_id" INT,
	"chart_type_id" TINYINT,
	"chart_axis_type_x_id" TINYINT,
	"chart_axis_type_y_id" TINYINT,
	"chart_version" TINYINT,
	"chart_name" VARCHAR,
	"order_by_x_axis" TINYINT,
	"order_by_y_axis" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_chart_versions_to_chart_types" FOREIGN KEY ("chart_type_id") REFERENCES "chart_types" ("chart_type_id"),
	 CONSTRAINT "fkeycon_chart_versions_to_charts" FOREIGN KEY ("chart_id") REFERENCES "charts" ("chart_id"),
	 CONSTRAINT "fkeycon_chart_versions_to_chart_axis_types" FOREIGN KEY ("chart_axis_type_y_id") REFERENCES "chart_axis_types" ("chart_axis_type_id")
);

CREATE TABLE "chart_markings" (
	"chart_marking_id" INTEGER,
	"chart_version_id" INT,
	"chart_marking_name" VARCHAR,
	"chart_marking_color" CHAR,
	"chart_marking_x_from" VARCHAR,
	"chart_marking_x_to" VARCHAR,
	"chart_marking_x_format" VARCHAR,
	"chart_marking_y_from" VARCHAR,
	"chart_marking_y_to" VARCHAR,
	"chart_marking_y_format" VARCHAR,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_chart_markings_to_chart_versions" FOREIGN KEY ("chart_version_id") REFERENCES "chart_versions" ("chart_version_id")
);

CREATE TABLE "chart_lines" (
	"chart_line_id" INTEGER,
	"chart_version_id" INT,
	"chart_line_name" VARCHAR,
	"chart_axis_x_column_format" VARCHAR,
	"chart_axis_y_column_format" VARCHAR,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_chart_lines_to_chart_versions" FOREIGN KEY ("chart_version_id") REFERENCES "chart_versions" ("chart_version_id")
);

CREATE TABLE "chart_tiny_url_lines" (
	"chart_tiny_url_line_id" INTEGER,
	"chart_tiny_url_id" INT,
	"chart_line_id" INT,
	 CONSTRAINT "fkeycon_chart_tiny_url_lines_to_chart_tiny_urls" FOREIGN KEY ("chart_tiny_url_id") REFERENCES "chart_tiny_urls" ("chart_tiny_url_id"),
	 CONSTRAINT "fkeycon_chart_tiny_url_lines_to_chart_lines" FOREIGN KEY ("chart_line_id") REFERENCES "chart_lines" ("chart_line_id")
);

CREATE TABLE "chart_line_restrictions" (
	"chart_line_restriction_id" INTEGER,
	"chart_line_id" INT,
	"chart_line_restriction_operator" VARCHAR,
	"chart_line_restriction_column" VARCHAR,
	"is_template_restriction" TINYINT,
	"is_numeric_restriction" TINYINT,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_chart_line_restrictions_to_chart_lines" FOREIGN KEY ("chart_line_id") REFERENCES "chart_lines" ("chart_line_id")
);

CREATE TABLE "chart_line_restriction_values" (
	"chart_line_restriction_value_id" INTEGER,
	"chart_line_restriction_id" INT,
	"chart_line_restriction_value" VARCHAR,
	 CONSTRAINT "fkeycon_chart_line_restriction_values_to_chart_line_restrictions" FOREIGN KEY ("chart_line_restriction_id") REFERENCES "chart_line_restrictions" ("chart_line_restriction_id")
);

CREATE TABLE "chart_line_axis_elements" (
	"chart_line_axis_element_id" INTEGER,
	"chart_line_id" INT,
	"chart_line_axis" CHAR,
	"chart_line_axis_element_number" TINYINT,
	 CONSTRAINT "fkeycon_chart_line_axis_elements_to_chart_lines" FOREIGN KEY ("chart_line_id") REFERENCES "chart_lines" ("chart_line_id")
);

CREATE TABLE "chart_line_axis_separators" (
	"chart_line_axis_element_id" INTEGER,
	"chart_line_axis_separator" VARCHAR,
	 CONSTRAINT "fkeycon_chart_line_axis_separators_to_chart_line_axis_elements" FOREIGN KEY ("chart_line_axis_element_id") REFERENCES "chart_line_axis_elements" ("chart_line_axis_element_id")
);

CREATE TABLE "chart_line_axis_columns" (
	"chart_line_axis_element_id" INTEGER,
	"chart_line_axis_column" VARCHAR,
	 CONSTRAINT "fkeycon_chart_line_axis_columns_to_chart_line_axis_elements" FOREIGN KEY ("chart_line_axis_element_id") REFERENCES "chart_line_axis_elements" ("chart_line_axis_element_id")
);

CREATE TABLE "chart_line_additionals" (
	"chart_line_id" INT,
	"chart_line_additional_column" VARCHAR,
	"chart_line_additional_url" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("chart_line_id","chart_line_additional_column"),
	 CONSTRAINT "fkeycon_chart_line_additionals_to_chart_lines" FOREIGN KEY ("chart_line_id") REFERENCES "chart_lines" ("chart_line_id")
);

CREATE TABLE "bench_units" (
	"bench_unit_id" INTEGER,
	"bench_unit" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "benchs" (
	"bench_id" INTEGER,
	"bench_unit_id" TINYINT,
	"bench" VARCHAR,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_benchs_to_bench_units" FOREIGN KEY ("bench_unit_id") REFERENCES "bench_units" ("bench_unit_id")
);

CREATE TABLE "bench_subsume_types" (
	"bench_subsume_type_id" INTEGER,
	"bench_subsume_type" VARCHAR,
	"bench_subsume_type_rank" TINYINT,
	"datetime_strftime_pattern" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "bench_values" (
	"bench_value_id" INTEGER,
	"bench_id" INT,
	"bench_subsume_type_id" SMALLINT,
	"bench_value" VARCHAR,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_bench_values_to_benchs" FOREIGN KEY ("bench_id") REFERENCES "benchs" ("bench_id"),
	 CONSTRAINT "fkeycon_bench_values_to_bench_subsume_types" FOREIGN KEY ("bench_subsume_type_id") REFERENCES "bench_subsume_types" ("bench_subsume_type_id")
);

CREATE TABLE "chart_tiny_url_relations" (
	"chart_tiny_url_line_id" INT,
	"bench_value_id" INT,
	 PRIMARY KEY ("chart_tiny_url_line_id","bench_value_id"),
	 CONSTRAINT "fkeycon_chart_tiny_url_relations_to_bench_values" FOREIGN KEY ("bench_value_id") REFERENCES "bench_values" ("bench_value_id"),
	 CONSTRAINT "fkeycon_chart_tiny_url_relations_to_chart_tiny_url_lines" FOREIGN KEY ("chart_tiny_url_line_id") REFERENCES "chart_tiny_url_lines" ("chart_tiny_url_line_id")
);

CREATE TABLE "bench_backup_values" (
	"bench_backup_value_id" INTEGER,
	"bench_value_id" INT,
	"bench_id" INT,
	"bench_subsume_type_id" SMALLINT,
	"bench_value" VARCHAR,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_bench_backup_values_to_benchs" FOREIGN KEY ("bench_id") REFERENCES "benchs" ("bench_id"),
	 CONSTRAINT "fkeycon_bench_backup_values_to_bench_subsume_types" FOREIGN KEY ("bench_subsume_type_id") REFERENCES "bench_subsume_types" ("bench_subsume_type_id"),
	 CONSTRAINT "fkeycon_bench_backup_values_to_bench_values" FOREIGN KEY ("bench_value_id") REFERENCES "bench_values" ("bench_value_id")
);

CREATE TABLE "bench_additional_types" (
	"bench_additional_type_id" INTEGER,
	"bench_additional_type" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "bench_additional_type_relations" (
	"bench_id" INT,
	"bench_additional_type_id" SMALLINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("bench_id","bench_additional_type_id"),
	 CONSTRAINT "fkeycon_bench_additional_type_relations_to_benchs" FOREIGN KEY ("bench_id") REFERENCES "benchs" ("bench_id"),
	 CONSTRAINT "fkeycon_bench_additional_type_relations_to_bench_additional_types" FOREIGN KEY ("bench_additional_type_id") REFERENCES "bench_additional_types" ("bench_additional_type_id")
);

CREATE TABLE "bench_additional_values" (
	"bench_additional_value_id" INTEGER,
	"bench_additional_type_id" SMALLINT,
	"bench_additional_value" VARCHAR,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_bench_additional_values_to_bench_additional_types" FOREIGN KEY ("bench_additional_type_id") REFERENCES "bench_additional_types" ("bench_additional_type_id")
);

CREATE TABLE "bench_backkup_additional_relations" (
	"bench_backup_value_id" INT,
	"bench_additional_value_id" INT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("bench_backup_value_id","bench_additional_value_id"),
	 CONSTRAINT "fkeycon_bench_backkup_additional_relations_to_bench_additional_values" FOREIGN KEY ("bench_additional_value_id") REFERENCES "bench_additional_values" ("bench_additional_value_id"),
	 CONSTRAINT "fkeycon_bench_backkup_additional_relations_to_bench_backup_values" FOREIGN KEY ("bench_backup_value_id") REFERENCES "bench_backup_values" ("bench_backup_value_id")
);

CREATE TABLE "bench_additional_relations" (
	"bench_value_id" INT,
	"bench_additional_value_id" INT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("bench_value_id","bench_additional_value_id"),
	 CONSTRAINT "fkeycon_bench_additional_relations_to_bench_values" FOREIGN KEY ("bench_value_id") REFERENCES "bench_values" ("bench_value_id"),
	 CONSTRAINT "fkeycon_bench_additional_relations_to_bench_additional_values" FOREIGN KEY ("bench_additional_value_id") REFERENCES "bench_additional_values" ("bench_additional_value_id")
);
