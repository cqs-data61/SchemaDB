DROP DATABASE IF EXISTS "schema1665";
CREATE DATABASE "schema1665";
USE "schema1665";
CREATE TABLE "user_rights" (
	"id" INT,
	"userid" INT,
	"rights" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"user_name" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"active_fg" CHAR,
	"password" VARBINARY,
	"email" VARCHAR,
	"institution" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tree_annotation" (
	"id" INT,
	"tree_id" INT,
	"type" VARCHAR,
	"annotation" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tree" (
	"idname" VARCHAR,
	"tree" LONGTEXT,
	"type" VARCHAR,
	"id" INT,
	"ma_id" INT,
	"description" VARCHAR,
	"sequence_type_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "templates" (
	"template_file" VARCHAR,
	"page_name" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tagmap" (
	"tagid" INT,
	"contig" VARCHAR,
	"start" INT,
	"stop" INT,
	"direction" CHAR,
	"assignment" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stats" (
	"statistic" VARCHAR,
	"value" TEXT,
	"type" VARCHAR
);

CREATE TABLE "sequence_type" (
	"id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sequence_search" (
	"id" INT,
	"idname" VARCHAR,
	"sequence_type_id" INT,
	"db_id" INT,
	"algorithm_id" INT,
	"sequence" LONGTEXT,
	"translate" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sage_temp" (
	"tagid" INT,
	"start" INT,
	"direction" CHAR,
	"orfid" INT,
	"orf_direction" CHAR,
	"tagtype" VARCHAR,
	"tagmapid" INT
);

CREATE TABLE "sage_tags" (
	"tagid" INT,
	"sequence" VARCHAR,
	 PRIMARY KEY ("tagid")
);

CREATE TABLE "sage_results" (
	"tagid" INT,
	"library" VARCHAR,
	"result" INT
);

CREATE TABLE "sage_library_names" (
	"library" VARCHAR,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"priority" INT,
	"total" INT,
	"total_filtered" INT
);

CREATE TABLE "reads_quality" (
	"read_name" VARCHAR,
	"quality" TEXT
);

CREATE TABLE "reads_bases" (
	"read_name" VARCHAR,
	"bases" TEXT
);

CREATE TABLE "reads_assembly" (
	"read_name" VARCHAR,
	"read_status" VARCHAR,
	"read_len_untrim" INT,
	"first_base_of_trim" INT,
	"read_len_trim" INT,
	"contig_number" INT,
	"contig_length" INT,
	"trim_read_in_contig_start" INT,
	"trim_read_in_contig_stop" INT,
	"orientation" CHAR,
	"read_pair_name" VARCHAR,
	"read_pair_status" VARCHAR,
	"read_pair_contig_number" INT,
	"observed_insert_size" INT,
	"given_insert_size" INT,
	"given_insert_std_dev" INT,
	"observed_inserted_deviation" FLOAT
);

CREATE TABLE "reads" (
	"read_id" INT,
	"read_name" VARCHAR,
	"center_name" VARCHAR,
	"plate_id" VARCHAR,
	"well_id" VARCHAR,
	"template_id" VARCHAR,
	"library_id" VARCHAR,
	"trace_end" VARCHAR,
	"trace_direction" VARCHAR,
	"placed" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("read_id")
);

CREATE TABLE "phylo_pipe" (
	"id" INT,
	"idname" VARCHAR,
	"sequence_type_id" INT,
	"translate" CHAR,
	"sequence" LONGTEXT,
	"type" VARCHAR,
	"options" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "phylo_current" (
	"id" INT,
	"idname" VARCHAR,
	"sequence_type_id" INT,
	"translate" CHAR,
	"sequence" LONGTEXT,
	"type" VARCHAR,
	"options" VARCHAR
);

CREATE TABLE "orftosage" (
	"orfid" INT,
	"tagid" INT,
	"tagtype" VARCHAR,
	"unique_genome_fg" CHAR,
	"unique_trans_fg" CHAR,
	"tagmapid" INT,
	"manual_fg" CHAR,
	"assignment_type" VARCHAR
);

CREATE TABLE "orfs" (
	"orfid" INT,
	"sequence" TEXT,
	"annotation" TEXT,
	"annotation_type" VARCHAR,
	"source" VARCHAR,
	"delete_fg" CHAR,
	"delete_reason" VARCHAR,
	"contig" VARCHAR,
	"start" INT,
	"stop" INT,
	"direction" CHAR,
	"attributes" VARCHAR,
	"old_orf" CHAR,
	"testcode" CHAR,
	"codonscore" DOUBLE,
	"codonpreference" CHAR,
	"testscore" DOUBLE,
	"genescan" CHAR,
	"genescanscore" DOUBLE,
	"codonusage" FLOAT,
	"codonpreferencescore" FLOAT,
	"orf_name" VARCHAR,
	"delete_user_id" INT,
	"last_updated" TIMESTAMP,
	 PRIMARY KEY ("orfid")
);

CREATE TABLE "orf_reassign" (
	"old_orf" VARCHAR,
	"new_orf" VARCHAR
);

CREATE TABLE "news" (
	"id" INT,
	"title" TEXT,
	"body" TEXT,
	"short_body" TEXT,
	"news_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ma_annotation" (
	"id" INT,
	"ma_id" INT,
	"type" VARCHAR,
	"annotation" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ma" (
	"idname" VARCHAR,
	"ma" LONGTEXT,
	"type" VARCHAR,
	"description" VARCHAR,
	"id" INT,
	"sequence_type_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "links" (
	"super_id" INT,
	"bases_in_super" INT,
	"contigs_in_super" INT,
	"ordinal_number" INT,
	"contig_length" INT,
	"gap_before_contig" INT,
	"gap_after_contig" INT,
	"contig_number" INT,
	"contig_start_super_base" INT,
	"modified_contig_start_base" INT,
	"modified_bases_in_super" INT
);

CREATE TABLE "html" (
	"template" VARCHAR,
	"variable" VARCHAR,
	"value" TEXT
);

CREATE TABLE "files" (
	"id" INT,
	"name" VARCHAR,
	"data" LONGBLOB,
	"type" VARCHAR,
	"location" VARCHAR,
	"filename" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "evidence_codes" (
	"id" INT,
	"code" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "db" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "current_search" (
	"idname" VARCHAR,
	"sequence_type_id" INT,
	"db_id" INT,
	"algorithm_id" INT
);

CREATE TABLE "current_phlyo" (
	"idname" VARCHAR,
	"sequence_type_id" INT
);

CREATE TABLE "contigs" (
	"contig_number" VARCHAR,
	"bases" LONGTEXT,
	 PRIMARY KEY ("contig_number")
);

CREATE TABLE "contig_quality" (
	"contig_number" VARCHAR,
	"quality" LONGTEXT,
	 PRIMARY KEY ("contig_number")
);

CREATE TABLE "blast_results" (
	"idname" VARCHAR,
	"score" FLOAT,
	"hit_start" INT,
	"hit_end" INT,
	"hit_name" VARCHAR,
	"accession_number" VARCHAR,
	"description" VARCHAR,
	"algorithm" INT,
	"db" INT,
	"gaps" INT,
	"frac_identical" FLOAT,
	"frac_conserved" FLOAT,
	"query_string" TEXT,
	"hit_string" TEXT,
	"homology_string" TEXT,
	"hsp_rank" INT,
	"evalue" DOUBLE,
	"hsp_strand" INT,
	"hsp_frame" INT,
	"sequence_type_id" INT,
	"primary_id" VARCHAR,
	"query_start" INT,
	"query_end" INT,
	"hit_rank" INT,
	"id" INT,
	"gi" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blast_report_full" (
	"idname" VARCHAR,
	"report" LONGTEXT,
	"sequence_type_id" INT,
	"db_id" INT,
	"algorithm_id" INT
);

CREATE TABLE "annotation" (
	"id" INT,
	"userid" INT,
	"orfid" INT,
	"update_dt" TIMESTAMP,
	"annotation" VARCHAR,
	"notes" TEXT,
	"delete_fg" CHAR,
	"blessed_fg" CHAR,
	"qualifier" VARCHAR,
	"with_from" VARCHAR,
	"aspect" CHAR,
	"object_type" VARCHAR,
	"evidence_code" INT,
	"private_fg" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "algorithms" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
