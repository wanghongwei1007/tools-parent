
-- add 艺术中心企业招聘角色
INSERT INTO public.sys_role (id, createby, createbyid, creationdate, updateby, updatebyid, updatedate, app, name, remark, version_)
  VALUES (702, '管理员', -1, '2018-03-06 08:11:01.916000', '管理员', -1, '2018-03-06 08:11:01.916000', '艺术中心', '企业角色', '企业角色', 1);
-- add 艺术中心学生应聘角色
INSERT INTO public.sys_role (id, createby, createbyid, creationdate, updateby, updatebyid, updatedate, app, name, remark, version_)
  VALUES (703, '管理员', -1, '2018-03-06 08:11:01.916000', '管理员', -1, '2018-03-06 08:11:01.916000', '艺术中心', '学生角色', '学生角色', 1);


-- add 艺术中心数据权限（默认查本人，新建查全部的，为admin准备）
INSERT INTO "public"."sys_data_auth" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "appid", "menuid", "remark", "type", "version_")
  VALUES ('71', '管理员', '-1', '2018-03-09 10:14:38.332', '管理员', '-1', NULL, 'art', 'companyMenu', '', '1', '1');
INSERT INTO "public"."sys_data_auth" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "appid", "menuid", "remark", "type", "version_")
  VALUES ('72', '管理员', '-1', '2018-03-09 10:14:38.332', '管理员', '-1', NULL, 'art', 'recruitMenu', '', '1', '1');
INSERT INTO "public"."sys_data_auth" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "appid", "menuid", "remark", "type", "version_")
  VALUES ('73', '管理员', '-1', '2018-03-09 10:14:38.332', '管理员', '-1', NULL, 'research', 'studentMenu', '', '1', '1');
INSERT INTO "public"."sys_data_auth" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "appid", "menuid", "remark", "type", "version_")
  VALUES ('74', '管理员', '-1', '2018-03-09 10:14:38.332', '管理员', '-1', NULL, 'art', 'artcandidateMenu', '', '1', '1');

-- add 为艺术中心数据权限增加用户（管理员和操作员授权查询全部数据）
INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('71', 'admin', NULL, '2018-03-09 10:37:51.184', 'admin', NULL, '2018-03-09 10:37:51.184', '71', '-1', '1');
INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('72', 'admin', NULL, '2018-03-09 10:37:51.201', 'admin', NULL, '2018-03-09 10:37:51.201', '71', '-2', '1');
INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('73', 'admin', NULL, '2018-03-09 10:37:51.184', 'admin', NULL, '2018-03-09 10:37:51.184', '72', '-1', '1');
INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('74', 'admin', NULL, '2018-03-09 10:37:51.201', 'admin', NULL, '2018-03-09 10:37:51.201', '72', '-2', '1');
  INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('75', 'admin', NULL, '2018-03-09 10:37:51.184', 'admin', NULL, '2018-03-09 10:37:51.184', '73', '-1', '1');
INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('76', 'admin', NULL, '2018-03-09 10:37:51.201', 'admin', NULL, '2018-03-09 10:37:51.201', '73', '-2', '1');
  INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('77', 'admin', NULL, '2018-03-09 10:37:51.184', 'admin', NULL, '2018-03-09 10:37:51.184', '74', '-1', '1');
INSERT INTO "public"."sys_data_auth_user" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "dataauthid", "userid", "version_")
  VALUES ('78', 'admin', NULL, '2018-03-09 10:37:51.201', 'admin', NULL, '2018-03-09 10:37:51.201', '74', '-2', '1');



-- add 为艺术中心角色application授权
DROP SEQUENCE IF EXISTS "public"."sys_role_application_id_seq";
CREATE SEQUENCE "public"."sys_role_application_id_seq"
 START 1;
select setval('sys_role_application_id_seq', max(id)) from sys_role_application;

INSERT INTO "public"."sys_role_application" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "applicationid", "roleid", "version_")
  SELECT nextval('sys_role_application_id_seq') AS id, 'admin' AS createby, NULL AS createbyid, NULL AS creationdate,
       'admin' AS updateby, NULL AS updatebyid, '2018-03-16 14:26:10.215' AS updatedate,
       id AS applicationid, '702' AS roleid, '1' AS version_ FROM sys_application WHERE NAME = '艺术中心'
INSERT INTO "public"."sys_role_application" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "applicationid", "roleid", "version_")
  SELECT nextval('sys_role_application_id_seq') AS id, 'admin' AS createby, NULL AS createbyid, NULL AS creationdate,
       'admin' AS updateby, NULL AS updatebyid, '2018-03-16 14:26:30.22' AS updatedate,
       id AS applicationid, '703' AS roleid, '1' AS version_ FROM sys_application WHERE NAME = '艺术中心'

--add 为艺术中心角色function授权
DROP SEQUENCE IF EXISTS "public"."sys_role_function_id_seq";
CREATE SEQUENCE "public"."sys_role_function_id_seq"
 START 1;
select setval('sys_role_function_id_seq', max(id)) from sys_role_function;

INSERT INTO "public"."sys_role_function" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "functionid", "roleid", "version_")
SELECT nextval('sys_role_function_id_seq') AS id, 'admin' AS createby, NULL AS createbyid, NULL AS creationdate,
       'admin' AS updateby, NULL AS updatebyid, '2018-03-16 14:26:10' AS updatedate,
       a.functionid, '702' AS roleid, '1' AS version_
FROM
(select DISTINCT s.functionid from (
select fun.applicationid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='recruit'
UNION
select fun.parentid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='recruit'
UNION
select fun.id as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='recruit'
UNION
select t.id as functionid from sys_function t where t.parentid in (
	select fun.id from sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='recruit')

UNION
select fun.applicationid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='company'
UNION
select fun.parentid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='company'
UNION
select fun.id as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='company'
UNION
select t.id from sys_function t where t.parentid in (
	select fun.id from sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='company')

) s order by s.functionid) a

INSERT INTO "public"."sys_role_function" ("id", "createby", "createbyid", "creationdate", "updateby", "updatebyid", "updatedate", "functionid", "roleid", "version_")
SELECT nextval('sys_role_function_id_seq') AS id, 'admin' AS createby, NULL AS createbyid, NULL AS creationdate,
       'admin' AS updateby, NULL AS updatebyid, '2018-03-16 14:26:30' AS updatedate,
       a.functionid, '703' AS roleid, '1' AS version_
FROM
(select DISTINCT s.functionid from (
select fun.applicationid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artcandidate'
UNION
select fun.parentid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artcandidate'
UNION
select fun.id as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artcandidate'
UNION
select t.id as functionid from sys_function t where t.parentid in (
	select fun.id from sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artcandidate')

UNION
select fun.applicationid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artstudent'
UNION
select fun.parentid as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artstudent'
UNION
select fun.id as functionid FROM sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artstudent'
UNION
select t.id from sys_function t where t.parentid in (
	select fun.id from sys_function fun, sys_application app WHERE fun.applicationid=app.id and app.name = '艺术中心' and fun.datapermissionkey='artstudent')

) s order by s.functionid) a

