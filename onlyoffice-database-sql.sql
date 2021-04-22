/*
 Navicat Premium Data Transfer

 Source Server         : onlyoffice
 Source Server Type    : PostgreSQL
 Source Server Version : 90600
 Source Host           : localhost:5432
 Source Catalog        : onlyoffice
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90600
 File Encoding         : 65001

 Date: 22/04/2021 17:57:00
*/


-- ----------------------------
-- Table structure for doc_changes
-- ----------------------------
DROP TABLE IF EXISTS "public"."doc_changes";
CREATE TABLE "public"."doc_changes" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "change_id" int4 NOT NULL DEFAULT NULL,
  "user_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "user_id_original" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "user_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "change_data" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "change_date" timestamp(6) NOT NULL DEFAULT NULL
)
;

-- ----------------------------
-- Table structure for task_result
-- ----------------------------
DROP TABLE IF EXISTS "public"."task_result";
CREATE TABLE "public"."task_result" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "status" int2 NOT NULL DEFAULT NULL,
  "status_info" int4 NOT NULL DEFAULT NULL,
  "last_open_date" timestamp(6) NOT NULL DEFAULT NULL,
  "user_index" int4 NOT NULL DEFAULT 1,
  "change_id" int4 NOT NULL DEFAULT 0,
  "callback" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL,
  "baseurl" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL
)
;

-- ----------------------------
-- Records of task_result
-- ----------------------------
INSERT INTO "public"."task_result" VALUES ('596881162088864-V1', 5, -80, '2021-04-22 07:53:49.379', 2, 0, '{"userIndex":1,"callback":"http://172.31.15.5:1010/core/module/item/files/596881162088864/action/sunwayoffice-invoke"}{"userIndex":2,"callback":"http://172.31.15.5:1010/core/module/item/files/596881162088864/action/sunwayoffice-invoke"}', 'http://172.31.15.5');
INSERT INTO "public"."task_result" VALUES ('596910121439648-V1', 5, -80, '2021-04-22 08:34:18.93', 10, 0, '{"userIndex":1,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":2,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":3,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":4,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":5,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":6,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":7,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":8,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":9,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}{"userIndex":10,"callback":"http://172.31.15.5:1010/core/module/item/files/596910121439648/action/sunwayoffice-invoke"}', 'http://172.31.15.5');
INSERT INTO "public"."task_result" VALUES ('596918847885728-V1', 5, -80, '2021-04-22 08:34:38.256', 1, 0, '{"userIndex":1,"callback":"http://172.31.15.5:1010/core/module/item/files/596918847885728/action/sunwayoffice-invoke"}', 'http://172.31.15.5');
INSERT INTO "public"."task_result" VALUES ('596899281842592-V1', 5, -80, '2021-04-22 08:01:14.952', 4, 0, '{"userIndex":1,"callback":"http://172.31.15.5:1010/core/module/item/files/596899281842592/action/sunwayoffice-invoke"}{"userIndex":2,"callback":"http://172.31.15.5:1010/core/module/item/files/596899281842592/action/sunwayoffice-invoke"}{"userIndex":3,"callback":"http://172.31.15.5:1010/core/module/item/files/596899281842592/action/sunwayoffice-invoke"}{"userIndex":4,"callback":"http://172.31.15.5:1010/core/module/item/files/596899281842592/action/sunwayoffice-invoke"}', 'http://172.31.15.5');

-- ----------------------------
-- Primary Key structure for table doc_changes
-- ----------------------------
ALTER TABLE "public"."doc_changes" ADD CONSTRAINT "doc_changes_pkey" PRIMARY KEY ("id", "change_id");

-- ----------------------------
-- Primary Key structure for table task_result
-- ----------------------------
ALTER TABLE "public"."task_result" ADD CONSTRAINT "task_result_pkey" PRIMARY KEY ("id");
