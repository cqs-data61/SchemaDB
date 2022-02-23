DROP DATABASE IF EXISTS "schema1888";
CREATE DATABASE "schema1888";
USE "schema1888";
CREATE TABLE "person_knows_person" (
	"person1id" BIGINT,
	"person2id" BIGINT
);

CREATE TABLE "person_workat_company" (
	"personid" BIGINT,
	"companyid" BIGINT
);

CREATE TABLE "person_studyat_university" (
	"personid" BIGINT,
	"universityid" BIGINT
);

CREATE TABLE "person_likes_post" (
	"personid" BIGINT,
	"postid" BIGINT
);

CREATE TABLE "person_likes_comment" (
	"personid" BIGINT,
	"commentid" BIGINT
);

CREATE TABLE "person_hasinterest_tag" (
	"personid" BIGINT,
	"tagid" BIGINT
);

CREATE TABLE "forum_hastag_tag" (
	"forumid" BIGINT,
	"tagid" BIGINT
);

CREATE TABLE "forum_hasmember_person" (
	"forumid" BIGINT,
	"personid" BIGINT
);

CREATE TABLE "post_hastag_tag" (
	"postid" BIGINT,
	"tagid" BIGINT
);

CREATE TABLE "comment_hastag_tag" (
	"commentid" BIGINT,
	"tagid" BIGINT
);

CREATE TABLE "person" (
	"personid" BIGINT,
	"islocatedin_cityid" BIGINT
);

CREATE TABLE "post" (
	"postid" BIGINT,
	"hascreator_personid" BIGINT,
	"forum_containerofid" BIGINT,
	"islocatedin_countryid" BIGINT
);

CREATE TABLE "comment" (
	"commentid" BIGINT,
	"hascreator_personid" BIGINT,
	"islocatedin_countryid" BIGINT,
	"replyof_postid" BIGINT,
	"replyof_commentid" BIGINT
);

CREATE TABLE "forum" (
	"forumid" BIGINT,
	"hasmoderator_personid" BIGINT
);

CREATE TABLE "tagclass" (
	"tagclassid" BIGINT,
	"issubclassof_tagclassid" BIGINT
);

CREATE TABLE "tag" (
	"tagid" BIGINT,
	"hastype_tagclassid" BIGINT
);

CREATE TABLE "city" (
	"cityid" BIGINT,
	"ispartof_countryid" BIGINT
);

CREATE TABLE "country" (
	"countryid" BIGINT,
	"ispartof_continentid" BIGINT
);

CREATE TABLE "continent" (
	"continentid" BIGINT
);

CREATE TABLE "university" (
	"universityid" BIGINT,
	"islocatedin_cityid" BIGINT
);

CREATE TABLE "company" (
	"companyid" BIGINT,
	"islocatedin_countryid" BIGINT
);
