DROP DATABASE IF EXISTS "schema1227";
CREATE DATABASE "schema1227";
USE "schema1227";
CREATE TABLE "dns_responses" (
	"id" INTEGER,
	"request_id" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"hostname" TEXT,
	"addresses" TEXT,
	"used_address" TEXT,
	"canonical_name" TEXT,
	"is_trr" INTEGER,
	"time_stamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "incomplete_visits" (
	"visit_id" INTEGER
);

CREATE TABLE "callstacks" (
	"id" INTEGER,
	"request_id" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"call_stack" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "navigations" (
	"id" INTEGER,
	"incognito" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"extension_session_uuid" TEXT,
	"process_id" INTEGER,
	"window_id" INTEGER,
	"tab_id" INTEGER,
	"tab_opener_tab_id" INTEGER,
	"frame_id" INTEGER,
	"parent_frame_id" INTEGER,
	"window_width" INTEGER,
	"window_height" INTEGER,
	"window_type" TEXT,
	"tab_width" INTEGER,
	"tab_height" INTEGER,
	"tab_cookie_store_id" TEXT,
	"uuid" TEXT,
	"url" TEXT,
	"transition_qualifiers" TEXT,
	"transition_type" TEXT,
	"before_navigate_event_ordinal" INTEGER,
	"before_navigate_time_stamp" DATETIME,
	"committed_event_ordinal" INTEGER,
	"committed_time_stamp" DATETIME
);

CREATE TABLE "javascript_cookies" (
	"id" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"extension_session_uuid" TEXT,
	"event_ordinal" INTEGER,
	"record_type" TEXT,
	"change_cause" TEXT,
	"expiry" DATETIME,
	"is_http_only" INTEGER,
	"is_host_only" INTEGER,
	"is_session" INTEGER,
	"host" TEXT,
	"is_secure" INTEGER,
	"name" TEXT,
	"path" TEXT,
	"value" TEXT,
	"same_site" TEXT,
	"first_party_domain" TEXT,
	"store_id" STRING,
	"time_stamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "javascript" (
	"id" INTEGER,
	"incognito" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"extension_session_uuid" TEXT,
	"event_ordinal" INTEGER,
	"page_scoped_event_ordinal" INTEGER,
	"window_id" INTEGER,
	"tab_id" INTEGER,
	"frame_id" INTEGER,
	"script_url" TEXT,
	"script_line" TEXT,
	"script_col" TEXT,
	"func_name" TEXT,
	"script_loc_eval" TEXT,
	"document_url" TEXT,
	"top_level_url" TEXT,
	"call_stack" TEXT,
	"symbol" TEXT,
	"operation" TEXT,
	"value" TEXT,
	"arguments" TEXT,
	"time_stamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "http_redirects" (
	"id" INTEGER,
	"incognito" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"old_request_url" TEXT,
	"old_request_id" TEXT,
	"new_request_url" TEXT,
	"new_request_id" TEXT,
	"extension_session_uuid" TEXT,
	"event_ordinal" INTEGER,
	"window_id" INTEGER,
	"tab_id" INTEGER,
	"frame_id" INTEGER,
	"response_status" INTEGER,
	"response_status_text" TEXT,
	"headers" TEXT,
	"time_stamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "http_responses" (
	"id" INTEGER,
	"incognito" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"extension_session_uuid" TEXT,
	"event_ordinal" INTEGER,
	"window_id" INTEGER,
	"tab_id" INTEGER,
	"frame_id" INTEGER,
	"url" TEXT,
	"method" TEXT,
	"response_status" INTEGER,
	"response_status_text" TEXT,
	"is_cached" INTEGER,
	"headers" TEXT,
	"request_id" INTEGER,
	"location" TEXT,
	"time_stamp" DATETIME,
	"content_hash" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "http_requests" (
	"id" INTEGER,
	"incognito" INTEGER,
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"extension_session_uuid" TEXT,
	"event_ordinal" INTEGER,
	"window_id" INTEGER,
	"tab_id" INTEGER,
	"frame_id" INTEGER,
	"url" TEXT,
	"top_level_url" TEXT,
	"parent_frame_id" INTEGER,
	"frame_ancestors" TEXT,
	"method" TEXT,
	"referrer" TEXT,
	"headers" TEXT,
	"request_id" INTEGER,
	"is_xhr" INTEGER,
	"is_third_party_channel" INTEGER,
	"is_third_party_to_top_window" INTEGER,
	"triggering_origin" TEXT,
	"loading_origin" TEXT,
	"loading_href" TEXT,
	"req_call_stack" TEXT,
	"resource_type" TEXT,
	"post_body" TEXT,
	"post_body_raw" TEXT,
	"time_stamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"task_id" INTEGER,
	"start_time" DATETIME,
	"manager_params" TEXT,
	"openwpm_version" TEXT,
	"browser_version" TEXT,
	 PRIMARY KEY ("task_id")
);

CREATE TABLE "crawl" (
	"browser_id" INTEGER,
	"task_id" INTEGER,
	"browser_params" TEXT,
	"start_time" DATETIME,
	 PRIMARY KEY ("browser_id"),
	 CONSTRAINT "fkeycon_crawl_to_task" FOREIGN KEY ("task_id") REFERENCES "task" ("task_id")
);

CREATE TABLE "crawl_history" (
	"browser_id" INTEGER,
	"visit_id" INTEGER,
	"command" TEXT,
	"arguments" TEXT,
	"retry_number" INTEGER,
	"command_status" TEXT,
	"error" TEXT,
	"traceback" TEXT,
	"duration" INTEGER,
	"dtg" DATETIME,
	 CONSTRAINT "fkeycon_crawl_history_to_crawl" FOREIGN KEY ("browser_id") REFERENCES "crawl" ("browser_id")
);

CREATE TABLE "site_visits" (
	"visit_id" INTEGER,
	"browser_id" INTEGER,
	"site_url" VARCHAR,
	"site_rank" INTEGER,
	 PRIMARY KEY ("visit_id"),
	 CONSTRAINT "fkeycon_site_visits_to_crawl" FOREIGN KEY ("browser_id") REFERENCES "crawl" ("browser_id")
);
