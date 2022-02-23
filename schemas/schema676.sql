DROP DATABASE IF EXISTS "schema676";
CREATE DATABASE "schema676";
USE "schema676";
CREATE TABLE "setting" (
	"category" TEXT,
	"key" TEXT,
	"value" TEXT,
	 PRIMARY KEY ("category","key")
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"user_key" TEXT,
	"creation_time" INTEGER,
	 PRIMARY KEY ("user_key")
);

CREATE TABLE "session" (
	"session_id" INTEGER,
	"user_ref" INTEGER,
	"session_key" TEXT,
	"creation_time" INTEGER,
	"dirty" INTEGER,
	 PRIMARY KEY ("session_key"),
	 CONSTRAINT "fkeycon_session_to_user" FOREIGN KEY ("user_ref") REFERENCES "user" ("user_id")
);

CREATE TABLE "session_log" (
	"session_ref" INTEGER,
	"timestamp" TEXT,
	"log" TEXT,
	 CONSTRAINT "fkeycon_session_log_to_session" FOREIGN KEY ("session_ref") REFERENCES "session" ("session_id")
);

CREATE TABLE "session_key_value" (
	"session_ref" INTEGER,
	"key" TEXT,
	"value" TEXT,
	 PRIMARY KEY ("session_ref","key"),
	 CONSTRAINT "fkeycon_session_key_value_to_session" FOREIGN KEY ("session_ref") REFERENCES "session" ("session_id")
);

CREATE TABLE "package" (
	"package_id" INTEGER,
	"parent_package_ref" INTEGER,
	"path" TEXT,
	"type" TEXT,
	"crc" INTEGER,
	"version" TEXT,
	 PRIMARY KEY ("package_id"),
	 CONSTRAINT "fkeycon_package_to_package" FOREIGN KEY ("parent_package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "session_package" (
	"session_ref" INTEGER,
	"package_ref" INTEGER,
	"required" INTEGER,
	"enabled" INTEGER,
	 PRIMARY KEY ("session_ref","package_ref"),
	 CONSTRAINT "fkeycon_session_package_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id"),
	 CONSTRAINT "fkeycon_session_package_to_session" FOREIGN KEY ("session_ref") REFERENCES "session" ("session_id")
);

CREATE TABLE "tag" (
	"tag_id" INTEGER,
	"package_ref" INTEGER,
	"name" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("package_ref","name"),
	 CONSTRAINT "fkeycon_tag_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "device_type" (
	"device_type_id" INTEGER,
	"package_ref" INTEGER,
	"domain" TEXT,
	"code" INTEGER,
	"profile_id" INTEGER,
	"name" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("device_type_id"),
	 CONSTRAINT "fkeycon_device_type_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "endpoint_type" (
	"endpoint_type_id" INTEGER,
	"session_ref" INTEGER,
	"name" TEXT,
	"device_type_ref" INTEGER,
	 PRIMARY KEY ("endpoint_type_id"),
	 CONSTRAINT "fkeycon_endpoint_type_to_session" FOREIGN KEY ("session_ref") REFERENCES "session" ("session_id"),
	 CONSTRAINT "fkeycon_endpoint_type_to_device_type" FOREIGN KEY ("device_type_ref") REFERENCES "device_type" ("device_type_id")
);

CREATE TABLE "endpoint" (
	"endpoint_id" INTEGER,
	"session_ref" INTEGER,
	"endpoint_type_ref" INTEGER,
	"profile" INTEGER,
	"endpoint_identifier" INTEGER,
	"network_identifier" INTEGER,
	"device_identifier" INTEGER,
	"device_version" INTEGER,
	 PRIMARY KEY ("endpoint_id"),
	 CONSTRAINT "fkeycon_endpoint_to_endpoint_type" FOREIGN KEY ("endpoint_type_ref") REFERENCES "endpoint_type" ("endpoint_type_id"),
	 CONSTRAINT "fkeycon_endpoint_to_session" FOREIGN KEY ("session_ref") REFERENCES "session" ("session_id")
);

CREATE TABLE "struct" (
	"struct_id" INTEGER,
	"package_ref" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("struct_id"),
	 CONSTRAINT "fkeycon_struct_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "struct_item" (
	"struct_ref" INTEGER,
	"field_identifier" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"array_type" TEXT,
	"min_length" INTEGER,
	"max_length" INTEGER,
	"is_writable" INTEGER,
	 CONSTRAINT "fkeycon_struct_item_to_struct" FOREIGN KEY ("struct_ref") REFERENCES "struct" ("struct_id")
);

CREATE TABLE "enum" (
	"enum_id" INTEGER,
	"package_ref" INTEGER,
	"name" TEXT,
	"type" TEXT,
	 PRIMARY KEY ("enum_id"),
	 CONSTRAINT "fkeycon_enum_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "enum_item" (
	"enum_ref" INTEGER,
	"field_identifier" INTEGER,
	"name" TEXT,
	"value" INTEGER,
	 CONSTRAINT "fkeycon_enum_item_to_enum" FOREIGN KEY ("enum_ref") REFERENCES "enum" ("enum_id")
);

CREATE TABLE "bitmap" (
	"bitmap_id" INTEGER,
	"package_ref" INTEGER,
	"name" TEXT,
	"type" TEXT,
	 PRIMARY KEY ("bitmap_id"),
	 CONSTRAINT "fkeycon_bitmap_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "bitmap_field" (
	"bitmap_ref" INTEGER,
	"field_identifier" INTEGER,
	"name" TEXT,
	"mask" INTEGER,
	"type" TEXT,
	 CONSTRAINT "fkeycon_bitmap_field_to_bitmap" FOREIGN KEY ("bitmap_ref") REFERENCES "bitmap" ("bitmap_id")
);

CREATE TABLE "atomic" (
	"atomic_id" INTEGER,
	"package_ref" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"atomic_identifier" INTEGER,
	"atomic_size" INTEGER,
	"is_discrete" INTEGER,
	"is_string" INTEGER,
	"is_long" INTEGER,
	"is_char" INTEGER,
	"is_signed" INTEGER,
	 PRIMARY KEY ("atomic_id"),
	 CONSTRAINT "fkeycon_atomic_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "spec" (
	"spec_id" INTEGER,
	"package_ref" INTEGER,
	"code" TEXT,
	"description" TEXT,
	"certifiable" INTEGER,
	 PRIMARY KEY ("package_ref","code"),
	 CONSTRAINT "fkeycon_spec_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "cluster" (
	"cluster_id" INTEGER,
	"package_ref" INTEGER,
	"domain_name" TEXT,
	"code" INTEGER,
	"manufacturer_code" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"define" TEXT,
	"is_singleton" INTEGER,
	"introduced_in_ref" INTEGER,
	"removed_in_ref" INTEGER,
	 PRIMARY KEY ("cluster_id"),
	 CONSTRAINT "fkeycon_cluster_to_spec" FOREIGN KEY ("removed_in_ref") REFERENCES "spec" ("spec_id"),
	 CONSTRAINT "fkeycon_cluster_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "endpoint_type_cluster" (
	"endpoint_type_cluster_id" INTEGER,
	"endpoint_type_ref" INTEGER,
	"cluster_ref" INTEGER,
	"side" TEXT,
	"enabled" INTEGER,
	 PRIMARY KEY ("endpoint_type_ref","cluster_ref","side"),
	 CONSTRAINT "fkeycon_endpoint_type_cluster_to_endpoint_type" FOREIGN KEY ("endpoint_type_ref") REFERENCES "endpoint_type" ("endpoint_type_id"),
	 CONSTRAINT "fkeycon_endpoint_type_cluster_to_cluster" FOREIGN KEY ("cluster_ref") REFERENCES "cluster" ("cluster_id")
);

CREATE TABLE "device_type_cluster" (
	"device_type_cluster_id" INTEGER,
	"device_type_ref" INTEGER,
	"cluster_ref" INTEGER,
	"cluster_name" TEXT,
	"include_client" INTEGER,
	"include_server" INTEGER,
	"lock_client" INTEGER,
	"lock_server" INTEGER,
	 PRIMARY KEY ("device_type_cluster_id"),
	 CONSTRAINT "fkeycon_device_type_cluster_to_device_type" FOREIGN KEY ("device_type_ref") REFERENCES "device_type" ("device_type_id"),
	 CONSTRAINT "fkeycon_device_type_cluster_to_cluster" FOREIGN KEY ("cluster_ref") REFERENCES "cluster" ("cluster_id")
);

CREATE TABLE "attribute" (
	"attribute_id" INTEGER,
	"cluster_ref" INTEGER,
	"package_ref" INTEGER,
	"code" INTEGER,
	"manufacturer_code" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"side" TEXT,
	"define" TEXT,
	"min" TEXT,
	"max" TEXT,
	"min_length" INTEGER,
	"max_length" INTEGER,
	"is_writable" INTEGER,
	"default_value" TEXT,
	"is_scene_required" INTEGER,
	"is_optional" INTEGER,
	"is_reportable" INTEGER,
	"array_type" TEXT,
	"introduced_in_ref" INTEGER,
	"removed_in_ref" INTEGER,
	 PRIMARY KEY ("attribute_id"),
	 CONSTRAINT "fkeycon_attribute_to_spec" FOREIGN KEY ("removed_in_ref") REFERENCES "spec" ("spec_id"),
	 CONSTRAINT "fkeycon_attribute_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id"),
	 CONSTRAINT "fkeycon_attribute_to_cluster" FOREIGN KEY ("cluster_ref") REFERENCES "cluster" ("cluster_id")
);

CREATE TABLE "endpoint_type_attribute" (
	"endpoint_type_attribute_id" INTEGER,
	"endpoint_type_ref" INTEGER,
	"endpoint_type_cluster_ref" INTEGER,
	"attribute_ref" INTEGER,
	"included" INTEGER,
	"storage_option" TEXT,
	"singleton" INTEGER,
	"bounded" INTEGER,
	"default_value" TEXT,
	"included_reportable" INTEGER,
	"min_interval" INTEGER,
	"max_interval" INTEGER,
	"reportable_change" INTEGER,
	 PRIMARY KEY ("endpoint_type_ref","attribute_ref","endpoint_type_cluster_ref"),
	 CONSTRAINT "fkeycon_endpoint_type_attribute_to_endpoint_type" FOREIGN KEY ("endpoint_type_ref") REFERENCES "endpoint_type" ("endpoint_type_id"),
	 CONSTRAINT "fkeycon_endpoint_type_attribute_to_endpoint_type_cluster" FOREIGN KEY ("endpoint_type_cluster_ref") REFERENCES "endpoint_type_cluster" ("endpoint_type_cluster_id"),
	 CONSTRAINT "fkeycon_endpoint_type_attribute_to_attribute" FOREIGN KEY ("attribute_ref") REFERENCES "attribute" ("attribute_id")
);

CREATE TABLE "device_type_attribute" (
	"device_type_cluster_ref" INTEGER,
	"attribute_ref" INTEGER,
	"attribute_name" TEXT,
	 CONSTRAINT "fkeycon_device_type_attribute_to_attribute" FOREIGN KEY ("attribute_ref") REFERENCES "attribute" ("attribute_id"),
	 CONSTRAINT "fkeycon_device_type_attribute_to_device_type_cluster" FOREIGN KEY ("device_type_cluster_ref") REFERENCES "device_type_cluster" ("device_type_cluster_id")
);

CREATE TABLE "global_attribute_default" (
	"global_attribute_default_id" INTEGER,
	"cluster_ref" INTEGER,
	"attribute_ref" INTEGER,
	"default_value" TEXT,
	 PRIMARY KEY ("global_attribute_default_id"),
	 CONSTRAINT "fkeycon_global_attribute_default_to_cluster" FOREIGN KEY ("cluster_ref") REFERENCES "cluster" ("cluster_id"),
	 CONSTRAINT "fkeycon_global_attribute_default_to_attribute" FOREIGN KEY ("attribute_ref") REFERENCES "attribute" ("attribute_id")
);

CREATE TABLE "global_attribute_bit" (
	"global_attribute_default_ref" INTEGER,
	"bit" INTEGER,
	"value" INTEGER,
	"tag_ref" INTEGER,
	 CONSTRAINT "fkeycon_global_attribute_bit_to_global_attribute_default" FOREIGN KEY ("global_attribute_default_ref") REFERENCES "global_attribute_default" ("global_attribute_default_id")
);

CREATE TABLE "event" (
	"event_id" INTEGER,
	"cluster_ref" INTEGER,
	"package_ref" INTEGER,
	"code" INTEGER,
	"manufacturer_code" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"side" TEXT,
	"priority" TEXT,
	"introduced_in_ref" INTEGER,
	"removed_in_ref" INTEGER,
	 PRIMARY KEY ("event_id"),
	 CONSTRAINT "fkeycon_event_to_spec" FOREIGN KEY ("removed_in_ref") REFERENCES "spec" ("spec_id"),
	 CONSTRAINT "fkeycon_event_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id"),
	 CONSTRAINT "fkeycon_event_to_cluster" FOREIGN KEY ("cluster_ref") REFERENCES "cluster" ("cluster_id")
);

CREATE TABLE "event_field" (
	"event_ref" INTEGER,
	"field_identifier" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"introduced_in_ref" INTEGER,
	"removed_in_ref" INTEGER,
	 CONSTRAINT "fkeycon_event_field_to_spec" FOREIGN KEY ("removed_in_ref") REFERENCES "spec" ("spec_id"),
	 CONSTRAINT "fkeycon_event_field_to_event" FOREIGN KEY ("event_ref") REFERENCES "event" ("event_id")
);

CREATE TABLE "command" (
	"command_id" INTEGER,
	"cluster_ref" INTEGER,
	"package_ref" INTEGER,
	"code" INTEGER,
	"manufacturer_code" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"source" TEXT,
	"is_optional" INTEGER,
	"introduced_in_ref" INTEGER,
	"removed_in_ref" INTEGER,
	"response_name" INTEGER,
	"response_ref" INTEGER,
	 PRIMARY KEY ("command_id"),
	 CONSTRAINT "fkeycon_command_to_command" FOREIGN KEY ("response_ref") REFERENCES "command" ("command_id"),
	 CONSTRAINT "fkeycon_command_to_cluster" FOREIGN KEY ("cluster_ref") REFERENCES "cluster" ("cluster_id"),
	 CONSTRAINT "fkeycon_command_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id"),
	 CONSTRAINT "fkeycon_command_to_spec" FOREIGN KEY ("removed_in_ref") REFERENCES "spec" ("spec_id")
);

CREATE TABLE "endpoint_type_command" (
	"endpoint_type_command_id" INTEGER,
	"endpoint_type_ref" INTEGER,
	"endpoint_type_cluster_ref" INTEGER,
	"command_ref" INTEGER,
	"incoming" INTEGER,
	"outgoing" INTEGER,
	 PRIMARY KEY ("endpoint_type_ref","command_ref","endpoint_type_cluster_ref"),
	 CONSTRAINT "fkeycon_endpoint_type_command_to_endpoint_type" FOREIGN KEY ("endpoint_type_ref") REFERENCES "endpoint_type" ("endpoint_type_id"),
	 CONSTRAINT "fkeycon_endpoint_type_command_to_endpoint_type_cluster" FOREIGN KEY ("endpoint_type_cluster_ref") REFERENCES "endpoint_type_cluster" ("endpoint_type_cluster_id"),
	 CONSTRAINT "fkeycon_endpoint_type_command_to_command" FOREIGN KEY ("command_ref") REFERENCES "command" ("command_id")
);

CREATE TABLE "device_type_command" (
	"device_type_cluster_ref" INTEGER,
	"command_ref" INTEGER,
	"command_name" TEXT,
	 CONSTRAINT "fkeycon_device_type_command_to_command" FOREIGN KEY ("command_ref") REFERENCES "command" ("command_id"),
	 CONSTRAINT "fkeycon_device_type_command_to_device_type_cluster" FOREIGN KEY ("device_type_cluster_ref") REFERENCES "device_type_cluster" ("device_type_cluster_id")
);

CREATE TABLE "command_arg" (
	"command_ref" INTEGER,
	"field_identifier" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"is_array" INTEGER,
	"present_if" TEXT,
	"count_arg" TEXT,
	"introduced_in_ref" INTEGER,
	"removed_in_ref" INTEGER,
	 CONSTRAINT "fkeycon_command_arg_to_spec" FOREIGN KEY ("removed_in_ref") REFERENCES "spec" ("spec_id"),
	 CONSTRAINT "fkeycon_command_arg_to_command" FOREIGN KEY ("command_ref") REFERENCES "command" ("command_id")
);

CREATE TABLE "domain" (
	"domain_id" INTEGER,
	"package_ref" INTEGER,
	"name" TEXT,
	"latest_spec_ref" INTEGER,
	 PRIMARY KEY ("package_ref","name"),
	 CONSTRAINT "fkeycon_domain_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id"),
	 CONSTRAINT "fkeycon_domain_to_spec" FOREIGN KEY ("latest_spec_ref") REFERENCES "spec" ("spec_id")
);

CREATE TABLE "package_extension" (
	"package_extension_id" INTEGER,
	"package_ref" INTEGER,
	"entity" TEXT,
	"property" TEXT,
	"type" TEXT,
	"configurability" TEXT,
	"label" TEXT,
	"global_default" TEXT,
	 PRIMARY KEY ("package_ref","entity","property"),
	 CONSTRAINT "fkeycon_package_extension_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "package_extension_value" (
	"package_extension_value_id" INTEGER,
	"package_extension_ref" INTEGER,
	"session_ref" INTEGER,
	"entity_code" INTEGER,
	"parent_code" INTEGER,
	"value" TEXT,
	 PRIMARY KEY ("package_extension_ref","session_ref","entity_code","parent_code"),
	 CONSTRAINT "fkeycon_package_extension_value_to_session" FOREIGN KEY ("session_ref") REFERENCES "session" ("session_id"),
	 CONSTRAINT "fkeycon_package_extension_value_to_package_extension" FOREIGN KEY ("package_extension_ref") REFERENCES "package_extension" ("package_extension_id")
);

CREATE TABLE "package_extension_default" (
	"package_extension_ref" INTEGER,
	"entity_code" INTEGER,
	"entity_qualifier" TEXT,
	"parent_code" INTEGER,
	"manufacturer_code" INTEGER,
	"value" TEXT,
	 CONSTRAINT "fkeycon_package_extension_default_to_package_extension" FOREIGN KEY ("package_extension_ref") REFERENCES "package_extension" ("package_extension_id")
);

CREATE TABLE "package_option" (
	"option_id" INTEGER,
	"package_ref" INTEGER,
	"option_category" TEXT,
	"option_code" TEXT,
	"option_label" TEXT,
	 PRIMARY KEY ("package_ref","option_category","option_code"),
	 CONSTRAINT "fkeycon_package_option_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id")
);

CREATE TABLE "package_option_default" (
	"option_default_id" INTEGER,
	"package_ref" INTEGER,
	"option_category" TEXT,
	"option_ref" INTEGER,
	 PRIMARY KEY ("package_ref","option_category"),
	 CONSTRAINT "fkeycon_package_option_default_to_package" FOREIGN KEY ("package_ref") REFERENCES "package" ("package_id"),
	 CONSTRAINT "fkeycon_package_option_default_to_package_option" FOREIGN KEY ("option_ref") REFERENCES "package_option" ("option_id")
);
