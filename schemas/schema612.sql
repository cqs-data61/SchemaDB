DROP DATABASE IF EXISTS "schema612";
CREATE DATABASE "schema612";
USE "schema612";
CREATE TABLE "word" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"peerreviewstatus" VARCHAR,
	"spellingconsistency" VARCHAR,
	"text" VARCHAR,
	"wordtype" VARCHAR,
	"rootword_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkd1ussioi3bpu2tmxm0cim5s5a" FOREIGN KEY ("rootword_id") REFERENCES "word" ("id")
);

CREATE TABLE "audio" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"attributionurl" VARCHAR,
	"contentlicense" VARCHAR,
	"contenttype" VARCHAR,
	"audioformat" VARCHAR,
	"bytes" BLOB,
	"durationms" BIGINT,
	"peerreviewstatus" VARCHAR,
	"title" VARCHAR,
	"transcription" VARCHAR,
	"word_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk1bkjicci0k63irniwg0fm9ans" FOREIGN KEY ("word_id") REFERENCES "word" ("id")
);

CREATE TABLE "audio_word" (
	"audio_id" BIGINT,
	"words_id" BIGINT,
	 PRIMARY KEY ("audio_id","words_id"),
	 CONSTRAINT "fkdt7dvkfoa2ne8ssgtq44s3yte" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id"),
	 CONSTRAINT "fkq2afgtopap8nf5xmahk0rvo6" FOREIGN KEY ("words_id") REFERENCES "word" ("id")
);

CREATE TABLE "audio_numeracyskills" (
	"audio_id" BIGINT,
	"numeracyskills" VARCHAR,
	 CONSTRAINT "fki8d6h9e6l39hll19wng6p32lp" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "audio_literacyskills" (
	"audio_id" BIGINT,
	"literacyskills" VARCHAR,
	 CONSTRAINT "fkrch8svr2vr7vf2v9ojyh6326r" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "allophone" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"consonantplace" VARCHAR,
	"consonanttype" VARCHAR,
	"consonantvoicing" VARCHAR,
	"diacritic" BOOLEAN,
	"liprounding" VARCHAR,
	"soundtype" VARCHAR,
	"valueipa" VARCHAR,
	"valuesampa" VARCHAR,
	"vowelfrontness" VARCHAR,
	"vowelheight" VARCHAR,
	"vowellength" VARCHAR,
	"audio_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkgcbogijxdhn3hee4anxebwf3n" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "video" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"attributionurl" VARCHAR,
	"contentlicense" VARCHAR,
	"contenttype" VARCHAR,
	"bytes" BLOB,
	"thumbnail" BLOB,
	"title" VARCHAR,
	"videoformat" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "video_word" (
	"video_id" BIGINT,
	"words_id" BIGINT,
	 PRIMARY KEY ("video_id","words_id"),
	 CONSTRAINT "fkplswdv1whriquc00dsaxrqe0s" FOREIGN KEY ("video_id") REFERENCES "video" ("id"),
	 CONSTRAINT "fk2un2s9ljli58i2qkjmvdpwfc7" FOREIGN KEY ("words_id") REFERENCES "word" ("id")
);

CREATE TABLE "video_numeracyskills" (
	"video_id" BIGINT,
	"numeracyskills" VARCHAR,
	 CONSTRAINT "fkt545qojkqdegjg5muf41ltk86" FOREIGN KEY ("video_id") REFERENCES "video" ("id")
);

CREATE TABLE "video_literacyskills" (
	"video_id" BIGINT,
	"literacyskills" VARCHAR,
	 CONSTRAINT "fkcp7t3km7xi2wkraaugjuk5xoo" FOREIGN KEY ("video_id") REFERENCES "video" ("id")
);

CREATE TABLE "syllable" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "syllable_allophone" (
	"syllable_id" BIGINT,
	"allophones_id" BIGINT,
	"allophones_order" INTEGER,
	 PRIMARY KEY ("syllable_id","allophones_order"),
	 CONSTRAINT "fktcoqkuyn527i9kxpf4my1g02x" FOREIGN KEY ("syllable_id") REFERENCES "syllable" ("id"),
	 CONSTRAINT "fkf12kmgbjhv3s9sytf9k0w04ap" FOREIGN KEY ("allophones_id") REFERENCES "allophone" ("id")
);

CREATE TABLE "number" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"symbol" VARCHAR,
	"value" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "video_number" (
	"video_id" BIGINT,
	"numbers_id" BIGINT,
	 PRIMARY KEY ("video_id","numbers_id"),
	 CONSTRAINT "fkr064lw8ryd35xks27348u2s9a" FOREIGN KEY ("video_id") REFERENCES "video" ("id"),
	 CONSTRAINT "fk5lrjvgqa5wnd49g6gsohlm0tg" FOREIGN KEY ("numbers_id") REFERENCES "number" ("id")
);

CREATE TABLE "number_word" (
	"number_id" BIGINT,
	"words_id" BIGINT,
	"words_order" INTEGER,
	 PRIMARY KEY ("number_id","words_order"),
	 CONSTRAINT "fkspo8bt34fftva3y5jac7p2no1" FOREIGN KEY ("words_id") REFERENCES "word" ("id"),
	 CONSTRAINT "fkim83prd786jsowiyrhdf1vo59" FOREIGN KEY ("number_id") REFERENCES "number" ("id")
);

CREATE TABLE "audio_number" (
	"audio_id" BIGINT,
	"numbers_id" BIGINT,
	 PRIMARY KEY ("audio_id","numbers_id"),
	 CONSTRAINT "fkyr69l8fg58o8ia369q106l5q" FOREIGN KEY ("numbers_id") REFERENCES "number" ("id"),
	 CONSTRAINT "fk9wkeuh81ec6supbcr70yvo73k" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "lettertoallophonemapping" (
	"id" BIGINT,
	"usagecount" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "word_lettertoallophonemapping" (
	"word_id" BIGINT,
	"lettertoallophonemappings_id" BIGINT,
	"lettertoallophonemappings_order" INTEGER,
	 PRIMARY KEY ("word_id","lettertoallophonemappings_order"),
	 CONSTRAINT "fkm7vce3xh4xlabwgjtt5x9urvm" FOREIGN KEY ("lettertoallophonemappings_id") REFERENCES "lettertoallophonemapping" ("id"),
	 CONSTRAINT "fkqtcn7heh8ye54wa5lcwesfsmf" FOREIGN KEY ("word_id") REFERENCES "word" ("id")
);

CREATE TABLE "lettertoallophonemapping_allophone" (
	"lettertoallophonemapping_id" BIGINT,
	"allophones_id" BIGINT,
	"allophones_order" INTEGER,
	 PRIMARY KEY ("lettertoallophonemapping_id","allophones_order"),
	 CONSTRAINT "fkfte4vq0mwx2i812mvtnft48a" FOREIGN KEY ("lettertoallophonemapping_id") REFERENCES "lettertoallophonemapping" ("id"),
	 CONSTRAINT "fkth4oyrcav0a19p5cv0bglh4ru" FOREIGN KEY ("allophones_id") REFERENCES "allophone" ("id")
);

CREATE TABLE "letter" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"diacritic" BOOLEAN,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "video_letter" (
	"video_id" BIGINT,
	"letters_id" BIGINT,
	 PRIMARY KEY ("video_id","letters_id"),
	 CONSTRAINT "fk426jmgm09qif0fhqke99ejl8c" FOREIGN KEY ("letters_id") REFERENCES "letter" ("id"),
	 CONSTRAINT "fklmbmpg1y1jue79i9w0f3ejetp" FOREIGN KEY ("video_id") REFERENCES "video" ("id")
);

CREATE TABLE "lettertoallophonemapping_letter" (
	"lettertoallophonemapping_id" BIGINT,
	"letters_id" BIGINT,
	"letters_order" INTEGER,
	 PRIMARY KEY ("lettertoallophonemapping_id","letters_order"),
	 CONSTRAINT "fk7yyfk46si4eks4jx6a7wh4hxo" FOREIGN KEY ("letters_id") REFERENCES "letter" ("id"),
	 CONSTRAINT "fk9ndst2hywiv2cx4eyhtnxs6nk" FOREIGN KEY ("lettertoallophonemapping_id") REFERENCES "lettertoallophonemapping" ("id")
);

CREATE TABLE "letter_allophone" (
	"letter_id" BIGINT,
	"allophones_id" BIGINT,
	"allophones_order" INTEGER,
	 PRIMARY KEY ("letter_id","allophones_order"),
	 CONSTRAINT "fk9aa1w37o6fexpp3d1yrralcqs" FOREIGN KEY ("letter_id") REFERENCES "letter" ("id"),
	 CONSTRAINT "fknwhfkqcsswqc4h2yikja7bo0j" FOREIGN KEY ("allophones_id") REFERENCES "allophone" ("id")
);

CREATE TABLE "audio_letter" (
	"audio_id" BIGINT,
	"letters_id" BIGINT,
	 PRIMARY KEY ("audio_id","letters_id"),
	 CONSTRAINT "fksqpvtu98kcwp9mr75fh8eulf9" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id"),
	 CONSTRAINT "fkqjf1gijq56ob68ug5048bfaci" FOREIGN KEY ("letters_id") REFERENCES "letter" ("id")
);

CREATE TABLE "image" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"attributionurl" VARCHAR,
	"contentlicense" VARCHAR,
	"contenttype" VARCHAR,
	"bytes" BLOB,
	"dominantcolor" VARCHAR,
	"imageformat" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "storybook" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"attributionurl" VARCHAR,
	"contentlicense" VARCHAR,
	"description" VARCHAR,
	"peerreviewstatus" VARCHAR,
	"readinglevel" VARCHAR,
	"title" VARCHAR,
	"coverimage_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkkwr1b53nrmjdvd874vsiql21a" FOREIGN KEY ("coverimage_id") REFERENCES "image" ("id")
);

CREATE TABLE "storybookchapter" (
	"id" BIGINT,
	"sortorder" INTEGER,
	"image_id" BIGINT,
	"storybook_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkcnlksdikth82ec6nia8tb3cps" FOREIGN KEY ("image_id") REFERENCES "image" ("id"),
	 CONSTRAINT "fkaqnew7dipgs9ffkfh2js25l1g" FOREIGN KEY ("storybook_id") REFERENCES "storybook" ("id")
);

CREATE TABLE "storybookparagraph" (
	"id" BIGINT,
	"originaltext" VARCHAR,
	"sortorder" INTEGER,
	"audio_id" BIGINT,
	"storybookchapter_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkdna2npdcgkq74v2306anb4f6s" FOREIGN KEY ("storybookchapter_id") REFERENCES "storybookchapter" ("id"),
	 CONSTRAINT "fkhlje4yegkr07g2sirmvhq1ldd" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "storybookparagraph_word" (
	"storybookparagraph_id" BIGINT,
	"words_id" BIGINT,
	"words_order" INTEGER,
	 PRIMARY KEY ("storybookparagraph_id","words_order"),
	 CONSTRAINT "fkecjq9ll62036jtbwl3g9vytg8" FOREIGN KEY ("words_id") REFERENCES "word" ("id"),
	 CONSTRAINT "fk6kx5ydfx49dfl5oy44bold81k" FOREIGN KEY ("storybookparagraph_id") REFERENCES "storybookparagraph" ("id")
);

CREATE TABLE "image_word" (
	"image_id" BIGINT,
	"words_id" BIGINT,
	 PRIMARY KEY ("image_id","words_id"),
	 CONSTRAINT "fko4boxy1gphgg94k7gsyyf2gkh" FOREIGN KEY ("words_id") REFERENCES "word" ("id"),
	 CONSTRAINT "fkm6hxhjn1og47ovf4xyt6uaqff" FOREIGN KEY ("image_id") REFERENCES "image" ("id")
);

CREATE TABLE "image_numeracyskills" (
	"image_id" BIGINT,
	"numeracyskills" VARCHAR,
	 CONSTRAINT "fklsmoxnf75p3c9bsstqxjy39cx" FOREIGN KEY ("image_id") REFERENCES "image" ("id")
);

CREATE TABLE "image_number" (
	"image_id" BIGINT,
	"numbers_id" BIGINT,
	 PRIMARY KEY ("image_id","numbers_id"),
	 CONSTRAINT "fk70i88cwc0frkrx6lo2hjuav4v" FOREIGN KEY ("image_id") REFERENCES "image" ("id"),
	 CONSTRAINT "fkitwj5vppcji5now11mp8icipa" FOREIGN KEY ("numbers_id") REFERENCES "number" ("id")
);

CREATE TABLE "image_literacyskills" (
	"image_id" BIGINT,
	"literacyskills" VARCHAR,
	 CONSTRAINT "fkase42u556a5hkq1qau359sohp" FOREIGN KEY ("image_id") REFERENCES "image" ("id")
);

CREATE TABLE "image_letter" (
	"image_id" BIGINT,
	"letters_id" BIGINT,
	 PRIMARY KEY ("image_id","letters_id"),
	 CONSTRAINT "fk9pi4lblfl1s807tlif82cm5mt" FOREIGN KEY ("letters_id") REFERENCES "letter" ("id"),
	 CONSTRAINT "fk4gkpmcffc4upm7mrudt4clux4" FOREIGN KEY ("image_id") REFERENCES "image" ("id")
);

CREATE TABLE "emoji" (
	"id" BIGINT,
	"contentstatus" VARCHAR,
	"revisionnumber" INTEGER,
	"timelastupdate" TIMESTAMP,
	"usagecount" INTEGER,
	"glyph" VARCHAR,
	"unicodeemojiversion" DOUBLE,
	"unicodeversion" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emoji_word" (
	"emoji_id" BIGINT,
	"words_id" BIGINT,
	 PRIMARY KEY ("emoji_id","words_id"),
	 CONSTRAINT "fkbkw2j0k8qfhx43docakb9j5ve" FOREIGN KEY ("words_id") REFERENCES "word" ("id"),
	 CONSTRAINT "fklwplucw359d2d5i4yelfkwy6f" FOREIGN KEY ("emoji_id") REFERENCES "emoji" ("id")
);

CREATE TABLE "device" (
	"id" BIGINT,
	"deviceid" VARCHAR,
	"devicemanufacturer" VARCHAR,
	"devicemodel" VARCHAR,
	"deviceserial" VARCHAR,
	"osversion" INTEGER,
	"remoteaddress" VARCHAR,
	"timeregistered" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dbmigration" (
	"id" BIGINT,
	"calendar" TIMESTAMP,
	"script" VARCHAR,
	"version" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contributor" (
	"id" BIGINT,
	"email" VARCHAR,
	"firstname" VARCHAR,
	"imageurl" VARCHAR,
	"lastname" VARCHAR,
	"motivation" VARCHAR,
	"occupation" VARCHAR,
	"provideridgithub" VARCHAR,
	"provideridgoogle" VARCHAR,
	"provideridweb3" VARCHAR,
	"registrationtime" TIMESTAMP,
	"usernamegithub" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wordcontributionevent" (
	"id" BIGINT,
	"comment" VARCHAR,
	"revisionnumber" INTEGER,
	"time" TIMESTAMP,
	"timespentms" BIGINT,
	"contributor_id" BIGINT,
	"word_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkkwqjkxvg3rvmp1kys6fr8blwq" FOREIGN KEY ("word_id") REFERENCES "word" ("id"),
	 CONSTRAINT "fkrsen7udud4svhc32e3rhkcmnu" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id")
);

CREATE TABLE "wordpeerreviewevent" (
	"id" BIGINT,
	"approved" BOOLEAN,
	"comment" VARCHAR,
	"time" TIMESTAMP,
	"contributor_id" BIGINT,
	"wordcontributionevent_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkjyi59inavblt0afri8vd3xhw1" FOREIGN KEY ("wordcontributionevent_id") REFERENCES "wordcontributionevent" ("id"),
	 CONSTRAINT "fkp3i671x4kb823ayc73381gk33" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id")
);

CREATE TABLE "storybookcontributionevent" (
	"id" BIGINT,
	"comment" VARCHAR,
	"revisionnumber" INTEGER,
	"time" TIMESTAMP,
	"timespentms" BIGINT,
	"contributor_id" BIGINT,
	"storybook_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk3s4f77htgff63dqy4diam9fc9" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id"),
	 CONSTRAINT "fkpuk0ynailkg93eiaf62tn2phy" FOREIGN KEY ("storybook_id") REFERENCES "storybook" ("id")
);

CREATE TABLE "storybookpeerreviewevent" (
	"id" BIGINT,
	"approved" BOOLEAN,
	"comment" VARCHAR,
	"time" TIMESTAMP,
	"contributor_id" BIGINT,
	"storybookcontributionevent_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkjc6t09q4xff532a4s8jocuvs1" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id"),
	 CONSTRAINT "fke1bnu38w5m0dc0qkeuuxf4g5h" FOREIGN KEY ("storybookcontributionevent_id") REFERENCES "storybookcontributionevent" ("id")
);

CREATE TABLE "numbercontributionevent" (
	"id" BIGINT,
	"comment" VARCHAR,
	"revisionnumber" INTEGER,
	"time" TIMESTAMP,
	"timespentms" BIGINT,
	"contributor_id" BIGINT,
	"number_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk8tr84kkqmavan1jxfmc1pq8h6" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id"),
	 CONSTRAINT "fkkfyssxfqg6x1vygyhjks96m4u" FOREIGN KEY ("number_id") REFERENCES "number" ("id")
);

CREATE TABLE "contributor_roles" (
	"contributor_id" BIGINT,
	"roles" VARCHAR,
	 CONSTRAINT "fkriv03x8alxet23b7b4ivk2vot" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id")
);

CREATE TABLE "audiocontributionevent" (
	"id" BIGINT,
	"comment" VARCHAR,
	"platform" VARCHAR,
	"revisionnumber" INTEGER,
	"time" TIMESTAMP,
	"timespentms" BIGINT,
	"audio_id" BIGINT,
	"contributor_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkk5x3wa0d4qp54r94o7tky3mrt" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id"),
	 CONSTRAINT "fkspea1r50sj31ovaw0cmsrdd1t" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "audiopeerreviewevent" (
	"id" BIGINT,
	"approved" BOOLEAN,
	"comment" VARCHAR,
	"platform" VARCHAR,
	"time" TIMESTAMP,
	"audiocontributionevent_id" BIGINT,
	"contributor_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk9750pa9ak23p1y0lwft00vkch" FOREIGN KEY ("audiocontributionevent_id") REFERENCES "audiocontributionevent" ("id"),
	 CONSTRAINT "fkqacw1s4ljilnjcjp5ldqtbjti" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id")
);

CREATE TABLE "application" (
	"id" BIGINT,
	"applicationstatus" VARCHAR,
	"infrastructural" BOOLEAN,
	"packagename" VARCHAR,
	"contributor_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkn1pft600om9qs7dn754chjk67" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id")
);

CREATE TABLE "wordlearningevent" (
	"id" BIGINT,
	"androidid" VARCHAR,
	"time" TIMESTAMP,
	"learningeventtype" VARCHAR,
	"wordtext" VARCHAR,
	"application_id" BIGINT,
	"word_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk221ytgbt7u8eajdics6a5sloe" FOREIGN KEY ("word_id") REFERENCES "word" ("id"),
	 CONSTRAINT "fkb5jjaetgs99whlxywbi0palby" FOREIGN KEY ("application_id") REFERENCES "application" ("id")
);

CREATE TABLE "storybooklearningevent" (
	"id" BIGINT,
	"androidid" VARCHAR,
	"time" TIMESTAMP,
	"learningeventtype" VARCHAR,
	"application_id" BIGINT,
	"storybook_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk8f7cr6xa4n3kgrmffy7crtcrn" FOREIGN KEY ("application_id") REFERENCES "application" ("id"),
	 CONSTRAINT "fki731lr5iofppbd0lod4pjoufr" FOREIGN KEY ("storybook_id") REFERENCES "storybook" ("id")
);

CREATE TABLE "letterlearningevent" (
	"id" BIGINT,
	"androidid" VARCHAR,
	"time" TIMESTAMP,
	"learningeventtype" VARCHAR,
	"lettertext" VARCHAR,
	"application_id" BIGINT,
	"letter_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkbgt0ocoif6wvshp6lyasfdmq7" FOREIGN KEY ("application_id") REFERENCES "application" ("id"),
	 CONSTRAINT "fkfheqcx945pkedcq0vnlcuayct" FOREIGN KEY ("letter_id") REFERENCES "letter" ("id")
);

CREATE TABLE "applicationversion" (
	"id" BIGINT,
	"bytes" BLOB,
	"checksummd5" VARCHAR,
	"contenttype" VARCHAR,
	"filesizeinkb" INTEGER,
	"icon" BLOB,
	"label" VARCHAR,
	"minsdkversion" INTEGER,
	"timeuploaded" TIMESTAMP,
	"versioncode" INTEGER,
	"versionname" VARCHAR,
	"application_id" BIGINT,
	"contributor_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkf2y9evfvnfd82cot9dhk0ue54" FOREIGN KEY ("application_id") REFERENCES "application" ("id"),
	 CONSTRAINT "fkbmfakjprck5g1jlh74xpmp0j7" FOREIGN KEY ("contributor_id") REFERENCES "contributor" ("id")
);

CREATE TABLE "application_numeracyskills" (
	"application_id" BIGINT,
	"numeracyskills" VARCHAR,
	 CONSTRAINT "fk858mh1kg9x9w8oqip0mkf53tr" FOREIGN KEY ("application_id") REFERENCES "application" ("id")
);

CREATE TABLE "application_literacyskills" (
	"application_id" BIGINT,
	"literacyskills" VARCHAR,
	 CONSTRAINT "fk6m0x1m1hks48tio7hdlcyumqq" FOREIGN KEY ("application_id") REFERENCES "application" ("id")
);
