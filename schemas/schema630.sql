DROP DATABASE IF EXISTS "schema630";
CREATE DATABASE "schema630";
USE "schema630";
CREATE TABLE "vote" (
	"village_day_id" INT,
	"village_player_id" INT,
	"target_village_player_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_day_id","village_player_id")
);

CREATE TABLE "village_status" (
	"village_status_code" VARCHAR,
	"village_status_name" VARCHAR,
	 PRIMARY KEY ("village_status_code")
);

CREATE TABLE "village_setting_item" (
	"village_setting_item_code" VARCHAR,
	"village_setting_item_name" VARCHAR,
	"disp_order" INT,
	 PRIMARY KEY ("village_setting_item_code")
);

CREATE TABLE "village_setting" (
	"village_id" INT,
	"village_setting_item_code" VARCHAR,
	"village_setting_text" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","village_setting_item_code")
);

CREATE TABLE "village_player" (
	"village_player_id" INT,
	"village_id" INT,
	"player_id" INT,
	"chara_id" INT,
	"skill_code" VARCHAR,
	"request_skill_code" VARCHAR,
	"second_request_skill_code" VARCHAR,
	"is_dead" BOOLEAN,
	"is_spectator" BOOLEAN,
	"dead_reason_code" VARCHAR,
	"dead_village_day_id" INT,
	"is_gone" BOOLEAN,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_player_id")
);

CREATE TABLE "village_day" (
	"village_day_id" INT,
	"village_id" INT,
	"day" INT,
	"noonnight_code" VARCHAR,
	"daychange_datetime" DATETIME,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_day_id")
);

CREATE TABLE "village" (
	"village_id" INT,
	"village_display_name" VARCHAR,
	"create_player_id" INT,
	"village_status_code" VARCHAR,
	"epilogue_day" INT,
	"win_camp_code" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id")
);

CREATE TABLE "skill" (
	"skill_code" VARCHAR,
	"skill_name" VARCHAR,
	"skill_short_name" CHAR,
	"camp_code" VARCHAR,
	"disp_order" INT,
	"description" TEXT,
	 PRIMARY KEY ("skill_code")
);

CREATE TABLE "reserved_village" (
	"reserved_village_id" INT,
	"create_datetime" DATETIME,
	"start_datetime" DATETIME,
	"organization" VARCHAR,
	"silent_hours" INT,
	"is_available_dummy_skill" BOOLEAN,
	"is_for_beginner" BOOLEAN,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("reserved_village_id")
);

CREATE TABLE "player_detail" (
	"player_id" INT,
	"other_site_name" VARCHAR,
	"introduction" VARCHAR,
	 PRIMARY KEY ("player_id")
);

CREATE TABLE "player" (
	"player_id" INT,
	"uid" VARCHAR,
	"nickname" VARCHAR,
	"twitter_user_name" VARCHAR,
	"authority_code" VARCHAR,
	"is_restricted_participation" BOOLEAN,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("player_id")
);

CREATE TABLE "noonnight" (
	"noonnight_code" VARCHAR,
	"noonnight_name" VARCHAR,
	"disp_order" INT,
	 PRIMARY KEY ("noonnight_code")
);

CREATE TABLE "message_type" (
	"message_type_code" VARCHAR,
	"message_type_name" VARCHAR,
	 PRIMARY KEY ("message_type_code")
);

CREATE TABLE "message_restriction" (
	"village_id" INT,
	"message_type_code" VARCHAR,
	"message_max_num" INT,
	"message_max_length" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","message_type_code")
);

CREATE TABLE "message" (
	"village_id" INT,
	"message_number" INT,
	"message_type_code" VARCHAR,
	"message_unixtimestamp_milli" BIGINT,
	"village_day_id" INT,
	"village_player_id" INT,
	"to_village_player_id" INT,
	"player_id" INT,
	"message_content" VARCHAR,
	"message_datetime" DATETIME,
	"message_count" INT,
	"is_convert_disable" BOOLEAN,
	"face_type_code" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","message_number","message_type_code")
);

CREATE TABLE "face_type" (
	"face_type_code" VARCHAR,
	"face_type_name" VARCHAR,
	"disp_order" INT,
	 PRIMARY KEY ("face_type_code")
);

CREATE TABLE "designer" (
	"designer_id" INT,
	"designer_name" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("designer_id")
);

CREATE TABLE "dead_reason" (
	"dead_reason_code" VARCHAR,
	"dead_reason_name" VARCHAR,
	 PRIMARY KEY ("dead_reason_code")
);

CREATE TABLE "commit" (
	"village_player_id" INT,
	"village_day_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_player_id","village_day_id")
);

CREATE TABLE "coming_out" (
	"village_player_id" INT,
	"skill_code" VARCHAR,
	 PRIMARY KEY ("village_player_id","skill_code")
);

CREATE TABLE "chara_image" (
	"chara_id" INT,
	"face_type_code" VARCHAR,
	"chara_img_url" VARCHAR,
	 PRIMARY KEY ("chara_id","face_type_code")
);

CREATE TABLE "chara_group" (
	"chara_group_id" INT,
	"chara_group_name" VARCHAR,
	"designer_id" INT,
	"description_url" TEXT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("chara_group_id")
);

CREATE TABLE "chara" (
	"chara_id" INT,
	"chara_name" VARCHAR,
	"chara_short_name" CHAR,
	"chara_group_id" INT,
	"default_join_message" VARCHAR,
	"default_firstday_message" VARCHAR,
	"display_width" INT,
	"display_height" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("chara_id")
);

CREATE TABLE "camp" (
	"camp_code" VARCHAR,
	"camp_name" VARCHAR,
	"disp_order" INT,
	 PRIMARY KEY ("camp_code")
);

CREATE TABLE "blacklist_player" (
	"blacklist_player_id" INT,
	"from_player_id" INT,
	"to_player_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("blacklist_player_id")
);

CREATE TABLE "authority" (
	"authority_code" VARCHAR,
	"authority_name" VARCHAR,
	 PRIMARY KEY ("authority_code")
);

CREATE TABLE "app_version" (
	"client_version" INT,
	 PRIMARY KEY ("client_version")
);

CREATE TABLE "ability_type" (
	"ability_type_code" VARCHAR,
	"ability_type_name" VARCHAR,
	 PRIMARY KEY ("ability_type_code")
);

CREATE TABLE "ability" (
	"ability_type_code" VARCHAR,
	"village_day_id" INT,
	"village_player_id" INT,
	"target_village_player_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("ability_type_code","village_day_id","village_player_id")
);
