DROP DATABASE IF EXISTS "schema1162";
CREATE DATABASE "schema1162";
USE "schema1162";
CREATE TABLE "vote" (
	"village_id" INT,
	"day" INT,
	"chara_id" INT,
	"vote_chara_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","day","chara_id")
);

CREATE TABLE "village_status" (
	"village_status_code" VARCHAR,
	"village_status_name" VARCHAR,
	 PRIMARY KEY ("village_status_code")
);

CREATE TABLE "village_settings" (
	"village_id" INT,
	"dummy_chara_id" INT,
	"start_person_min_num" INT,
	"person_max_num" INT,
	"start_datetime" DATETIME,
	"day_change_interval_seconds" INT,
	"is_open_vote" BOOLEAN,
	"is_possible_skill_request" BOOLEAN,
	"is_available_spectate" BOOLEAN,
	"is_available_same_wolf_attack" BOOLEAN,
	"is_open_skill_in_grave" BOOLEAN,
	"is_visible_grave_spectate_message" BOOLEAN,
	"is_available_suddonly_death" BOOLEAN,
	"is_available_commit" BOOLEAN,
	"is_available_guard_same_target" BOOLEAN,
	"character_group_id" INT,
	"join_password" VARCHAR,
	"organize" VARCHAR,
	"allowed_secret_say_code" VARCHAR,
	"is_available_action" BOOLEAN,
	"is_random_organize" BOOLEAN,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id")
);

CREATE TABLE "village_player_status_type" (
	"village_player_status_type_code" VARCHAR,
	"village_player_status_type_name" VARCHAR,
	 PRIMARY KEY ("village_player_status_type_code")
);

CREATE TABLE "village_player_status" (
	"village_player_status_id" INT,
	"village_player_id" INT,
	"to_village_player_id" INT,
	"village_player_status_code" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_player_status_id")
);

CREATE TABLE "village_player_room_history" (
	"village_player_room_history_id" INT,
	"village_player_id" INT,
	"day" INT,
	"room_number" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_player_room_history_id")
);

CREATE TABLE "village_player_dead_history" (
	"village_player_dead_history_id" INT,
	"village_player_id" INT,
	"day" INT,
	"is_dead" BOOLEAN,
	"dead_reason_code" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_player_dead_history_id")
);

CREATE TABLE "village_player" (
	"village_player_id" INT,
	"village_id" INT,
	"player_id" INT,
	"chara_id" INT,
	"skill_code" VARCHAR,
	"request_skill_code" VARCHAR,
	"second_request_skill_code" VARCHAR,
	"room_number" INT,
	"is_dead" BOOLEAN,
	"is_spectator" BOOLEAN,
	"dead_reason_code" VARCHAR,
	"dead_day" INT,
	"is_gone" BOOLEAN,
	"last_access_datetime" DATETIME,
	"camp_code" VARCHAR,
	"is_win" BOOLEAN,
	"chara_name" VARCHAR,
	"chara_short_name" CHAR,
	"memo" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_player_id")
);

CREATE TABLE "village_day" (
	"village_id" INT,
	"day" INT,
	"daychange_datetime" DATETIME,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","day")
);

CREATE TABLE "village" (
	"village_id" INT,
	"village_display_name" VARCHAR,
	"create_player_name" VARCHAR,
	"village_status_code" VARCHAR,
	"room_size_width" INT,
	"room_size_height" INT,
	"epilogue_day" INT,
	"win_camp_code" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id")
);

CREATE TABLE "skill_say_restriction" (
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

CREATE TABLE "skill_allocation" (
	"village_id" INT,
	"skill_code" VARCHAR,
	"min_num" INT,
	"max_num" INT,
	"allocation" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","skill_code")
);

CREATE TABLE "skill" (
	"skill_code" VARCHAR,
	"skill_name" VARCHAR,
	"skill_short_name" CHAR,
	"camp_code" VARCHAR,
	"disp_order" INT,
	 PRIMARY KEY ("skill_code")
);

CREATE TABLE "random_keyword" (
	"random_keyword_id" INT,
	"keyword" VARCHAR,
	 PRIMARY KEY ("random_keyword_id")
);

CREATE TABLE "random_content" (
	"random_content_id" INT,
	"random_keyword_id" INT,
	"random_message" VARCHAR,
	 PRIMARY KEY ("random_content_id")
);

CREATE TABLE "player" (
	"player_id" INT,
	"player_name" VARCHAR,
	"player_password" CHAR,
	"authority_code" VARCHAR,
	"is_restricted_participation" BOOLEAN,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("player_id")
);

CREATE TABLE "normal_say_restriction" (
	"village_id" INT,
	"skill_code" VARCHAR,
	"message_type_code" VARCHAR,
	"message_max_num" INT,
	"message_max_length" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","skill_code","message_type_code")
);

CREATE TABLE "message_type" (
	"message_type_code" VARCHAR,
	"message_type_name" VARCHAR,
	 PRIMARY KEY ("message_type_code")
);

CREATE TABLE "message_sendto" (
	"message_replyto_id" INT,
	"message_id" INT,
	"village_player_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("message_replyto_id")
);

CREATE TABLE "message" (
	"message_id" INT,
	"village_id" INT,
	"village_player_id" INT,
	"to_village_player_id" INT,
	"player_id" INT,
	"day" INT,
	"message_type_code" VARCHAR,
	"message_number" INT,
	"message_content" VARCHAR,
	"message_datetime" DATETIME,
	"is_convert_disable" BOOLEAN,
	"face_type_code" VARCHAR,
	"chara_name" VARCHAR,
	"chara_short_name" CHAR,
	"to_chara_name" VARCHAR,
	"to_chara_short_name" CHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("message_id")
);

CREATE TABLE "footstep" (
	"village_id" INT,
	"day" INT,
	"chara_id" INT,
	"footstep_room_numbers" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","day","chara_id")
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
	"village_id" INT,
	"day" INT,
	"village_player_id" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","day","village_player_id")
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
	"is_available_change_name" BOOLEAN,
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

CREATE TABLE "camp_allocation" (
	"village_id" INT,
	"camp_code" VARCHAR,
	"min_num" INT,
	"max_num" INT,
	"allocation" INT,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","camp_code")
);

CREATE TABLE "camp" (
	"camp_code" VARCHAR,
	"camp_name" VARCHAR,
	 PRIMARY KEY ("camp_code")
);

CREATE TABLE "authority" (
	"authority_code" VARCHAR,
	"authority_name" VARCHAR,
	 PRIMARY KEY ("authority_code")
);

CREATE TABLE "allowed_secret_say" (
	"allowed_secret_say_code" VARCHAR,
	"allowed_secret_say_name" VARCHAR,
	 PRIMARY KEY ("allowed_secret_say_code")
);

CREATE TABLE "ability_type" (
	"ability_type_code" VARCHAR,
	"ability_type_name" VARCHAR,
	 PRIMARY KEY ("ability_type_code")
);

CREATE TABLE "ability" (
	"village_id" INT,
	"day" INT,
	"chara_id" INT,
	"target_chara_id" INT,
	"target_footstep" VARCHAR,
	"ability_type_code" VARCHAR,
	"register_datetime" DATETIME,
	"register_trace" VARCHAR,
	"update_datetime" DATETIME,
	"update_trace" VARCHAR,
	 PRIMARY KEY ("village_id","day","chara_id","ability_type_code")
);
