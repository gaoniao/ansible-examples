# Date: 2015-08-10 15:19:35
# Generator: MySQL-Front 5.3  (Build 2.42)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;

#
# Source for table "ActiveType"
#

DROP TABLE IF EXISTS ActiveType;
CREATE TABLE ActiveType (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  activeType int(11) DEFAULT NULL,
  mgr varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ActiveType"
#

INSERT INTO ActiveType VALUES (1,'2015-08-05 16:32:53',1,'admin');



#
# Source for table "AdminUserGroup"
#

DROP TABLE IF EXISTS AdminUserGroup;
CREATE TABLE AdminUserGroup (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  admintype varchar(255)  DEFAULT NULL,
  creator varchar(100)  DEFAULT NULL,
  description varchar(255)  DEFAULT NULL,
  roleName varchar(100)  DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX roleName (roleName, creator) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

#
# Data for table "AdminUserGroup"
#

INSERT INTO AdminUserGroup VALUES (1,'2015-03-05 21:22:08','SUPER_USER','admin','超级管理员','超级管理员');



#
# Source for table "AdminUserGroupWithUser"
#

DROP TABLE IF EXISTS AdminUserGroupWithUser;
CREATE TABLE AdminUserGroupWithUser (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  isuse char(1)  DEFAULT NULL,
  roleId bigint(20) NOT NULL,
  userId bigint(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Data for table "AdminUserGroupWithUser"
#

INSERT INTO AdminUserGroupWithUser VALUES (1,NULL,'T',1,1);

#
# Source for table "AdminUserInfo"
#

DROP TABLE IF EXISTS AdminUserInfo;
CREATE TABLE AdminUserInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  availableDate varchar(255)  DEFAULT NULL,
  creator varchar(255)  DEFAULT NULL,
  dwcompany varchar(255)  DEFAULT NULL,
  icon varchar(255)  DEFAULT NULL,
  isUse char(1)  DEFAULT NULL,
  lastLoginAt datetime DEFAULT NULL,
  lastUpdatePassAt varchar(255)  DEFAULT NULL,
  loginName varchar(255)  DEFAULT NULL,
  loginPass varchar(255)  DEFAULT NULL,
  orgid varchar(255)  DEFAULT NULL,
  userEmail varchar(255)  DEFAULT NULL,
  userName varchar(255)  DEFAULT NULL,
  userPhone varchar(255)  DEFAULT NULL,
  userSex varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY loginName (loginName)
) ENGINE=MyISAM AUTO_INCREMENT=342 DEFAULT CHARSET=utf8;

#
# Data for table "AdminUserInfo"
#

INSERT INTO AdminUserInfo VALUES (1,'2015-03-05 15:01:52',null,'admin',NULL,NULL,'T','2015-08-07 20:27:32','2016-07-16 15:23:33','admin','10c20902b3492e8c23f78dffd639425c',NULL,'admin@3g2win.com',NULL,null,'w');




#
# Source for table "AdminUserPrivilege"
#

DROP TABLE IF EXISTS AdminUserPrivilege;
CREATE TABLE AdminUserPrivilege (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  hoverIcon varchar(255) DEFAULT NULL,
  icon varchar(255) DEFAULT NULL,
  isUse char(1) DEFAULT NULL,
  privilegeId varchar(255) DEFAULT NULL,
  privilegeName varchar(255) DEFAULT NULL,
  configSort int(11) DEFAULT '0',
  privilegeUrl varchar(255) DEFAULT NULL,
  className varchar(255) DEFAULT NULL,
  parentPrivielgeId varchar(255) DEFAULT NULL,
  menueLevel varchar(255) DEFAULT NULL,
  isConfigure char(1) DEFAULT NULL,
  platForm varchar(255) DEFAULT NULL,
  interfaceFlag varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=1451 DEFAULT CHARSET=utf8;

#
# Data for table "AdminUserPrivilege"
#

INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('129', '2014-09-27 09:18:39', null, 'EMM3.2', 'T', 'managerAdmin', '管理员管理', '1', '', 'icon-admin', null, '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('139', '2015-01-22 09:05:25', null, 'EMM3.2', 'T', 'platformAdmin', '平台管理', '2', null, 'icon-ptgl', '', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('3', '2015-01-22 16:00:47', null, 'EMM3.2', 'T', 'platformAdmin12312', '概况信息', '4', '/platAdmin/index', 'icon-secondLevel', 'platformAdmin', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('5', '2015-01-22 16:06:47', null, 'EMM3.2', 'T', 'platformAdmin12312AhouD', '公告管理', '6', '/platAdmin/announIndex', 'icon-secondLevel', 'platformAdmin', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('12', '2015-01-22 17:16:15', null, 'EMM3.2', 'T', 'dadasdas', '平台备份', '9', '/DbBack/index', 'icon-secondLevel', 'platformAdmin', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('11', '2015-01-22 17:50:08', null, 'EMM3.2', 'T', 'SADASD', '平台设置', '8', null, 'icon-secondLevel', 'platformAdmin', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('22', '2015-01-22 17:51:27', null, 'EMM3.2', 'T', 'SFSDF', '邮箱设置', '0', '/plat/setPlatform', 'icon-thirdLevel', 'SADASD', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('24', '2015-01-22 17:52:48', null, 'EMM3.2', 'T', 'FDSFSD', '主题定制', '0', '/plat/getLogoInfo', 'icon-thirdLevel', 'SADASD', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('13', '2015-01-23 11:26:19', null, 'EMM3.2', 'F', 'ZXZX', '日志审计', '50', '/plat/index', 'icon-secondLevel', 'platformAdmin', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('6', '2014-09-27 14:18:39', null, 'EMM3.2', 'T', 'managerAdmin2112', '管理员列表', '1', '/admin/index', 'icon-secondLevel', 'managerAdmin', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('7', '2015-01-21 10:17:53', null, 'EMM3.2', 'T', 'managerAdmin21123', '管理员组管理', '2', '/userGroup/index', 'icon-secondLevel', 'managerAdmin', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('8', '2015-01-21 14:15:40', null, 'EMM3.2', 'T', 'asdad1848', '管理员权限', '3', '/privilege/index', 'icon-secondLevel', 'managerAdmin', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('9', '2015-01-26 09:13:12', null, 'EMM3.2', 'T', 'DSFDSFDSZ', '接入管理', '51', '/insert/webApp', 'icon-secondLevel', 'platformAdmin', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('63', '2015-01-28 10:23:39', null, '应用管理', 'T', 'yingyongguanli', '应用管理', '5', null, 'icon-yygl', 'yingyongguanli', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('17', '2015-01-28 10:24:38', null, '应用管理', 'T', 'yingyongliebiao', '应用列表', '16', '/app/index', 'icon-secondLevel', 'yingyongguanli', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('1', '2015-01-29 11:11:33', null, 'EMM3.2', 'T', 'gonggaoshouye', '首页', '12', null, 'icon-shouye', null, '1', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('2', '2015-01-29 11:18:26', null, 'EMM3.2', 'T', 'ASDASZXCCZ', '概况', '52', '/message/index', 'icon-secondLevel', 'gonggaoshouye', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('65', '2015-01-29 09:05:26', null, '设备管理', 'T', 'deviceManage', '设备管理', '7', null, 'icon-sbgl', '', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('101', '2015-01-29 09:06:25', null, '设备管理', 'T', 'deviceList', '设备列表', '20', '/device/deviceIndex', 'icon-secondLevel', 'deviceManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('110', '2015-01-29 09:07:25', null, '设备管理', 'T', 'deviceBaseconfige', '基础设置', '53', null, 'icon-secondLevel', 'deviceManage', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('111', '2015-01-29 09:08:25', null, '设备管理', 'T', 'devicePushcert', '推送证书', '0', '/pushcert/loadcert', 'icon-thirdLevel', 'deviceBaseconfige', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('112', '2015-01-29 09:09:25', null, '设备管理', 'T', 'deviceFilter', '激活设置', '0', '/deviceFilter/deviceFilterList', 'icon-thirdLevel', 'deviceBaseconfige', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('113', '2015-01-29 09:10:25', null, '设备管理', 'T', 'deviceNetwork', '网络配置', '0', '/appWirelessnet/appWirAndVpnIndex', 'icon-thirdLevel', 'deviceBaseconfige', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('114', '2015-01-29 09:11:25', null, '设备管理', 'T', 'deviceTimeset', '定时设置', '0', '/paramset/loadparam', 'icon-thirdLevel', 'deviceBaseconfige', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('120', '2015-01-29 09:12:25', null, '设备管理', 'T', 'devicemgr', '设备管理', '21', null, 'icon-secondLevel', 'deviceManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('121', '2015-01-29 09:13:25', null, '设备管理', 'T', 'deviceStatic', '资产管理', '0', '/deviceStatistics/deviceStatisticsList', 'icon-thirdLevel', 'devicemgr', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('170', '2015-01-22 17:50:08', '', 'EMM3.2', 'T', 'auditCenter', '审计中心', '11', '', 'icon-secondLevel', 'securityManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('123', '2015-01-29 09:15:25', null, '设备管理', 'T', 'deviceCrossMgr', '越狱管理', '0', '/device/crossedPoolIndex', 'icon-thirdLevel', 'devicemgr', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('64', '2015-01-31 13:48:58', null, '应用商店', 'T', 'yingyongshangdian', '应用商店', '6', null, 'icon-yysd', 'appshopping', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('31', '2015-01-31 13:50:52', null, '应用商店', 'T', 'storeapplist', '应用列表 ', '18', '/store/index', 'icon-secondLevel', 'yingyongshangdian', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('32', '2015-01-31 13:53:07', null, '应用商店', 'T', 'storeapptype', '类别管理', '54', '/appType/typeIndex', 'icon-secondLevel', 'yingyongshangdian', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('33', '2015-01-31 13:54:05', null, '应用商店', 'T', 'yingyongguanggao', '广告管理', '55', '/store/ads/index', 'icon-secondLevel', 'yingyongshangdian', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('34', '2015-01-31 13:54:53', null, '应用商店', 'T', 'storemanage', '商店管理', '19', '/appContainer/index', 'icon-secondLevel', 'yingyongshangdian', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('35', '2015-01-31 14:11:46', null, '应用管理', 'T', 'yingyongzu', '应用组管理', '17', '/app/appGroupIndex', 'icon-secondLevel', 'yingyongguanli', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('49', '2015-01-31 14:54:16', null, '用户管理', 'T', 'yonghuguanli', '用户管理', '4', null, 'icon-yhgl', null, '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('37', '2015-01-31 15:01:19', null, '用户管理', 'T', 'zuzhijigou', '组织机构管理', '14', '/organize/index', 'icon-secondLevel', 'yonghuguanli', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('38', '2015-01-31 15:44:26', null, '用户管理', 'T', 'yuguanli', '认证域管理', '15', '/domain/index', 'icon-secondLevel', 'yonghuguanli', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('21', '2015-01-23 11:26:19', null, 'EMM3.2', 'T', 'DLWL', '围栏设置', '0', '/geomgr/jumpToIndex', 'icon-thirdLevel', 'SADASD', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('66', '2015-03-03 09:13:12', null, '内容管理', 'T', 'contentManage', '内容管理', '8', '', 'icon-nrgl', '', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('130', '2015-03-03 09:13:12', null, '内容管理', 'T', 'publishContentGroupManage', '文档管理', '22', '/contentManage/index?groupFlag=publishContentGroup&Cache-Control=no-cache', 'icon-secondLevel', 'contentManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('131', '2015-03-03 09:13:12', null, '内容管理', 'T', 'programaManage', '栏目管理', '23', '/contentManage/index?groupFlag=programa&Cache-Control=no-cache', 'icon-secondLevel', 'contentManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('67', '2015-03-03 09:13:12', null, '邮件管理', 'T', 'emailManage', '邮件管理', '11', '', 'icon-yjgl', '', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('142', '2015-03-03 09:13:12', null, '邮件管理', 'T', 'emailAuth', '权限设置', '25', '/mailConfige/privigeIndex', 'icon-secondLevel', 'emailManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('141', '2015-03-03 09:13:12', null, '邮件管理', 'T', 'emailBaseConfig', '基本设置', '24', '/mailConfige/loadMailConfige', 'icon-secondLevel', 'emailManage', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('143', '2015-03-03 09:13:12', null, '邮件管理', 'T', 'emailSetting', '邮箱设置', '26', '/mailConfige/loadMailsetting', 'icon-secondLevel', 'emailManage', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('144', '2015-03-03 09:13:12', null, '邮件管理', 'T', 'emailFileConfige', '文件夹同步配置', '27', '/mailConfige/loadFileConfige', 'icon-secondLevel', 'emailManage', '2', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('115', '2015-01-29 09:08:25', null, '设备管理', 'T', 'deviceGeo', '围栏策略', '0', '/geo/geoAndEventIndex', 'icon-thirdLevel', 'deviceBaseconfige', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('124', '2015-04-15 18:37:57', null, '设备管理', 'T', 'deviceWhiteList', '白名单管理', '0', '/whiteList/index', 'icon-thirdLevel', 'devicemgr', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('69', '2015-01-22 09:05:25', null, 'EMM3.2', 'T', 'certtificateManage', '证书管理', '13', '/certManage/navigation', 'icon-secondLevel', 'securityManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('68', '2015-01-22 09:05:25', null, 'EMM3.2', 'T', 'securityManage', '安全管理', '3', null, 'icon-aqgl', 'securityManage', '1', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('51', '2015-05-26 11:38:11', '', '用户管理', 'T', 'YH_zhiwuguanli', '职务管理', '58', '/jobInfo/index', 'icon-thirdLevel', 'YH_jichushezhi', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('39', '2015-05-26 11:38:11', null, '用户管理', 'T', 'jueseguanli', '角色管理', '12', '/roleInfo/index', 'icon-secondLevel', 'securityManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('169', '2015-01-22 09:05:25', '', 'EMM3.2', 'T', 'securityCenter', '安全中心', '10', '', 'icon-secondLevel', 'securityManage', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('161', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'shouquanxuke', '授权许可', '0', '/licence/licenseSetting', 'icon-thirdLevel', 'SADASD', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('164', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'auditSearch', '审计查询', '0', '/security/index2', 'icon-thirdLevel', 'auditCenter', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('165', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'auditChart', '审计报表', '0', '/security/index1', 'icon-thirdLevel', 'auditCenter', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('166', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'auditConfig', '审计配置', '0', '/security/index', 'icon-thirdLevel', 'auditCenter', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('167', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'securitySearch', '安全事件', '0', '/securityCenter/index', 'icon-thirdLevel', 'securityCenter', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('168', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'securityConfig', '事件配置', '0', '/securityCenter/index1', 'icon-thirdLevel', 'securityCenter', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('42', '2015-01-29 11:11:33', null, '用户管理', 'F', 'zuzhijigouliebiao', '组织机构列表', '1', null, 'icon-thirdLevel', 'zuzhijigou', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('43', '2015-01-29 11:11:33', null, '用户管理', 'F', 'yonghuzuguanli', '用户组操作', '2', null, 'icon-thirdLevel', 'zuzhijigou', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('44', '2015-01-29 11:11:33', null, '用户管理', 'F', 'yonghuguanli', '用户操作', '3', null, 'icon-thirdLevel', 'zuzhijigou', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('45', '2015-01-29 11:11:33', null, '用户管理', 'F', 'renzhengyuliebiao', '认证域列表', '4', null, 'icon-thirdLevel', 'yuguanli', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('46', '2015-01-29 11:11:33', null, '用户管理', 'F', 'zhanghaozuguanli', '账号组管理', '5', null, 'icon-thirdLevel', 'yuguanli', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('47', '2015-01-29 11:11:33', null, '用户管理', 'F', 'zhanghaoguanli', '账号管理', '6', null, 'icon-thirdLevel', 'yuguanli', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('70', '2015-01-29 09:06:25', null, '设备管理', 'F', 'deviceListOperation', '基本操作', '1', null, 'icon-thirdLevel', 'deviceList', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('71', '2015-01-29 09:06:25', null, '设备管理', 'F', 'deviceListView', '设备页查看', '2', null, 'icon-thirdLevel', 'deviceList', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('72', '2015-01-29 09:06:25', null, '设备管理', 'F', 'deviceListGroupSet', '组织设备组配置', '3', null, 'icon-thirdLevel', 'deviceList', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('73', '2015-01-29 09:06:25', null, '设备管理', 'F', 'deviceListGroupOperation', '设备组操作', '4', null, 'icon-thirdLevel', 'deviceList', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('132', '2015-03-03 09:13:12', null, '内容管理', 'F', 'contentGroupOperation', '文档组操作', '1', null, 'icon-thirdLevel', 'publishContentGroupManage', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('133', '2015-03-03 09:13:12', null, '内容管理', 'F', 'contentOperation', '文档操作', '2', null, 'icon-thirdLevel', 'publishContentGroupManage', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('50', '2015-05-26 11:38:11', '', '用户管理', 'T', 'YH_jichushezhi', '基础设置', '57', null, 'icon-secondLevel', 'yonghuguanli', '2', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('52', '2015-05-26 11:38:11', '', '用户管理', 'T', 'YH_zhijiguanli', '职级管理', '58', '/positionType/index', 'icon-thirdLevel', 'YH_jichushezhi', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('53', '2015-05-26 11:38:11', '', '用户管理', 'T', 'YH_zuzhileibie', '组织类别', '59', '/orgType/index', 'icon-thirdLevel', 'YH_jichushezhi', '3', 'F', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('54', '2015-05-26 11:38:11', '', '用户管理', 'T', 'duijiepeizhi', '对接配置', '60', '/organize/conf', 'icon-thirdLevel', 'YH_jichushezhi', '3', 'T', 'EMM', 'EMM');
INSERT INTO AdminUserPrivilege(id, createdAt, hoverIcon, icon, isUse, privilegeId, privilegeName, configSort, privilegeUrl, className, parentPrivielgeId, menueLevel, isConfigure, platForm, interfaceFlag) VALUES ('171', '2015-06-18 09:45:11', '', 'EMM3.2', 'T', 'securityIpConfig', '安全配置', '0', '/platAdmin/ipInfo', 'icon-thirdLevel', 'securityCenter', '3', 'F', 'EMM', 'EMM');




#
# Source for table "AppBaseInfo"
#

DROP TABLE IF EXISTS AppBaseInfo;
CREATE TABLE AppBaseInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  activeUser varchar(100)  DEFAULT NULL,
  addByPkgName char(1)  NOT NULL,
  appCategory int(11) DEFAULT NULL,
  appId varchar(255)  DEFAULT NULL,
  appKey varchar(100)  DEFAULT NULL,
  appSource varchar(100)  DEFAULT NULL,
  appType varchar(100)  DEFAULT NULL,
  applyInterfaceStatus char(1)  NOT NULL,
  createdAtMs bigint(20) NOT NULL,
  creator varchar(100)  DEFAULT NULL,
  curVersion varchar(100)  DEFAULT NULL,
  description longtext ,
  downloadCnt bigint(20) NOT NULL,
  greatApp char(1)  NOT NULL,
  iconLoc varchar(100)  DEFAULT NULL,
  isContainer char(1)  NOT NULL,
  isUploadPushCert char(1)  NOT NULL,
  lastCommitAt varchar(100)  DEFAULT NULL,
  name varchar(100)  DEFAULT NULL,
  platform varchar(100)  DEFAULT NULL,
  shortImg1 varchar(255)  DEFAULT NULL,
  shortImg2 varchar(255)  DEFAULT NULL,
  shortImg3 varchar(255)  DEFAULT NULL,
  shortImg4 varchar(255)  DEFAULT NULL,
  startTotal bigint(20) DEFAULT NULL,
  total bigint(20) DEFAULT NULL,
  tag varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY appId (appId)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "AppBaseInfo"
#
INSERT INTO AppBaseInfo (id,createdAt,activeUser,addByPkgName,appCategory,appId,appKey,appSource,appType,applyInterfaceStatus,createdAtMs,creator,curVersion,description,downloadCnt,greatApp,iconLoc,isContainer,isUploadPushCert,lastCommitAt,name,platform,shortImg1,shortImg2,shortImg3,shortImg4,startTotal,total,tag) VALUES (1,'2015-08-04 19:59:13','0','F',3,'EPortal','0647513c-88f1-46c9-b764-b38e19f0e4e6','company','3','F',0,'admin','11.11.0008','企业移动门户是为企业员工提供的统一移动入口。是信息、社交、应用门户的聚合体。帮助员工快速通过获取信息。',4,'T','2015-08-04 19:59:13','T','F','2016-07-27','企业移动门户','android,iphone','','0','2015-08-04 19:59:13','0',0,4,'');
INSERT INTO AppBaseInfo (id,createdAt,activeUser,addByPkgName,appCategory,appId,appKey,appSource,appType,applyInterfaceStatus,createdAtMs,creator,curVersion,description,downloadCnt,greatApp,iconLoc,isContainer,isUploadPushCert,lastCommitAt,name,platform,shortImg1,shortImg2,shortImg3,shortImg4,startTotal,total,tag) VALUES (2,'2016-08-05 18:30:19','0','F',4,'MOBILEOA','appcanmobileoa','company','3','F',1470393019754,'admin','00.00.0001','MOBILEOA',0,'F','','F','F','2016-08-09','正益工作','android,iphone','','','',NULL,0,0,'');




#
# Source for table "AppConfigInfo"
#

DROP TABLE IF EXISTS AppConfigInfo;
CREATE TABLE AppConfigInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  anReportMethod int(11) DEFAULT NULL,
  appDomains varchar(255)  DEFAULT NULL,
  appId varchar(255)  DEFAULT NULL,
  appJsonPolicy longtext ,
  auditStatus int(11) DEFAULT NULL,
  auditType int(11) DEFAULT NULL,
  authType int(11) DEFAULT NULL,
  autoUpdateStatus char(1)  NOT NULL,
  codeAuth char(1)  NOT NULL DEFAULT 'F',
  columnIds varchar(255)  DEFAULT NULL,
  identityValidation char(1)  NOT NULL DEFAULT 'T',
  mySpaceMoreAppSwitch char(1)  NOT NULL,
  mySpaceSwitch char(1)  NOT NULL,
  pushMsgSwitch char(1)  NOT NULL,
  sandboxEncryption char(1)  NOT NULL DEFAULT 'F',
  userWithTermOneToOne char(1)  NOT NULL DEFAULT 'F',
  widgetAdStatus char(1)  NOT NULL,
  widgetCloseHints varchar(255)  DEFAULT NULL,
  widgetSwitch char(1)  NOT NULL,
  enableScreenshot char(1) NOT NULL DEFAULT 'T',
  versionSwitch char(1) NOT NULL DEFAULT 'T',
  PRIMARY KEY (id),
  UNIQUE KEY appId (appId)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "AppConfigInfo"
#
INSERT INTO AppConfigInfo (id,createdAt,anReportMethod,appDomains,appId,appJsonPolicy,auditStatus,auditType,authType,autoUpdateStatus,codeAuth,columnIds,identityValidation,mySpaceMoreAppSwitch,mySpaceSwitch,pushMsgSwitch,sandboxEncryption,userWithTermOneToOne,widgetAdStatus,widgetCloseHints,widgetSwitch,enableScreenshot,versionSwitch) VALUES (1,'2015-08-06 10:07:04',0,'','EPortal',NULL,2,NULL,NULL,'T','F',NULL,'F','T','T','T','F','F','T','','T','T','T');
INSERT INTO AppConfigInfo (id,createdAt,anReportMethod,appDomains,appId,appJsonPolicy,auditStatus,auditType,authType,autoUpdateStatus,codeAuth,columnIds,identityValidation,mySpaceMoreAppSwitch,mySpaceSwitch,pushMsgSwitch,sandboxEncryption,userWithTermOneToOne,widgetAdStatus,widgetCloseHints,widgetSwitch,enableScreenshot,versionSwitch) VALUES (2,'2016-08-05 18:30:20',0,NULL,'MOBILEOA','',2,3,0,'T','F',NULL,'T','F','F','T','T','F','F',NULL,'T','T','T');


DROP TABLE IF EXISTS t_ChannelInfo;
CREATE TABLE t_ChannelInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  appId varchar(255) DEFAULT NULL,
  channelCode varchar(255) DEFAULT NULL,
  channelDesc varchar(255) DEFAULT NULL,
  channelName varchar(255) DEFAULT NULL,
  creatorId bigint(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO t_ChannelInfo (id,createdAt,appId,channelCode,channelDesc,channelName,creatorId) VALUES (1,'2016-08-05 18:30:20','MOBILEOA','0000','默认渠道','默认渠道',0);


#
# Source for table "AppType"
#

DROP TABLE IF EXISTS AppType;
CREATE TABLE AppType (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  description varchar(100)  DEFAULT NULL,
  iconLoc varchar(100)  DEFAULT NULL,
  name varchar(100)  DEFAULT NULL,
  orderNo int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "AppType"
#
INSERT INTO AppType(id,createdAt,description,iconLoc,name,orderNo) VALUES ('1', '2015-09-28 13:44:21', '', '','工具',11);





SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for AuditConfig
-- ----------------------------
DROP TABLE IF EXISTS AuditConfig;
CREATE TABLE AuditConfig (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  privilegeId varchar(255)  DEFAULT NULL,
  privilegeName varchar(255)  DEFAULT NULL,
  isLabel char(1) CHARACTER SET utf8 NOT NULL,
  parentPrivielgeId varchar(255)  DEFAULT NULL,
  menueLevel varchar(255)  DEFAULT NULL,
  auditType varchar(255)  DEFAULT NULL,
  modulType varchar(255)  DEFAULT NULL,
  type varchar(50)  DEFAULT NULL,
  priName varchar(255)  DEFAULT NULL,
  nodeParentId varchar(255)  DEFAULT NULL,
  modulProject varchar(255)  DEFAULT NULL,
  sortField varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of AuditConfig
-- ----------------------------
INSERT INTO AuditConfig VALUES ('56', '2015-05-26 11:38:11', 'managerAdmin', '管理员管理', 'F', '', '1', 'adminAudit', 'audit', 'menu', '管理员管理', null, 'ADMIN', '5');
INSERT INTO AuditConfig VALUES ('57', '2015-05-26 11:38:11', 'platformAdmin', '平台管理', 'F', '', '1', 'adminAudit', 'audit', 'menu', '平台管理', null, 'EMM', '6');
INSERT INTO AuditConfig VALUES ('5', '2015-05-26 11:38:11', 'platformAdmin12312AhouD', '公告管理', 'F', 'platformAdmin', '2', 'adminAudit', 'audit', 'menu', '公告管理', null, 'PLATFORM', '14');
INSERT INTO AuditConfig VALUES ('1804', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10005', '邮箱设置', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10003', '3', 'privilegeAudit', 'audit', 'menu', '邮箱设置', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('6', '2015-05-26 11:38:11', 'managerAdmin2112', '管理员列表', 'F', 'managerAdmin', '2', 'adminAudit', 'audit', 'menu', '管理员列表', null, 'ADMIN', '11');
INSERT INTO AuditConfig VALUES ('7', '2015-05-26 11:38:11', 'managerAdmin21123', '管理员组管理', 'F', 'managerAdmin', '2', 'adminAudit', 'audit', 'menu', '管理员组管理', null, 'ADMIN', '12');
INSERT INTO AuditConfig VALUES ('8', '2015-05-26 11:38:11', 'asdad1848', '管理员权限', 'F', 'managerAdmin', '2', 'adminAudit', 'audit', 'menu', '管理员权限', null, 'ADMIN', '13');
INSERT INTO AuditConfig VALUES ('1782', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e21ffmi362', '设置事件动作', 'F', 'securitypricenterMgr', '', '', '', 'node', '设置事件动作', '', '', '500');
INSERT INTO AuditConfig VALUES ('52', '2015-05-26 11:38:11', 'yingyongguanli', '应用管理', 'F', 'yingyongguanli', '1', 'adminAudit', 'audit', 'menu', '应用管理', null, 'MAM', '2');
INSERT INTO AuditConfig VALUES ('17', '2015-05-26 11:38:11', 'zxczx4155', '应用列表', 'F', 'yingyongguanli', '2', 'adminAudit', 'audit', 'menu', '应用列表', null, 'MAM', '16');
INSERT INTO AuditConfig VALUES ('55', '2015-05-26 11:38:11', 'deviceManage', '设备管理', 'F', '', '1', 'adminAudit', 'audit', 'menu', '设备管理', null, 'MDM', '4');
INSERT INTO AuditConfig VALUES ('101', '2015-05-26 11:38:11', 'deviceList', '设备列表', 'F', 'deviceManage', '2', 'adminAudit', 'audit', 'menu', '设备列表', null, null, '18');
INSERT INTO AuditConfig VALUES ('110', '2015-05-26 11:38:11', 'deviceBaseconfige', '基础设置', 'F', 'deviceManage', '2', 'adminAudit', 'audit', 'menu', '基础设置', null, null, '19');
INSERT INTO AuditConfig VALUES ('111', '2015-05-26 11:38:11', 'devicePushcert', '推送证书', 'F', 'deviceBaseconfige', '3', 'adminAudit', 'audit', 'menu', '推送证书', null, null, '100');
INSERT INTO AuditConfig VALUES ('1802', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10003', '平台设置', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10001', '2', 'privilegeAudit', 'audit', 'menu', '平台设置', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('114', '2015-05-26 11:38:11', 'deviceTimeset', '定时设置', 'F', 'deviceBaseconfige', '3', 'adminAudit', 'audit', 'menu', '定时设置', null, null, '101');
INSERT INTO AuditConfig VALUES ('120', '2015-05-26 11:38:11', 'devicemgr', '设备管理', 'F', 'deviceManage', '2', 'adminAudit', 'audit', 'menu', '设备管理', null, null, '20');
INSERT INTO AuditConfig VALUES ('121', '2015-05-26 11:38:11', 'deviceStatic', '资产管理', 'F', 'devicemgr', '3', 'adminAudit', 'audit', 'menu', '资产管理', null, null, '102');
INSERT INTO AuditConfig VALUES ('1954', '2015-05-26 11:38:11', 'zxczx4155grpmgredit', '编辑', 'F', 'zxczx4155grpmgr', '', '', '', 'node', '应用组编辑', '', 'MAM', '431');
INSERT INTO AuditConfig VALUES ('123', '2015-05-26 11:38:11', 'deviceCrossMgr', '越狱管理', 'F', 'devicemgr', '3', 'adminAudit', 'audit', 'menu', '越狱管理', null, null, '103');
INSERT INTO AuditConfig VALUES ('53', '2015-05-26 11:38:11', 'yingyongshangdian', '应用商店', 'F', 'appshopping', '1', 'adminAudit', 'audit', 'menu', '应用商店', null, 'EAS', '3');
INSERT INTO AuditConfig VALUES ('31', '2015-05-26 11:38:11', 'yingyongliebiao', '应用列表 ', 'F', 'yingyongshangdian', '2', 'adminAudit', 'audit', 'menu', '应用列表 ', null, null, '21');
INSERT INTO AuditConfig VALUES ('32', '2015-05-26 11:38:11', 'yingyongleibie', '类别管理', 'F', 'yingyongshangdian', '2', 'adminAudit', 'audit', 'menu', '类别管理', null, null, '22');
INSERT INTO AuditConfig VALUES ('33', '2015-05-26 11:38:11', 'yingyongguanggao', '广告管理', 'F', 'yingyongshangdian', '2', 'adminAudit', 'audit', 'menu', '广告管理', null, null, '23');
INSERT INTO AuditConfig VALUES ('34', '2015-05-26 11:38:11', 'shangdianguanli', '商店管理', 'F', 'yingyongshangdian', '2', 'adminAudit', 'audit', 'menu', '商店管理', null, null, '24');
INSERT INTO AuditConfig VALUES ('51', '2015-05-26 11:38:11', 'yonghuguanli', '用户管理', 'F', '', '1', 'adminAudit', 'audit', 'menu', '用户管理', null, 'MUM', '1');
INSERT INTO AuditConfig VALUES ('37', '2015-05-26 11:38:11', 'zuzhijigou', '组织机构管理', 'F', 'yonghuguanli', '2', 'adminAudit', 'audit', 'menu', '组织机构管理', null, null, '25');
INSERT INTO AuditConfig VALUES ('38', '2015-05-26 11:38:11', 'yuguanli', '认证域管理', 'F', 'yonghuguanli', '2', 'adminAudit', 'audit', 'menu', '认证域管理', null, null, '26');
INSERT INTO AuditConfig VALUES ('129', '2015-05-26 11:38:11', 'contentManage', '内容管理', 'F', '', '1', 'adminAudit', 'audit', 'menu', '内容管理', null, 'MCM', '8');
INSERT INTO AuditConfig VALUES ('130', '2015-05-26 11:38:11', 'publishContentGroupManage', '文档管理', 'F', 'contentManage', '2', 'adminAudit', 'audit', 'menu', '文档管理', null, null, '28');
INSERT INTO AuditConfig VALUES ('131', '2015-05-26 11:38:11', 'programaManage', '栏目管理', 'F', 'contentManage', '2', 'adminAudit', 'audit', 'menu', '栏目管理', null, null, '29');
INSERT INTO AuditConfig VALUES ('140', '2015-05-26 11:38:11', 'emailManage', '邮件管理', 'F', '', '1', 'adminAudit', 'audit', 'menu', '邮件管理', null, 'MEM', '9');
INSERT INTO AuditConfig VALUES ('142', '2015-05-26 11:38:11', 'emailAuth', '权限设置', 'F', 'emailManage', '2', 'adminAudit', 'audit', 'menu', '权限设置', null, null, '30');
INSERT INTO AuditConfig VALUES ('143', '2015-05-26 11:38:11', 'emailSetting', '邮箱设置', 'F', 'emailManage', '2', 'adminAudit', 'audit', 'menu', '邮箱设置', null, null, '31');
INSERT INTO AuditConfig VALUES ('144', '2015-05-26 11:38:11', 'emailFileConfige', '文件夹同步配置', 'F', 'emailManage', '2', 'adminAudit', 'audit', 'menu', '文件夹同步配置', null, null, '32');
INSERT INTO AuditConfig VALUES ('1214', '2015-05-26 11:38:11', 'requestservicelimitover', '请求服务超限', 'F', 'usermumlostloginedev', '', '', '', 'node', '前端用户请求服务超限', '', '', '500');
INSERT INTO AuditConfig VALUES ('124', '2015-05-26 11:38:11', 'deviceWhiteList', '白名单管理', 'F', 'devicemgr', '3', 'adminAudit', 'audit', 'menu', '白名单管理', null, null, '104');
INSERT INTO AuditConfig VALUES ('1810', '2015-07-14 20:58:39', 'adsssdds-c3e2-1564-8cc9-40167e216dm10016', '启动', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10004', '', '', '', 'node', '围栏启用', '', '', '500');
INSERT INTO AuditConfig VALUES ('61', '2015-05-26 11:38:11', 'certtificateManage', '证书管理', 'F', 'securityManage', '2', 'adminAudit', 'audit', 'menu', '证书管理', null, null, '34');
INSERT INTO AuditConfig VALUES ('60', '2015-05-26 11:38:11', 'securityManage', '安全管理', 'F', 'securityManage', '1', 'adminAudit', 'audit', 'menu', '安全管理', null, 'EMM', '7');
INSERT INTO AuditConfig VALUES ('41', '2015-05-26 11:38:11', 'gangweiguanli', '职务管理', 'F', 'gangweiguanlijichushezhi', '3', 'adminAudit', 'audit', 'menu', '职务管理', null, null, '105');
INSERT INTO AuditConfig VALUES ('39', '2015-05-26 11:38:11', 'jueseguanli', '角色管理', 'F', 'securityManage', '2', 'adminAudit', 'audit', 'menu', '角色管理', null, null, '33');
INSERT INTO AuditConfig VALUES ('1949', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg9814', '设备组设置', 'F', 'deviceList', '', '', '', 'node', '设备组设置', '', '', '500');
INSERT INTO AuditConfig VALUES ('160', '2015-05-26 11:38:11', 'IPbaimingdan', 'IP白名单', 'F', 'securityCenterManage', '3', 'adminAudit', 'audit', 'menu', 'IP白名单', null, 'PLATFORM', '109');
INSERT INTO AuditConfig VALUES ('1960', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm722', '添加', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10007', '', '', '', 'node', '授权许可添加', '', '', '430');
INSERT INTO AuditConfig VALUES ('1953', '2015-05-26 11:38:11', 'zxczx4155grpmgradd', '添加', 'F', 'zxczx4155grpmgr', '', '', '', 'node', '应用组添加', '', 'MAM', '430');
INSERT INTO AuditConfig VALUES ('169', '2015-05-26 11:38:11', 'usermumMgr', '用户', 'F', 'preobjauditevent', '2', 'objAudit', 'audit', 'menu', '用户', null, null, null);
INSERT INTO AuditConfig VALUES ('170', '2015-05-26 11:38:11', 'appmamMgr', '应用', 'F', 'preobjauditevent', '2', 'objAudit', 'audit', 'menu', '应用', null, null, null);
INSERT INTO AuditConfig VALUES ('171', '2015-05-26 11:38:11', 'devmamMgr', '设备', 'F', 'preobjauditevent', '2', 'objAudit', 'audit', 'menu', '设备', null, null, null);
INSERT INTO AuditConfig VALUES ('175', '2015-05-26 11:38:11', 'securitypriMgr', '安全管理', 'F', '', '1', 'privilegeAudit', 'audit', 'menu', '安全管理', null, 'EMM', null);
INSERT INTO AuditConfig VALUES ('1801', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10002', '接入管理', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10001', '2', 'privilegeAudit', 'audit', 'menu', '接入管理', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('1948', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg9813', '设备组删除', 'F', 'deviceList', '', '', '', 'node', '设备组删除', '', '', '442');
INSERT INTO AuditConfig VALUES ('980', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1818', '颁发', 'F', 'certtificateManage', '', '', '', 'node', '安全证书颁发', '', null, '500');
INSERT INTO AuditConfig VALUES ('981', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1817', '更新', 'F', 'certtificateManage', '', '', '', 'node', '安全证书更新', '', null, '500');
INSERT INTO AuditConfig VALUES ('1800', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10001', '平台管理', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10001', '1', 'privilegeAudit', 'audit', 'menu', '平台管理', null, 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('180', '2015-05-26 11:38:11', 'securitypricenterMgr', '安全中心', 'F', 'securitypriMgr', '2', 'privilegeAudit', 'audit', 'menu', '安全中心', null, null, null);
INSERT INTO AuditConfig VALUES ('181', '2015-05-26 11:38:11', 'auditpricenterMgr', '审计中心', 'F', 'securitypriMgr', '2', 'privilegeAudit', 'audit', 'menu', '审计中心', null, null, null);
INSERT INTO AuditConfig VALUES ('182', '2015-05-26 11:38:11', 'appmamstaMgr', '应用管理', 'F', 'appmamstaMgr', '1', 'strategyAudit', 'audit', 'menu', '应用管理', null, 'MAM', null);
INSERT INTO AuditConfig VALUES ('183', '2015-05-26 11:38:11', 'applistsetMgr', '应用列表设置', 'F', 'appmamstaMgr', '2', 'strategyAudit', 'audit', 'menu', '应用列表设置', null, null, null);
INSERT INTO AuditConfig VALUES ('184', '2015-05-26 11:38:11', 'appupdateMgr', '应用升级', 'F', 'appmamstaMgr', '2', 'strategyAudit', 'audit', 'menu', '应用升级', null, null, null);
INSERT INTO AuditConfig VALUES ('185', '2015-05-26 11:38:11', 'appmamdevstaMgr', '设备管理', 'F', '', '1', 'strategyAudit', 'audit', 'menu', '设备管理', null, 'MDM', null);
INSERT INTO AuditConfig VALUES ('186', '2015-05-26 11:38:11', 'devgroupconfig', '设备列表配置', 'F', 'appmamdevstaMgr', '2', 'strategyAudit', 'audit', 'menu', '设备列表配置', null, null, null);
INSERT INTO AuditConfig VALUES ('187', '2015-05-26 11:38:11', 'devbaseonfig', '基础设置', 'F', 'appmamdevstaMgr', '2', 'strategyAudit', 'audit', 'menu', '基础设置', null, null, null);
INSERT INTO AuditConfig VALUES ('188', '2015-05-26 11:38:11', 'devactionconfig', '激活设置', 'F', 'devbaseonfig', '3', 'strategyAudit', 'audit', 'menu', '激活设置', null, null, null);
INSERT INTO AuditConfig VALUES ('189', '2015-05-26 11:38:11', 'devnetconfig', '网络设置', 'F', 'devbaseonfig', '3', 'strategyAudit', 'audit', 'menu', '网络设置', null, null, null);
INSERT INTO AuditConfig VALUES ('190', '2015-05-26 11:38:11', 'diliweilancelve', '围栏策略', 'F', 'devbaseonfig', '3', 'strategyAudit', 'audit', 'menu', '围栏策略', null, null, null);
INSERT INTO AuditConfig VALUES ('192', '2015-05-26 11:38:11', 'membaseMgr', '基础设置', 'F', 'memstaMgr', '2', 'strategyAudit', 'audit', 'menu', '基础设置', null, null, null);
INSERT INTO AuditConfig VALUES ('1940', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cuhyvsjhkjkhsfghtrbSlsjjs6deg022', '白名单应用删除', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '白名单应用删除', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', '', '442');
INSERT INTO AuditConfig VALUES ('198', '2015-05-26 11:38:11', 'ddosbeat', '服务DDOS攻击触发', 'F', '', '1', 'platAudit', 'audit', 'menu', '服务DDOS攻击触发', null, 'EMM', null);
INSERT INTO AuditConfig VALUES ('1993', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1005', '卡片快捷TOP5', 'F', 'shangdianguanli', '', '', '', 'node', '查看卡片分析-快捷TOP5', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', '', '500');
INSERT INTO AuditConfig VALUES ('207', '2015-05-26 11:38:11', 'servicesqlin', '服务SQL注入', 'F', '', '1', 'platAudit', 'audit', 'menu', '服务SQL注入', null, 'EMM', null);
INSERT INTO AuditConfig VALUES ('1986', '2015-05-26 11:38:11', 'platauditplatmgr', '平台管理', 'F', '', '1', 'platAudit', 'audit', 'menu', '平台管理', '', 'EMM', '');
INSERT INTO AuditConfig VALUES ('210', '2015-05-26 11:38:11', 'auditplatmgr', '审计中心', 'F', 'adsssdds-c3e2-11-8cc9-40167e216dg0511', '2', 'platAudit', 'audit', 'menu', '审计中心', null, null, null);
INSERT INTO AuditConfig VALUES ('211', '2015-05-26 11:38:11', 'usermumlostloginerr', '用户', 'F', 'usermumlostlogin', '2', 'objAudit', 'event', 'menu', '', null, null, null);
INSERT INTO AuditConfig VALUES ('212', '2015-05-26 11:38:11', 'usermummodpass', '用户修改密码', 'F', 'usermumlostloginerr', '', '', '', 'node', '用户修改密码', null, null, '500');
INSERT INTO AuditConfig VALUES ('214', '2015-05-26 11:38:11', 'resetpass', '安装黑名单应用', 'F', 'usermumlostloginedev', '', '', '', 'node', '前端用户安装黑名单应用', null, null, '500');
INSERT INTO AuditConfig VALUES ('216', '2015-05-26 11:38:11', 'mamreqservicerelse', '解绑设备', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '解绑设备', null, null, '500');
INSERT INTO AuditConfig VALUES ('217', '2015-05-26 11:38:11', 'mamdevbreakout', '设备越狱', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '设备越狱', null, null, '500');
INSERT INTO AuditConfig VALUES ('218', '2015-05-26 11:38:11', 'removedevdes', '移除描述文件', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '移除设备描述文件', null, null, '500');
INSERT INTO AuditConfig VALUES ('219', '2015-05-26 11:38:11', 'devlmtlogin', '限制登录', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '设备限制登录', null, null, '500');
INSERT INTO AuditConfig VALUES ('220', '2015-05-26 11:38:11', 'devlmtaction', '限制激活', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '设备限制激活', null, null, '500');
INSERT INTO AuditConfig VALUES ('221', '2015-05-26 11:38:11', 'weilancelueaction', '围栏策略生效', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '围栏策略生效', null, null, '500');
INSERT INTO AuditConfig VALUES ('222', '2015-05-26 11:38:11', 'blacklisttestsetmmmms', '应用管理', 'F', 'blacklisttestsetmmmms', '1', 'strategyAudit', 'event', 'menu', '应用管理', null, 'MAM', null);
INSERT INTO AuditConfig VALUES ('223', '2015-05-26 11:38:11', 'blacklisttestnotice', '修改黑名单策略', 'F', 'blacklisttestsetyingy', '', '', '', 'node', '修改黑名单策略', 'blacklisttestlimt12sd', null, '500');
INSERT INTO AuditConfig VALUES ('226', '2015-05-26 11:38:11', 'whitelisttestset', '修改白名单策略', 'F', 'blacklisttestsetyingy', '', '', '', 'node', '修改白名单策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('228', '2015-05-26 11:38:11', 'definedevalimt', '定义设备激活策略', 'F', 'blacklisttestsetyingyjichu', '', '', '', 'node', '定义设备激活策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('229', '2015-05-26 11:38:11', 'modifydevalimt', '修改设备限制列表', 'F', 'blacklisttestsetyingyjichu', '', '', '', 'node', '修改设备限制列表', null, null, '500');
INSERT INTO AuditConfig VALUES ('1019', '2015-05-26 11:38:11', 'servicelostplatbackup', '平台数据备份', 'F', '', '1', 'platAudit', 'event', 'menu', '平台数据备份', '', 'EMM', null);
INSERT INTO AuditConfig VALUES ('235', '2015-05-26 11:38:11', 'closesecuritytest', '关闭安全检测', 'F', 'opensecuritytestctrconfig', '', '', '', 'node', '关闭安全检测', null, null, '500');
INSERT INTO AuditConfig VALUES ('236', '2015-05-26 11:38:11', 'modifysecurityset', '修改安全配置', 'F', 'opensecuritytestctrconfig', '', '', '', 'node', '修改安全配置', null, null, '500');
INSERT INTO AuditConfig VALUES ('237', '2015-05-26 11:38:11', 'definesecurityconfig', '定义安全策略', 'F', 'opensecuritytestctrconfig', '', '', '', 'node', '定义安全策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('238', '2015-05-26 11:38:11', 'modifysecurityconfig', '修改安全策略', 'F', 'opensecuritytestctrconfig', '', '', '', 'node', '修改安全策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('239', '2015-05-26 11:38:11', 'openauditlog', '开启审计日志', 'F', 'opensecuritytestauconfig', '', '', '', 'node', '开启审计日志', null, null, '500');
INSERT INTO AuditConfig VALUES ('240', '2015-05-26 11:38:11', 'closeauditlog', '关闭审计日志', 'F', 'opensecuritytestauconfig', '', '', '', 'node', '关闭审计日志安全事件', null, null, '500');
INSERT INTO AuditConfig VALUES ('242', '2015-05-26 11:38:11', 'modifyauditcelue', '修改审计策略', 'F', 'opensecuritytestauconfig', '', '', '', 'node', '修改审计策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('243', '2015-05-26 11:38:11', 'adminloginplatssfds', '登录平台', 'F', 'platadminloginplatasds', '', '', '', 'node', '登录平台', null, null, '500');
INSERT INTO AuditConfig VALUES ('244', '2015-05-26 11:38:11', 'admincloseplat', '退出平台', 'F', 'platadminloginplatasds', '', '', '', 'node', '退出平台', null, null, '500');
INSERT INTO AuditConfig VALUES ('1989', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1001', '卡片概览', 'F', 'shangdianguanli', '', '', '', 'node', '查看卡片分析-卡片概览', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', '', '500');
INSERT INTO AuditConfig VALUES ('1992', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1004', '卡片访问人数', 'F', 'shangdianguanli', '', '', '', 'node', '查看卡片分析-访问人数', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', '', '500');
INSERT INTO AuditConfig VALUES ('246', '2015-05-26 11:38:11', 'admineditpass', '管理员修改密码', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '管理员修改密码', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('247', '2015-05-26 11:38:11', 'adminresetpass', '重置密码', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '重置密码', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('248', '2015-05-26 11:38:11', 'adminaccountopen', '帐号开启', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '账号开启', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('249', '2015-05-26 11:38:11', 'adminaccountclose', '帐号关闭', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '账号关闭', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('250', '2015-05-26 11:38:11', 'adminaccountlost', '帐号过期', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '帐号过期', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('251', '2015-05-26 11:38:11', 'admincreat', '创建管理员', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '创建管理员', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('252', '2015-05-26 11:38:11', 'admindela', '删除管理员', 'F', 'adminloginplatasdsadmin', '', '', '', 'node', '删除管理员', null, 'ADMIN', '451');
INSERT INTO AuditConfig VALUES ('253', '2015-05-26 11:38:11', 'admingroupmove', '管理员组变更', 'F', 'adminlogigroupdsadmin', '', '', '', 'node', '管理员组变更', null, null, '500');
INSERT INTO AuditConfig VALUES ('256', '2015-05-26 11:38:11', 'adminrolepriset', '管理员组权限设置', 'F', 'adminlogigroupdsadmin', '', '', '', 'node', '管理员组权限设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('260', '2015-05-26 11:38:11', 'serviceddos', '服务DDOS攻击', 'F', '', '1', 'platAudit', 'event', 'menu', '服务DDOS攻击', null, 'EMM', null);
INSERT INTO AuditConfig VALUES ('261', '2015-05-26 11:38:11', 'servicesqlin', '服务SQL注入', 'F', '', '1', 'platAudit', 'event', 'menu', '服务SQL注入', null, 'EMM', null);
INSERT INTO AuditConfig VALUES ('1805', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10006', '主题定制', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10003', '3', 'privilegeAudit', 'audit', 'menu', '主题定制', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('1438', '2015-05-26 11:38:11', '111111111', '编辑', 'F', 'managerAdmin2112', null, null, null, 'node', '管理员编辑', null, 'ADMIN', '431');
INSERT INTO AuditConfig VALUES ('1439', '2015-05-26 11:38:11', '333333333', '帐号开启/关闭', 'F', 'managerAdmin2112', null, null, null, 'node', '管理员帐号开启/关闭', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('1440', '2015-05-26 11:38:11', 'hhhhhhh', '编辑', 'F', 'platformAdmin12312ASD', null, null, null, 'node', '编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('1809', '2015-07-14 20:58:39', 'adsssdds-c3e2-1564-8cc9-40167e216dm10015', '设置事件围栏', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10004', '', '', '', 'node', '设置事件围栏', '', '', '500');
INSERT INTO AuditConfig VALUES ('1444', '2015-05-26 11:38:11', 'llllllllllllllllllllllll', '保存', 'F', 'SFSDF', null, null, null, 'node', '保存', null, null, '500');
INSERT INTO AuditConfig VALUES ('2009', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df281', '安装黑名单应用', 'F', 'appmamMgr', '', '', '', 'node', '对象应用安装黑名单应用', '', '', '500');
INSERT INTO AuditConfig VALUES ('1452', '2015-05-26 11:38:11', '000000000', '通过', 'F', 'zcvcxv', null, null, null, 'node', '接口审核通过', null, 'PLATFORM', '500');
INSERT INTO AuditConfig VALUES ('1453', '2015-05-26 11:38:11', '010101010', '驳回', 'F', 'zcvcxv', null, null, null, 'node', '接口审核驳回', null, 'PLATFORM', '500');
INSERT INTO AuditConfig VALUES ('1454', '2015-05-26 11:38:11', '022020202', '编辑', 'F', 'IPbaimingdan', null, null, '', 'node', 'ip白名单编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('1455', '2015-05-26 11:38:11', '03030303', '添加', 'F', 'IPbaimingdan', null, null, '', 'node', 'ip白名单添加', null, null, '430');
INSERT INTO AuditConfig VALUES ('1456', '2015-05-26 11:38:11', '444444444', '重置密码', 'F', 'managerAdmin2112', null, null, null, 'node', '管理员重置密码', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('1458', '2015-05-26 11:38:11', '666666666', '管理员组变更', 'F', 'managerAdmin2112', null, null, null, 'node', '管理员组变更', null, 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('1459', '2015-05-26 11:38:11', '99999999', '管理员组编辑', 'F', 'managerAdmin21123', null, null, null, 'node', '管理员组编辑', null, 'ADMIN', '441');
INSERT INTO AuditConfig VALUES ('1460', '2015-05-26 11:38:11', 'aaaaaaaa', '管理员组删除', 'F', 'managerAdmin21123', null, null, null, 'node', '管理员组删除', null, 'ADMIN', '442');
INSERT INTO AuditConfig VALUES ('1461', '2015-05-26 11:38:11', 'bbbbbbbb', '管理员组添加', 'F', 'managerAdmin21123', null, null, null, 'node', '管理员组添加', null, 'ADMIN', '440');
INSERT INTO AuditConfig VALUES ('1930', '2015-05-26 11:38:11', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1111', '文档', 'T', 'publishContentGroupManage', '', '', '', 'node', '', '', '', '403');
INSERT INTO AuditConfig VALUES ('1811', '2015-07-14 20:58:39', 'adsssdds-c3e2-1564-8cc9-40167e216dm10017', '设置时间', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10004', '', '', '', 'node', '设置时间', '', '', '500');
INSERT INTO AuditConfig VALUES ('2010', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df282', '服务请求超限', 'F', 'appmamMgr', '', '', '', 'node', '对象应用服务请求超限', '', '', '500');
INSERT INTO AuditConfig VALUES ('1466', '2015-05-26 11:38:11', 'a3cc1976-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'publishContentGroupManage', null, null, null, 'node', '添加文档组', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '430');
INSERT INTO AuditConfig VALUES ('1467', '2015-05-26 11:38:11', 'a3d140d6-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'publishContentGroupManage', null, null, null, 'node', '编辑文档组', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '431');
INSERT INTO AuditConfig VALUES ('1468', '2015-05-26 11:38:11', 'a3d3763a-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'publishContentGroupManage', null, null, null, 'node', '删除文档组', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '432');
INSERT INTO AuditConfig VALUES ('1469', '2015-05-26 11:38:11', 'a3d5eb4a-c3e2-11e4-8cc9-40167e216df1', '新文档提醒', 'F', 'publishContentGroupManage', null, null, null, 'node', '新文档提醒', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '500');
INSERT INTO AuditConfig VALUES ('1470', '2015-05-26 11:38:11', 'a3d7d11c-c3e2-11e4-8cc9-40167e216df1', '同步删除', 'F', 'publishContentGroupManage', null, null, null, 'node', '同步删除', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '442');
INSERT INTO AuditConfig VALUES ('1471', '2015-05-26 11:38:11', 'a3d9c8be-c3e2-11e4-8cc9-40167e216df1', '权限设置', 'F', 'publishContentGroupManage', null, null, null, 'node', '权限设置', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '500');
INSERT INTO AuditConfig VALUES ('1955', '2015-05-26 11:38:11', 'zxczx4155grpmgrdel', '删除', 'F', 'zxczx4155grpmgr', '', '', '', 'node', '应用组删除', '', 'MAM', '432');
INSERT INTO AuditConfig VALUES ('1473', '2015-05-26 11:38:11', 'a3dd58bc-c3e2-11e4-8cc9-40167e216df1', '发布', 'F', 'publishContentGroupManage', null, null, null, 'node', '发布文档', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1111', null, '500');
INSERT INTO AuditConfig VALUES ('1474', '2015-05-26 11:38:11', 'a3df1bf2-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'publishContentGroupManage', null, null, null, 'node', '编辑文档', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1111', null, '431');
INSERT INTO AuditConfig VALUES ('1475', '2015-05-26 11:38:11', 'a3e0e81a-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'publishContentGroupManage', null, null, null, 'node', '删除文档', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1111', null, '432');
INSERT INTO AuditConfig VALUES ('1476', '2015-05-26 11:38:11', 'a3e2a114-c3e2-11e4-8cc9-40167e216df1', '评论管理', 'F', 'publishContentGroupManage', null, null, null, 'node', '评论管理', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1111', null, '500');
INSERT INTO AuditConfig VALUES ('1477', '2015-05-26 11:38:11', 'a3e47782-c3e2-11e4-8cc9-40167e216df1', '公共文档组管理', 'F', 'publishContentGroupManage', null, null, null, 'node', '公共文档组管理', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '500');
INSERT INTO AuditConfig VALUES ('1478', '2015-05-26 11:38:11', 'a3e6444a-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'programaManage', null, null, null, 'node', '添加栏目', null, null, '430');
INSERT INTO AuditConfig VALUES ('1479', '2015-05-26 11:38:11', 'a3e8206c-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'programaManage', null, null, null, 'node', '编辑栏目', null, null, '431');
INSERT INTO AuditConfig VALUES ('1480', '2015-05-26 11:38:11', 'a3e9bf30-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'programaManage', null, null, null, 'node', '删除栏目', null, null, '432');
INSERT INTO AuditConfig VALUES ('1481', '2015-05-26 11:38:11', 'a3eb6aba-c3e2-11e4-8cc9-40167e216df1', '推荐设置', 'F', 'programaManage', null, null, null, 'node', '推荐设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('1482', '2015-05-26 11:38:11', 'a3ed5118-c3e2-11e4-8cc9-40167e216df1', '文档推荐', 'F', 'programaManage', null, null, null, 'node', '文档推荐', null, null, '500');
INSERT INTO AuditConfig VALUES ('1483', '2015-05-26 11:38:11', 'a3ef1dea-c3e2-11e4-8cc9-40167e216df1', '文档栏目切换', 'F', 'programaManage', null, null, null, 'node', '栏目切换', null, null, '500');
INSERT INTO AuditConfig VALUES ('1918', '2015-05-26 11:38:11', 'gangweiguanliduijiepeizhi', '对接配置', 'F', 'gangweiguanlijichushezhi', '3', 'adminAudit', 'audit', 'menu', '对接配置', '', '', '108');
INSERT INTO AuditConfig VALUES ('1486', '2015-05-26 11:38:11', 'a3aaaaec-c3e2-11e4-8cc9-40167e216df1', '域帐号导入', 'F', 'yuguanli', null, null, null, 'node', '域帐号导入', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '460');
INSERT INTO AuditConfig VALUES ('1487', '2015-05-26 11:38:11', 'a3aaaaed-c3e2-11e4-8cc9-40167e216df1', '域帐号导出', 'F', 'yuguanli', null, null, null, 'node', '域帐号导出', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '461');
INSERT INTO AuditConfig VALUES ('1488', '2015-05-26 11:38:11', 'a3aaaaee-c3e2-11e4-8cc9-40167e216df1', '关联帐号', 'F', 'yuguanli', null, null, null, 'node', '关联账号', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '500');
INSERT INTO AuditConfig VALUES ('1489', '2015-05-26 11:38:11', 'a3aaaaef-c3e2-11e4-8cc9-40167e216df1', '开启/关闭帐号', 'F', 'yuguanli', null, null, null, 'node', '开启/关闭账号', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '500');
INSERT INTO AuditConfig VALUES ('1490', '2015-05-26 11:38:11', 'a3aaaaeg-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'yuguanli', null, null, null, 'node', '认证字段编辑', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', null, '431');
INSERT INTO AuditConfig VALUES ('1491', '2015-05-26 11:38:11', 'a3aaaaeh-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'yuguanli', null, null, null, 'node', '认证字段删除', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', null, '432');
INSERT INTO AuditConfig VALUES ('1492', '2015-05-26 11:38:11', 'a3aaaaei-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'yuguanli', null, null, null, 'node', '添加域', 'a3aaaaeq-c3e2-11e4-8cc9-42167m216dg96', null, '430');
INSERT INTO AuditConfig VALUES ('1493', '2015-05-26 11:38:11', 'a3aaaaej-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'yuguanli', null, null, null, 'node', '编辑域', 'a3aaaaeq-c3e2-11e4-8cc9-42167m216dg96', null, '431');
INSERT INTO AuditConfig VALUES ('1494', '2015-05-26 11:38:11', 'a3aaaaek-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'yuguanli', null, null, null, 'node', '删除域', 'a3aaaaeq-c3e2-11e4-8cc9-42167m216dg96', null, '432');
INSERT INTO AuditConfig VALUES ('1816', '2015-05-26 11:38:11', 'gangweiguanlijichushezhi', '基础设置', 'F', 'yonghuguanli', '2', 'adminAudit', 'audit', 'menu', '基础设置', '', '', '27');
INSERT INTO AuditConfig VALUES ('1496', '2015-05-26 11:38:11', 'a3aaaaem-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'yuguanli', null, null, null, 'node', '添加认证字段', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', null, '430');
INSERT INTO AuditConfig VALUES ('1499', '2015-05-26 11:38:11', 'a3aaaaep-c3e2-11e4-8cc9-40167e216df1', '本地域帐号编辑', 'F', 'yuguanli', null, null, null, 'node', '本地域帐号编辑', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '441');
INSERT INTO AuditConfig VALUES ('1500', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216df1', '本地域帐号删除', 'F', 'yuguanli', null, null, null, 'node', '本地域帐号删除', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '442');
INSERT INTO AuditConfig VALUES ('1812', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40jik27e216def1', '添加用户', 'F', 'zuzhijigou', '', '', '', 'node', '添加用户', 'usersetmumuserinfogrp', '', '450');
INSERT INTO AuditConfig VALUES ('1503', '2015-05-26 11:38:11', 'a3aaaaet-c3e2-11e4-8cc9-40167e216df1', '导入', 'F', 'zuzhijigou', null, null, null, 'node', '导入组织机构', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', null, '460');
INSERT INTO AuditConfig VALUES ('1504', '2015-05-26 11:38:11', 'a3aaaaeu-c3e2-11e4-8cc9-40167e216df1', '导出', 'F', 'zuzhijigou', null, null, null, 'node', '导出组织机构', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', null, '461');
INSERT INTO AuditConfig VALUES ('1505', '2015-05-26 11:38:11', 'a3aaaaev-c3e2-11e4-8cc9-40167e216df1', '导入', 'F', 'zuzhijigou', null, null, null, 'node', '导入用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '460');
INSERT INTO AuditConfig VALUES ('1506', '2015-05-26 11:38:11', 'a3aaaaew-c3e2-11e4-8cc9-40167e216df1', '导出', 'F', 'zuzhijigou', null, null, null, 'node', '导出用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '461');
INSERT INTO AuditConfig VALUES ('1507', '2015-05-26 11:38:11', 'a3aaaaex-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'zuzhijigou', null, null, null, 'node', '添加用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '430');
INSERT INTO AuditConfig VALUES ('1508', '2015-05-26 11:38:11', 'a3aaaaey-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'zuzhijigou', null, null, null, 'node', '删除用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '432');
INSERT INTO AuditConfig VALUES ('1509', '2015-05-26 11:38:11', 'a3aaaaez-c3e2-11e4-8cc9-40167e216df1', '帐号设置', 'F', 'zuzhijigou', null, null, null, 'node', '账号设置', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '500');
INSERT INTO AuditConfig VALUES ('1510', '2015-05-26 11:38:11', 'a3aaaaaa-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'zuzhijigou', null, null, null, 'node', '编辑用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '431');
INSERT INTO AuditConfig VALUES ('1513', '2015-05-26 11:38:11', 'a3aaaaad-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'zuzhijigou', null, null, null, 'node', '删除组织机构', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', null, '432');
INSERT INTO AuditConfig VALUES ('1020', '2015-05-26 11:38:11', 'usersetmumaccountgrp', '帐号组', 'T', 'yuguanli', '', '', '', 'node', '', '', null, '408');
INSERT INTO AuditConfig VALUES ('1515', '2015-05-26 11:38:11', 'a3aaaaaf-c3e2-11e4-8cc9-40167e216df1', '关联域同步', 'F', 'yuguanli', null, null, null, 'node', '关联域同步', null, null, '500');
INSERT INTO AuditConfig VALUES ('1516', '2015-05-26 11:38:11', 'b3aaaaae-c3e2-11e4-8cc9-40167e216df1', '应用下架', 'F', 'yingyongliebiao', null, null, null, 'node', '应用下架', null, null, '500');
INSERT INTO AuditConfig VALUES ('1518', '2015-05-26 11:38:11', 'd3aaaaae-c3e2-11e4-8cc9-40167e216df1', '评价显示', 'F', 'yingyongliebiao', null, null, null, 'node', '评价显示', null, null, '500');
INSERT INTO AuditConfig VALUES ('1519', '2015-05-26 11:38:11', 'e3aaaaae-c3e2-11e4-8cc9-40167e216df1', '评价隐藏', 'F', 'yingyongliebiao', null, null, null, 'node', '评价隐藏', null, null, '500');
INSERT INTO AuditConfig VALUES ('1521', '2015-05-26 11:38:11', 'g3aaaaae-c3e2-11e4-8cc9-40167e216df1', '评价删除', 'F', 'yingyongliebiao', null, null, null, 'node', '评价删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1645', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg529', '下架', 'F', 'zxczx4155', '', '', '', 'node', '应用下架', 'adsssdds-c3e2-11e4-8cc9-40167e216d1752', 'MAM', '500');
INSERT INTO AuditConfig VALUES ('1529', '2015-05-26 11:38:11', 'o3aaaaae-c3e2-11e4-8cc9-40167e216df1', '设备关闭/开启', 'F', 'yingyongliebiao', null, null, null, 'node', '设置', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', null, '500');
INSERT INTO AuditConfig VALUES ('662', '2015-05-26 11:38:11', 'adsssdds-c3e2-1aa4-8aa9-40167e216df1n', '编辑', 'F', 'zuzhijigou', '', '', '', 'node', '组织机构编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', null, '431');
INSERT INTO AuditConfig VALUES ('1533', '2015-05-26 11:38:11', 'aaaaaafff-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'gangweiguanlizuzhi', null, null, null, 'node', '组织机构类别添加', '', null, '430');
INSERT INTO AuditConfig VALUES ('1534', '2015-05-26 11:38:11', 'sdfdddss-c3e2-11e4-8cc9-40167e216df1', '删除', 'F', 'gangweiguanlizuzhi', null, null, null, 'node', '组织机构类别删除', '', null, '432');
INSERT INTO AuditConfig VALUES ('1535', '2015-05-26 11:38:11', 'fdsssddfs-c3e2-11e4-8cc9-40167e216df1', '编辑', 'F', 'gangweiguanlizuzhi', null, null, null, 'node', '组织机构类别编辑', '', null, '431');
INSERT INTO AuditConfig VALUES ('1536', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'zuzhijigou', null, null, null, 'node', '组织机构添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', null, '430');
INSERT INTO AuditConfig VALUES ('1537', '2015-05-26 11:38:11', '888888888', '删除', 'F', 'managerAdmin2112', null, null, null, 'node', '管理员删除', null, 'ADMIN', '432');
INSERT INTO AuditConfig VALUES ('1538', '2015-05-26 11:38:11', '777777777', '添加', 'F', 'managerAdmin2112', null, null, null, 'node', '管理员添加', null, 'ADMIN', '430');
INSERT INTO AuditConfig VALUES ('1539', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df11', '密码过期', 'F', 'usermumMgr', null, null, null, 'node', '密码过期', null, null, '500');
INSERT INTO AuditConfig VALUES ('1540', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df12', '用户证书过期', 'F', 'usermumMgr', null, null, null, 'node', '用户证书过期', null, null, '500');
INSERT INTO AuditConfig VALUES ('1541', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df13', '安装用户证书', 'F', 'usermumMgr', null, null, null, 'node', '安装用户证书', null, null, '500');
INSERT INTO AuditConfig VALUES ('1542', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df14', '安装认证码', 'F', 'usermumMgr', null, null, null, 'node', '安装认证码', null, null, '500');
INSERT INTO AuditConfig VALUES ('1544', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df16', '编辑', 'F', 'IPbaimingdane', null, null, null, 'node', '编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('1545', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df19', '添加', 'F', 'jueseguanli', null, null, null, 'node', '角色添加', null, null, '430');
INSERT INTO AuditConfig VALUES ('829', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm76', '口令策略', 'F', 'managerAdmin2112', '', '', '', 'node', '口令策略', '', 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('830', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm76', '登录平台', 'F', 'asdad1848', '', '', '', 'node', '登录平台', '', 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('1549', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df21', '编辑', 'F', 'jueseguanli', null, null, null, 'node', '角色编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('1550', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df22', '删除', 'F', 'jueseguanli', null, null, null, 'node', '角色删除', null, null, '432');
INSERT INTO AuditConfig VALUES ('1551', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df23', '对象移除', 'F', 'jueseguanli', null, null, null, 'node', '对象移除', null, null, '500');
INSERT INTO AuditConfig VALUES ('841', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm87', '地域分析', 'F', 'zxczx4155', '', '', '', 'node', '查看地域分析', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', 'MAM', '500');
INSERT INTO AuditConfig VALUES ('833', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm79', '管理员组权限设置', 'F', 'managerAdmin21123', '', '', '', 'node', '管理员组权限设置', '', 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('1556', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df28', '升级版本', 'F', 'appmamMgr', null, null, null, 'node', '对象应用升级版本', null, null, '500');
INSERT INTO AuditConfig VALUES ('1557', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df29', '绑定设备', 'F', 'devmamMgr', null, null, null, 'node', '绑定设备', null, null, '500');
INSERT INTO AuditConfig VALUES ('1558', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df30', '安装描述文件', 'F', 'devmamMgr', null, null, null, 'node', '安装描述文件', null, null, '500');
INSERT INTO AuditConfig VALUES ('1559', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df31', '应用黑名单设置', 'F', 'yingyongzu', null, null, null, 'node', '应用黑名单设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('1560', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df32', '应用白名单设置', 'F', 'yingyongzu', null, null, null, 'node', '应用白名单设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('1946', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg9811', '设备组添加', 'F', 'deviceList', '', '', '', 'node', '设备组添加', '', '', '440');
INSERT INTO AuditConfig VALUES ('1947', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg9812', '设备组编辑', 'F', 'deviceList', '', '', '', 'node', '设备组编辑', '', '', '441');
INSERT INTO AuditConfig VALUES ('1562', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df34', '公共组文档发布', 'F', 'publishContentGroupManage', null, null, null, 'node', '公共组文档发布', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '500');
INSERT INTO AuditConfig VALUES ('1563', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df35', '公共组文档编辑', 'F', 'publishContentGroupManage', null, null, null, 'node', '公共组文档编辑', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '441');
INSERT INTO AuditConfig VALUES ('1564', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df36', '公共组文档删除', 'F', 'publishContentGroupManage', null, null, null, 'node', '公共组文档删除', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', null, '442');
INSERT INTO AuditConfig VALUES ('1565', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df37', '安全检测开启', 'F', 'securitypricenterMgr', null, null, null, 'node', '安全检测开启', null, null, '500');
INSERT INTO AuditConfig VALUES ('1566', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df38', '安全检测关闭', 'F', 'securitypricenterMgr', null, null, null, 'node', '安全检测关闭', null, null, '500');
INSERT INTO AuditConfig VALUES ('1567', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df39', '修改安全配置', 'F', 'securitypricenterMgr', null, null, null, 'node', '修改安全配置', null, null, '500');
INSERT INTO AuditConfig VALUES ('1568', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df40', '配置安全事件', 'F', 'securitypricenterMgr', null, null, null, 'node', '配置安全事件', null, null, '500');
INSERT INTO AuditConfig VALUES ('1569', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df41', '开启审计日志', 'F', 'auditpricenterMgr', null, null, null, 'node', '开启审计日志', null, null, '500');
INSERT INTO AuditConfig VALUES ('1570', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df42', '关闭审计日志', 'F', 'auditpricenterMgr', null, null, null, 'node', '关闭审计日志', null, null, '500');
INSERT INTO AuditConfig VALUES ('1571', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df43', '定义审计模板', 'F', 'auditpricenterMgr', null, null, null, 'node', '定义审计模板', null, null, '500');
INSERT INTO AuditConfig VALUES ('1572', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df44', '修改审计策略', 'F', 'auditpricenterMgr', null, null, null, 'node', '修改审计策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('1573', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df45', '审计转储', 'F', 'auditpricenterMgr', null, null, null, 'node', '审计转储', null, null, '500');
INSERT INTO AuditConfig VALUES ('1574', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df46', '白名单策略', 'F', 'applistsetMgr', null, null, null, 'node', '白名单策略', null, null, '500');
INSERT INTO AuditConfig VALUES ('1950', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg632', '在线参数删除', 'F', 'zxczx4155', '', '', '', 'node', '在线参数删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', 'MAM', '442');
INSERT INTO AuditConfig VALUES ('1576', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df48', '基础设置', 'F', 'devgroupconfig', null, null, null, 'node', '基础设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('1577', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df49', '密码', 'F', 'devgroupconfig', null, null, null, 'node', '密码', null, null, '500');
INSERT INTO AuditConfig VALUES ('1578', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df50', '限制', 'F', 'devgroupconfig', null, null, null, 'node', '限制', null, null, '500');
INSERT INTO AuditConfig VALUES ('1579', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df51', 'wifi添加', 'F', 'devgroupconfig', null, null, null, 'node', 'wifi添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1580', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df52', 'wifi编辑', 'F', 'devgroupconfig', null, null, null, 'node', 'wifi编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1581', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df53', 'wifi删除', 'F', 'devgroupconfig', null, null, null, 'node', 'wifi删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1582', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df54', 'wifi生效', 'F', 'devgroupconfig', null, null, null, 'node', 'wifi生效', null, null, '500');
INSERT INTO AuditConfig VALUES ('1583', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df55', 'vpn添加', 'F', 'devgroupconfig', null, null, null, 'node', 'vpn添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1584', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df56', 'vpn编辑', 'F', 'devgroupconfig', null, null, null, 'node', 'vpn编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1585', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df57', 'vpn删除', 'F', 'devgroupconfig', null, null, null, 'node', 'vpn删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1586', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df58', 'vpn生效', 'F', 'devgroupconfig', null, null, null, 'node', 'vpn生效', null, null, '500');
INSERT INTO AuditConfig VALUES ('1587', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df59', '激活设置(激活数)', 'F', 'devgroupconfig', null, null, null, 'node', '激活设置(激活数)', null, null, '500');
INSERT INTO AuditConfig VALUES ('1588', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df601', '限制设备添加', 'F', 'devgroupconfig', null, null, null, 'node', '限制设备添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1589', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df61', '地理围栏添加', 'F', 'devgroupconfig', null, null, null, 'node', '地理围栏添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1590', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df62', '地理围栏编辑', 'F', 'devgroupconfig', null, null, null, 'node', '地理围栏编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1591', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df63', '地理围栏删除', 'F', 'devgroupconfig', null, null, null, 'node', '地理围栏删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1592', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df64', '激活数', 'F', 'devactionconfig', null, null, null, 'node', '激活数', null, null, '500');
INSERT INTO AuditConfig VALUES ('1593', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df65', '审核方式', 'F', 'devactionconfig', null, null, null, 'node', '审核方式', null, null, '500');
INSERT INTO AuditConfig VALUES ('1594', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df66', '限制越狱设备激活', 'F', 'devactionconfig', null, null, null, 'node', '限制越狱设备激活', null, null, '500');
INSERT INTO AuditConfig VALUES ('1595', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df67', '限制违规设备登录', 'F', 'devactionconfig', null, null, null, 'node', '限制违规设备登录', null, null, '500');
INSERT INTO AuditConfig VALUES ('1596', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df68', '限制违规设备的添加', 'F', 'devactionconfig', null, null, null, 'node', '限制违规设备的添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1597', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df69', '限制违规设备的编辑', 'F', 'devactionconfig', null, null, null, 'node', '限制违规设备的编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1598', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df70', '限制违规设备的删除', 'F', 'devactionconfig', null, null, null, 'node', '限制违规设备的删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1599', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df71', 'wifi添加', 'F', 'devnetconfig', null, null, null, 'node', 'wifi添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1600', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df72', 'wifi编辑', 'F', 'devnetconfig', null, null, null, 'node', 'wifi编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1601', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df73', 'wifi删除', 'F', 'devnetconfig', null, null, null, 'node', 'wifi删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1602', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df74', 'wifi生效', 'F', 'devnetconfig', null, null, null, 'node', 'wifi生效', null, null, '500');
INSERT INTO AuditConfig VALUES ('1603', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df75', 'vpn添加', 'F', 'devnetconfig', null, null, null, 'node', 'vpn添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1604', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df76', 'vpn编辑', 'F', 'devnetconfig', null, null, null, 'node', 'vpn编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1605', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df77', 'vpn删除', 'F', 'devnetconfig', null, null, null, 'node', 'vpn删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1606', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df78', 'vpn生效', 'F', 'devnetconfig', null, null, null, 'node', 'vpn生效', null, null, '500');
INSERT INTO AuditConfig VALUES ('1607', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df79', 'wifi设置', 'F', 'devnetconfig', null, null, null, 'node', 'wifi设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('1608', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df80', '地理围栏添加', 'F', 'diliweilancelve', null, null, null, 'node', '地理围栏添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1609', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df81', '地理围栏编辑', 'F', 'diliweilancelve', null, null, null, 'node', '地理围栏编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1610', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df82', '地理围栏删除', 'F', 'diliweilancelve', null, null, null, 'node', '地理围栏删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1611', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df83', '事件围栏添加', 'F', 'diliweilancelve', null, null, null, 'node', '事件围栏添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('1612', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df84', '事件围栏编辑', 'F', 'diliweilancelve', null, null, null, 'node', '事件围栏编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('1613', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df85', '事件围栏删除', 'F', 'diliweilancelve', null, null, null, 'node', '事件围栏删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('1615', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df87', '邮件加密', 'F', 'membaseMgr', null, null, null, 'node', '邮件加密', null, null, '500');
INSERT INTO AuditConfig VALUES ('1617', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df89', '邮件压缩传输', 'F', 'membaseMgr', null, null, null, 'node', '邮件压缩传输', null, null, '500');
INSERT INTO AuditConfig VALUES ('1618', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df90', '限制企业外围发送', 'F', 'membaseMgr', null, null, null, 'node', '限制企业外围发送', null, null, '500');
INSERT INTO AuditConfig VALUES ('1619', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df91', '黑名单过滤', 'F', 'membaseMgr', null, null, null, 'node', '黑名单过滤', null, null, '500');
INSERT INTO AuditConfig VALUES ('1938', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df603', '限制设备删除', 'F', 'devgroupconfig', '', '', '', 'node', '限制设备删除', '', '', '442');
INSERT INTO AuditConfig VALUES ('1935', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df632', '事件围栏编辑', 'F', 'devgroupconfig', '', '', '', 'node', '事件围栏编辑', '', '', '441');
INSERT INTO AuditConfig VALUES ('1936', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df633', '事件围栏删除', 'F', 'devgroupconfig', '', '', '', 'node', '事件围栏删除', '', '', '442');
INSERT INTO AuditConfig VALUES ('1626', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df98', '开启', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10005', null, null, null, 'node', '邮箱设置开启', null, 'PLATFORM', '500');
INSERT INTO AuditConfig VALUES ('1627', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df99', '关闭', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10005', null, null, null, 'node', '邮箱设置关闭', null, 'PLATFORM', '500');
INSERT INTO AuditConfig VALUES ('831', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm77', '退出登录', 'F', 'asdad1848', '', '', '', 'node', '退出登录', '', 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('832', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm78', '忘记密码', 'F', 'asdad1848', '', '', '', 'node', '忘记密码', '', 'ADMIN', '500');
INSERT INTO AuditConfig VALUES ('1632', '2015-08-24 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg05', '审计日志定时清理', 'F', 'auditplatmgr', null, null, null, 'node', '审计日志定时清理', null, null, '500');
INSERT INTO AuditConfig VALUES ('1633', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg06', '添加', 'F', 'platformAdmin12312AhouD', null, null, null, 'node', '公告管理添加', null, 'PLATFORM', '430');
INSERT INTO AuditConfig VALUES ('1634', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg07', '编辑', 'F', 'platformAdmin12312AhouD', null, null, null, 'node', '公告管理编辑', null, 'PLATFORM', '431');
INSERT INTO AuditConfig VALUES ('1635', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg08', '删除', 'F', 'platformAdmin12312AhouD', null, null, null, 'node', '公告管理删除', null, 'PLATFORM', '432');
INSERT INTO AuditConfig VALUES ('1638', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg11', '添加', 'F', 'zxczx4155', null, null, null, 'node', '证书添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d176', 'MAM', '430');
INSERT INTO AuditConfig VALUES ('1639', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg12', '停用', 'F', 'zxczx4155', null, null, null, 'node', '证书停用', 'adsssdds-c3e2-11e4-8cc9-40167e216d176', null, '500');
INSERT INTO AuditConfig VALUES ('1640', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg13', '删除', 'F', 'zxczx4155', null, null, null, 'node', '证书删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d176', null, '432');
INSERT INTO AuditConfig VALUES ('1641', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg14', '上架', 'F', 'zxczx4155', null, null, null, 'node', '应用上架', 'adsssdds-c3e2-11e4-8cc9-40167e216d1752', null, '500');
INSERT INTO AuditConfig VALUES ('1642', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg15', '应用开关', 'F', 'zxczx4155', null, null, null, 'node', '应用开关', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('1643', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg16', '数据上报', 'F', 'zxczx4155', null, null, null, 'node', '数据上报', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('658', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def3', '删除', 'F', 'zuzhijigou', '', '', '', 'node', '用户组删除', 'usersetmumuserinfogrp', null, '432');
INSERT INTO AuditConfig VALUES ('656', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def1', '添加', 'F', 'zuzhijigou', '', '', '', 'node', '用户组添加', 'usersetmumuserinfogrp', null, '430');
INSERT INTO AuditConfig VALUES ('657', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def2', '编辑', 'F', 'zuzhijigou', '', '', '', 'node', '用户组编辑', 'usersetmumuserinfogrp', null, '431');
INSERT INTO AuditConfig VALUES ('659', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def4', '设置', 'F', 'zuzhijigou', '', '', '', 'node', '用户组设置', 'usersetmumuserinfogrp', null, '500');
INSERT INTO AuditConfig VALUES ('660', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def5', '组内用户切换', 'F', 'zuzhijigou', '', '', '', 'node', '组内用户切换', 'usersetmumuserinfogrp', null, '500');
INSERT INTO AuditConfig VALUES ('661', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def6', '组内用户移除', 'F', 'zuzhijigou', '', '', '', 'node', '组内用户移除', 'usersetmumuserinfogrp', null, '500');
INSERT INTO AuditConfig VALUES ('983', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1820', '解冻', 'F', 'certtificateManage', '', '', '', 'node', '安全证书解冻', '', null, '500');
INSERT INTO AuditConfig VALUES ('984', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1821', '注销', 'F', 'certtificateManage', '', '', '', 'node', '安全证书注销', '', null, '500');
INSERT INTO AuditConfig VALUES ('664', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg18', '编辑', 'F', 'gangweiguanli', '2', '', '', 'node', '职务的编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('806', '2015-05-26 11:38:11', 'preobjauditevent', '前端事件', 'F', 'preobjauditevent', '1', 'objAudit', 'audit', 'menu', '前端事件', null, null, null);
INSERT INTO AuditConfig VALUES ('673', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg23', '信息推送', 'F', 'zxczx4155', '', '', '', 'node', '信息推送', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('665', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg17', '删除', 'F', 'gangweiguanli', '2', '', '', 'node', '职务的删除', null, null, '432');
INSERT INTO AuditConfig VALUES ('666', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg18', '导入', 'F', 'gangweiguanli', '2', '', '', 'node', '职务导入', null, null, '460');
INSERT INTO AuditConfig VALUES ('667', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg19', '导出', 'F', 'gangweiguanli', '2', '', '', 'node', '职务导出', null, null, '461');
INSERT INTO AuditConfig VALUES ('668', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216df1', '本地域帐号添加', 'F', 'yuguanli', '', '', '', 'node', '本地域帐号添加', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '440');
INSERT INTO AuditConfig VALUES ('669', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216df1', '域帐号分组', 'F', 'yuguanli', '', '', '', 'node', '域帐号分组', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', null, '500');
INSERT INTO AuditConfig VALUES ('670', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def20', '添加', 'F', 'yuguanli', '', '', '', 'node', '帐号组添加', 'usersetmumaccountgrp', null, '430');
INSERT INTO AuditConfig VALUES ('671', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def21', '编辑', 'F', 'yuguanli', '', '', '', 'node', '帐号组编辑', 'usersetmumaccountgrp', null, '431');
INSERT INTO AuditConfig VALUES ('672', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216def22', '设置', 'F', 'yuguanli', '', '', '', 'node', '帐号组设置', 'usersetmumaccountgrp', null, '500');
INSERT INTO AuditConfig VALUES ('674', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg24', '沙箱加密', 'F', 'zxczx4155', '', '', '', 'node', '沙箱加密', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('675', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg25', '认证域', 'F', 'zxczx4155', '', '', '', 'node', '认证域', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('680', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg27', '设备绑定校验', 'F', 'zxczx4155', '', '', '', 'node', '设备绑定校验', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('677', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg28', '帐号身份校验', 'F', 'zxczx4155', '', '', '', 'node', '帐号身份校验', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('678', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg29', '关闭提示', 'F', 'zxczx4155', '', '', '', 'node', '关闭提示', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', null, '500');
INSERT INTO AuditConfig VALUES ('990', '2015-05-26 11:38:11', 'blacklisttestsetyingy', '应用组管理', 'F', 'blacklisttestsetmmmms', '2', 'strategyAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('683', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg34', '下载', 'F', 'zxczx4155', '2', '', '', 'node', '证书下载', 'adsssdds-c3e2-11e4-8cc9-40167e216d176', null, '500');
INSERT INTO AuditConfig VALUES ('991', '2015-05-26 11:38:11', 'blacklisttestsetyingyjichu', '基础设置', 'F', 'blacklisttestsetmmmmsdevice', '2', 'strategyAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('690', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg40', '终端导出', 'F', 'zxczx4155', '', '', '', 'node', '终端导出', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', null, '461');
INSERT INTO AuditConfig VALUES ('691', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg41', '版本添加', 'F', 'zxczx4155', '2', '', '', 'node', '升级版本添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '439');
INSERT INTO AuditConfig VALUES ('693', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg43', '版本删除', 'F', 'zxczx4155', '2', '', '', 'node', '升级版本删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '442');
INSERT INTO AuditConfig VALUES ('694', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg44', '升级包添加', 'F', 'zxczx4155', '', '', '', 'node', '升级包添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '440');
INSERT INTO AuditConfig VALUES ('695', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg45', '升级包编辑', 'F', 'zxczx4155', '2', '', '', 'node', '升级包编辑（强制升级）', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '441');
INSERT INTO AuditConfig VALUES ('696', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg46', '升级包删除', 'F', 'zxczx4155', '2', '', '', 'node', '升级包删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '442');
INSERT INTO AuditConfig VALUES ('697', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg47', '升级包下载', 'F', 'zxczx4155', '', '', '', 'node', '升级包下载', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '500');
INSERT INTO AuditConfig VALUES ('698', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg48', '升级包关闭/开启', 'F', 'zxczx4155', '2', '', '', 'node', '升级包关闭/开启', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', null, '500');
INSERT INTO AuditConfig VALUES ('699', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg49', '灰度发布添加', 'F', 'appupdateMgr', '', '', '', 'node', '灰度发布添加', '', null, '440');
INSERT INTO AuditConfig VALUES ('700', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg50', '灰度发布编辑', 'F', 'appupdateMgr', '', '', '', 'node', '灰度发布编辑', '', null, '441');
INSERT INTO AuditConfig VALUES ('701', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg50', '灰度发布删除', 'F', 'appupdateMgr', '', '', '', 'node', '灰度发布删除', '', null, '442');
INSERT INTO AuditConfig VALUES ('702', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg51', '默认开启/关闭', 'F', 'zxczx4155', '', '', '', 'node', '权限管理默认开启/关闭', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '500');
INSERT INTO AuditConfig VALUES ('703', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg52', '窗口添加', 'F', 'zxczx4155', '', '', '', 'node', '权限管理窗口添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '440');
INSERT INTO AuditConfig VALUES ('704', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg53', '在线参数添加', 'F', 'zxczx4155', '', '', '', 'node', '权限在线参数添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '440');
INSERT INTO AuditConfig VALUES ('705', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg54', '窗口编辑', 'F', 'zxczx4155', '', '', '', 'node', '窗口编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '441');
INSERT INTO AuditConfig VALUES ('706', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg55', '窗口删除', 'F', 'zxczx4155', '', '', '', 'node', '窗口删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '442');
INSERT INTO AuditConfig VALUES ('707', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg56', '窗口开启/关闭', 'F', 'zxczx4155', '', '', '', 'node', '窗口开启/关闭', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '500');
INSERT INTO AuditConfig VALUES ('708', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg57', '添加', 'F', 'zxczx4155', '', '', '', 'node', '渠道添加', 'adsssdds-c3e2-11e4-8cc9-40167e216dm71', null, '430');
INSERT INTO AuditConfig VALUES ('709', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg58', '删除', 'F', 'zxczx4155', '', '', '', 'node', '渠道删除', 'adsssdds-c3e2-11e4-8cc9-40167e216dm71', null, '432');
INSERT INTO AuditConfig VALUES ('710', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg59', '编辑', 'F', 'zxczx4155', '', '', '', 'node', '渠道编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216dm71', null, '431');
INSERT INTO AuditConfig VALUES ('714', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg631', '在线参数编辑', 'F', 'zxczx4155', '', '', '', 'node', '在线参数编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', null, '441');
INSERT INTO AuditConfig VALUES ('982', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1819', '冻结', 'F', 'certtificateManage', '', '', '', 'node', '安全证书冻结', '', null, '500');
INSERT INTO AuditConfig VALUES ('1951', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1752', '应用', 'T', 'zxczx4155', '', '', '', 'node', '', '', '', '417');
INSERT INTO AuditConfig VALUES ('720', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg69', '上传', 'F', 'zxczx4155', '', '', '', 'node', '卡片管理上传', 'adsssdds-c3e2-11e4-8cc9-40167e216d1812', null, '500');
INSERT INTO AuditConfig VALUES ('721', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg70', '删除', 'F', 'zxczx4155', '', '', '', 'node', '卡片管理删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d1812', null, '432');
INSERT INTO AuditConfig VALUES ('722', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg71', '应用组添加', 'F', 'yingyongzu', '', '', '', 'node', '应用组添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('723', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg72', '应用组编辑', 'F', 'yingyongzu', '', '', '', 'node', '应用组编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('724', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg73', '应用组删除', 'F', 'yingyongzu', '', '', '', 'node', '应用组删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('725', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg74', '应用组管理添加应用', 'F', 'yingyongzu', '', '', '', 'node', '应用组管理添加应用', null, null, '500');
INSERT INTO AuditConfig VALUES ('726', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg75', '应用组管理移除应用', 'F', 'yingyongzu', '', '', '', 'node', '应用组管理移除应用', null, null, '500');
INSERT INTO AuditConfig VALUES ('727', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg76', '应用组权限可见', 'F', 'yingyongzu', '', '', '', 'node', '应用组权限可见', null, null, '500');
INSERT INTO AuditConfig VALUES ('728', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg77', '应用组权限可登陆', 'F', 'yingyongzu', '', '', '', 'node', '应用组权限可登陆', null, null, '500');
INSERT INTO AuditConfig VALUES ('729', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg78', '设备分组', 'F', 'deviceStatic', '3', '', '', 'node', '设备分组', null, null, '500');
INSERT INTO AuditConfig VALUES ('730', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg79', '设备删除', 'F', 'deviceStatic', '3', '', '', 'node', '设备删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('731', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg80', '设备添加', 'F', 'deviceStatic', '3', '', '', 'node', '设备添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('732', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg81', '设备导入', 'F', 'deviceStatic', '3', '', '', 'node', '设备导入', null, null, '460');
INSERT INTO AuditConfig VALUES ('733', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg82', '设备导出', 'F', 'deviceStatic', '3', '', '', 'node', '设备导出', null, null, '461');
INSERT INTO AuditConfig VALUES ('734', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg83', '越狱设备注销', 'F', 'deviceCrossMgr', '3', '', '', 'node', '越狱设备注销', null, null, '500');
INSERT INTO AuditConfig VALUES ('735', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg84', '越狱设备删除', 'F', 'deviceCrossMgr', '3', '', '', 'node', '越狱设备删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('736', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg85', '个人企业切换', 'F', 'deviceCrossMgr', '3', '', '', 'node', '个人企业切换', null, null, '500');
INSERT INTO AuditConfig VALUES ('737', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg86', '获取设备信息', 'F', 'deviceCrossMgr', '3', '', '', 'node', '获取设备信息', null, null, '500');
INSERT INTO AuditConfig VALUES ('738', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg87', '越狱通知设置', 'F', 'deviceCrossMgr', '3', '', '', 'node', '越狱通知设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('740', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg88', '白名单组编辑', 'F', 'deviceWhiteList', '3', '', '', 'node', '白名单组编辑', null, null, '441');
INSERT INTO AuditConfig VALUES ('739', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg89', '白名单组添加', 'F', 'deviceWhiteList', '3', '', '', 'node', '白名单组添加', null, null, '440');
INSERT INTO AuditConfig VALUES ('741', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg90', '白名单组删除', 'F', 'deviceWhiteList', '3', '', '', 'node', '白名单组删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('742', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg91', '添加白名单设备', 'F', 'deviceWhiteList', '3', '', '', 'node', '添加白名单设备', null, null, '450');
INSERT INTO AuditConfig VALUES ('743', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg92', '移除白名单设备', 'F', 'deviceWhiteList', '3', '', '', 'node', '移除白名单设备', null, null, '500');
INSERT INTO AuditConfig VALUES ('1952', '2015-05-26 11:38:11', 'zxczx4155grpmgr', '应用组管理', 'F', 'yingyongguanli', '2', 'adminAudit', 'audit', 'menu', '应用组管理', '', 'MAM', '17');
INSERT INTO AuditConfig VALUES ('745', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg94', '密码策略', 'F', 'yuguanli', '', '', '', 'node', '密码策略', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', null, '500');
INSERT INTO AuditConfig VALUES ('746', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg95', '通讯录定时设置', 'F', 'deviceTimeset', '', '', '', 'node', '通讯录定时设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('747', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg96', '流量定时设置', 'F', 'deviceTimeset', '', '', '', 'node', '流量定时设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('748', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg97', '定位定时设置', 'F', 'deviceTimeset', '', '', '', 'node', '定位定时设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('749', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216dg98', '获取设备组设备信息', 'F', 'deviceList', '', '', '', 'node', '获取设备组设备信息', null, null, '500');
INSERT INTO AuditConfig VALUES ('1945', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d10412', '设备丢失状态变更', 'F', 'deviceList', '', '', '', 'node', '设备丢失状态变更', '', '', '500');
INSERT INTO AuditConfig VALUES ('751', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d100', '设备注销', 'F', 'deviceList', '', '', '', 'node', '设备注销', null, null, '500');
INSERT INTO AuditConfig VALUES ('752', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d101', '设备删除', 'F', 'deviceList', '', '', '', 'node', '设备删除', null, null, '442');
INSERT INTO AuditConfig VALUES ('753', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d102', '设备分组', 'F', 'deviceList', '', '', '', 'node', '设备分组', null, null, '500');
INSERT INTO AuditConfig VALUES ('754', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d103', '设备类型设置', 'F', 'deviceList', '', '', '', 'node', '设备类型设置', null, null, '500');
INSERT INTO AuditConfig VALUES ('755', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d104', '设备信息获取', 'F', 'deviceList', '', '', '', 'node', '设备信息获取', null, null, '500');
INSERT INTO AuditConfig VALUES ('756', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d105', '设备锁定', 'F', 'deviceList', '', '', '', 'node', '设备锁定', null, null, '500');
INSERT INTO AuditConfig VALUES ('757', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d106', '设备清除密码', 'F', 'deviceList', '', '', '', 'node', '设备清除密码', null, null, '500');
INSERT INTO AuditConfig VALUES ('758', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d107', '擦除设备', 'F', 'deviceList', '', '', '', 'node', '擦除设备', null, null, '500');
INSERT INTO AuditConfig VALUES ('759', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d108', '设备定位', 'F', 'deviceList', '', '', '', 'node', '设备定位', null, null, '500');
INSERT INTO AuditConfig VALUES ('760', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d104', '获取设备系统日志', 'F', 'deviceList', '', '', '', 'node', '获取设备系统日志', null, null, '500');
INSERT INTO AuditConfig VALUES ('761', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d10411', '设备淘汰状态变更', 'F', 'deviceList', '', '', '', 'node', '设备淘汰状态变更', null, null, '501');
INSERT INTO AuditConfig VALUES ('762', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d105', '推送证书上传', 'F', 'devicePushcert', '', '', '', 'node', '推送证书上传', null, null, '500');
INSERT INTO AuditConfig VALUES ('985', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1822', '下载', 'F', 'certtificateManage', '', '', '', 'node', '安全证书下载', '', null, '500');
INSERT INTO AuditConfig VALUES ('767', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d110', '添加', 'F', 'yingyongleibie', '', '', '', 'node', '应用类别添加', null, null, '430');
INSERT INTO AuditConfig VALUES ('768', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d111', '编辑', 'F', 'yingyongleibie', '', '', '', 'node', '应用类别编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('769', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d112', '删除', 'F', 'yingyongleibie', '', '', '', 'node', '应用类别删除', null, null, '432');
INSERT INTO AuditConfig VALUES ('770', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d113', '上/下移', 'F', 'yingyongleibie', '', '', '', 'node', '应用类别上/下移', null, null, '500');
INSERT INTO AuditConfig VALUES ('771', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d114', '添加', 'F', 'yingyongguanggao', null, null, null, 'node', '广告添加', null, null, '430');
INSERT INTO AuditConfig VALUES ('772', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d115', '编辑', 'F', 'yingyongguanggao', '', '', '', 'node', '广告编辑', null, null, '431');
INSERT INTO AuditConfig VALUES ('773', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d116', '删除', 'F', 'yingyongguanggao', '', '', '', 'node', '广告删除', null, null, '432');
INSERT INTO AuditConfig VALUES ('774', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d117', '上/下移', 'F', 'yingyongguanggao', '', '', '', 'node', '广告上/下移', null, null, '500');
INSERT INTO AuditConfig VALUES ('777', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d120', '数据上报', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置数据上报', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('776', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d119', '开关', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置开关', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('778', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d121', '信息推送', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置信息推送', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('779', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d122', '沙箱加密', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置沙箱加密', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('780', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d123', '认证域', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置认证域', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('937', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d500', '设备白名单', 'F', 'zxczx4155', null, null, null, 'node', '设备白名单', null, null, '500');
INSERT INTO AuditConfig VALUES ('782', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d125', '设备绑定校验', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置设备绑定校验', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('783', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d126', '帐号绑定校验', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置帐号绑定校验', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('784', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d127', '关闭提示', 'F', 'shangdianguanli', '', '', '', 'node', '基础设置关闭提示', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', null, '500');
INSERT INTO AuditConfig VALUES ('785', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d124', '可登陆', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置可登陆', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '500');
INSERT INTO AuditConfig VALUES ('786', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d125', '窗口添加', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置窗口添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '440');
INSERT INTO AuditConfig VALUES ('787', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d126', '窗口编辑', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置窗口编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '441');
INSERT INTO AuditConfig VALUES ('788', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d127', '窗口删除', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置窗口删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '442');
INSERT INTO AuditConfig VALUES ('789', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d128', '在线参数添加', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置在线参数添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '440');
INSERT INTO AuditConfig VALUES ('790', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d129', '在线参数编辑', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置在线参数编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '441');
INSERT INTO AuditConfig VALUES ('791', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d130', '在线参数删除', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置在线参数删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '442');
INSERT INTO AuditConfig VALUES ('792', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d131', '开启/关闭', 'F', 'shangdianguanli', '', '', '', 'node', '权限设置窗口开启/关闭', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', null, '500');
INSERT INTO AuditConfig VALUES ('794', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d133', '版本添加', 'F', 'shangdianguanli', '', '', '', 'node', '商店升级版本添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '440');
INSERT INTO AuditConfig VALUES ('796', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d135', '版本删除', 'F', 'shangdianguanli', '', '', '', 'node', '商店升级版本删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '442');
INSERT INTO AuditConfig VALUES ('797', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d136', '升级包添加', 'F', 'shangdianguanli', '', '', '', 'node', '商店升级包添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '440');
INSERT INTO AuditConfig VALUES ('798', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d137', '升级包编辑', 'F', 'shangdianguanli', '', '', '', 'node', '商店升级包编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '441');
INSERT INTO AuditConfig VALUES ('800', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d139', '升级包删除', 'F', 'shangdianguanli', '', '', '', 'node', '商店升级包删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '442');
INSERT INTO AuditConfig VALUES ('801', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d140', '升级包下载', 'F', 'shangdianguanli', '', '', '', 'node', '升级包下载', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '500');
INSERT INTO AuditConfig VALUES ('802', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d141', '升级包关闭/开启', 'F', 'shangdianguanli', '', '', '', 'node', '商店升级包关闭/开启', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', null, '500');
INSERT INTO AuditConfig VALUES ('805', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d144', '设备关闭/开启', 'F', 'shangdianguanli', '', '', '', 'node', '商店终端设备关闭/开启', 'adsssdds-c3e2-11e4-8cc9-40167e216d172', null, '500');
INSERT INTO AuditConfig VALUES ('807', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d145', '帐号开启/关闭', 'F', 'shangdianguanli', '', '', '', 'node', '商店终端帐号开启/关闭', 'adsssdds-c3e2-11e4-8cc9-40167e216d172', null, '500');
INSERT INTO AuditConfig VALUES ('808', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d146', '数据擦除', 'F', 'shangdianguanli', '', '', '', 'node', '商店终端数据擦除', 'adsssdds-c3e2-11e4-8cc9-40167e216d172', null, '500');
INSERT INTO AuditConfig VALUES ('809', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d147', '解除绑定', 'F', 'shangdianguanli', '', '', '', 'node', '商店终端解除绑定', 'adsssdds-c3e2-11e4-8cc9-40167e216d172', null, '500');
INSERT INTO AuditConfig VALUES ('810', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d148', '导出', 'F', 'shangdianguanli', '', '', '', 'node', '商店终端导出', 'adsssdds-c3e2-11e4-8cc9-40167e216d172', null, '461');
INSERT INTO AuditConfig VALUES ('814', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d152', '添加', 'F', 'shangdianguanli', '', '', '', 'node', '商店证书添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d169', null, '430');
INSERT INTO AuditConfig VALUES ('815', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d153', '删除', 'F', 'shangdianguanli', '', '', '', 'node', '商店证书删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d169', null, '432');
INSERT INTO AuditConfig VALUES ('816', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d154', '停用', 'F', 'shangdianguanli', '', '', '', 'node', '商店证书停用', 'adsssdds-c3e2-11e4-8cc9-40167e216d169', null, '500');
INSERT INTO AuditConfig VALUES ('817', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d156', '下载', 'F', 'shangdianguanli', '', '', '', 'node', '商店证书下载', 'adsssdds-c3e2-11e4-8cc9-40167e216d169', null, '500');
INSERT INTO AuditConfig VALUES ('818', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d157', '删除', 'F', 'shangdianguanli', '', '', '', 'node', '商店评价删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d174', null, '432');
INSERT INTO AuditConfig VALUES ('819', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d158', '导出', 'F', 'shangdianguanli', '', '', '', 'node', '商店评价导出', 'adsssdds-c3e2-11e4-8cc9-40167e216d174', null, '461');
INSERT INTO AuditConfig VALUES ('820', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d159', '邮件可拷贝', 'F', 'emailAuth', '', '', '', 'node', '邮件可拷贝', null, null, '500');
INSERT INTO AuditConfig VALUES ('821', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d160', '邮件可转发', 'F', 'emailAuth', '', '', '', 'node', '邮件可转发', null, null, '500');
INSERT INTO AuditConfig VALUES ('822', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d161', '邮件可下载', 'F', 'emailAuth', '', '', '', 'node', '邮件可下载', null, null, '500');
INSERT INTO AuditConfig VALUES ('2222', '2015-05-26 11:38:11', 'blacklisttestsetmmmmsdevice', '设备管理', 'F', 'blacklisttestsetmmmmsdevice', '1', 'strategyAudit', 'event', 'menu', '应用管理', '', 'MAM', '');
INSERT INTO AuditConfig VALUES ('824', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm71', '渠道管理', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '422');
INSERT INTO AuditConfig VALUES ('825', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm73', '删除', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10007', '', '', '', 'node', '授权许可删除', '', null, '432');
INSERT INTO AuditConfig VALUES ('826', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm72', '上传', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10007', '', '', '', 'node', '授权许可上传', '', null, '500');
INSERT INTO AuditConfig VALUES ('827', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm74', '删除', 'F', 'IPbaimingdan', '', '', '', 'node', 'ip白名单删除', '', null, '432');
INSERT INTO AuditConfig VALUES ('828', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm75', '开关', 'F', 'IPbaimingdan', '', '', '', 'node', 'ip白名单开关', '', null, '500');
INSERT INTO AuditConfig VALUES ('842', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm88', '版本分析', 'F', 'zxczx4155', '', '', '', 'node', '查看版本分析', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('835', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm81', '统计概况', 'F', 'zxczx4155', '', '', '', 'node', '查看统计概况', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('836', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm82', '活跃用户', 'F', 'zxczx4155', '', '', '', 'node', '查看活跃用户', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('837', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm83', '使用频率', 'F', 'zxczx4155', '', '', '', 'node', '查看使用频率', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('838', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm84', '使用时长', 'F', 'zxczx4155', '', '', '', 'node', '查看使用时长', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('839', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm85', '页面访问', 'F', 'zxczx4155', '', '', '', 'node', '查看页面访问', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('840', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm86', '页面转化率', 'F', 'zxczx4155', '', '', '', 'node', '查看页面转化率', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('843', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm89', '渠道分析', 'F', 'zxczx4155', '', '', '', 'node', '查看渠道分析', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('844', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm90', '渠道用户', 'F', 'zxczx4155', '', '', '', 'node', '查看渠道用户', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('845', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm91', '终端和网络-设备', 'F', 'zxczx4155', '', '', '', 'node', '查看终端和网络-设备', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('846', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm92', '终端和网络-操作系统', 'F', 'zxczx4155', '', '', '', 'node', '查看终端和网络-操作系统', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('847', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm93', '终端和网络-手机品牌', 'F', 'zxczx4155', '', '', '', 'node', '查看终端和网络-手机品牌', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('848', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm94', '终端和网络-分辨率', 'F', 'zxczx4155', '', '', '', 'node', '查看终端和网络-分辨率', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('849', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm95', '终端和网络-运营商', 'F', 'zxczx4155', '', '', '', 'node', '查看终端和网络-运营商', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('850', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm96', '终端和网络-联网方式', 'F', 'zxczx4155', '', '', '', 'node', '查看终端和网络-联网方式', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('851', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm97', '事件分析', 'F', 'zxczx4155', '', '', '', 'node', '查看事件分析', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('852', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm98', '错误分析', 'F', 'zxczx4155', '', '', '', 'node', '查看错误分析', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('853', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm99', '应用日志', 'F', 'zxczx4155', '', '', '', 'node', '查看应用日志', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('855', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d101', '事件管理', 'F', 'zxczx4155', '', '', '', 'node', '查看事件管理', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', null, '500');
INSERT INTO AuditConfig VALUES ('856', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d102', '统计概况', 'F', 'zxczx4155', '', '', '', 'node', '导出统计概况', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('857', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d103', '活跃用户', 'F', 'zxczx4155', '', '', '', 'node', '导出活跃用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('858', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d104', '使用频率', 'F', 'zxczx4155', '', '', '', 'node', '导出使用频率', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('859', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d105', '使用时长', 'F', 'zxczx4155', '', '', '', 'node', '导出使用时长', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('860', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d106', '页面访问', 'F', 'zxczx4155', '', '', '', 'node', '导出页面访问', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('861', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d107', '页面转化率', 'F', 'zxczx4155', '', '', '', 'node', '导出页面转化率', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('862', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d108', '地域分析', 'F', 'zxczx4155', '', '', '', 'node', '导出地域分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('863', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d109', '版本分析', 'F', 'zxczx4155', '', '', '', 'node', '导出版本分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('864', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d110', '渠道分析', 'F', 'zxczx4155', '', '', '', 'node', '导出渠道分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('865', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d111', '渠道用户', 'F', 'zxczx4155', '', '', '', 'node', '导出渠道用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('866', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d112', '终端和网络-设备', 'F', 'zxczx4155', '', '', '', 'node', '导出终端和网络-设备', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('867', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d113', '终端和网络-操作系统', 'F', 'zxczx4155', '', '', '', 'node', '导出终端和网络-操作系统', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('868', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d114', '终端和网络-手机品牌', 'F', 'zxczx4155', '', '', '', 'node', '导出终端和网络-手机品牌', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('869', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d115', '终端和网络-分辨率', 'F', 'zxczx4155', '', '', '', 'node', '导出终端和网络-分辨率', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('870', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d116', '终端和网络-运营商', 'F', 'zxczx4155', '', '', '', 'node', '导出终端和网络-运营商', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('871', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d117', '终端和网络-联网方式', 'F', 'zxczx4155', '', '', '', 'node', '导出终端和网络-联网方式', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('872', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d118', '事件分析', 'F', 'zxczx4155', '', '', '', 'node', '导出事件分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('873', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d119', '错误分析', 'F', 'zxczx4155', '', '', '', 'node', '导出错误分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('874', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d120', '应用日志', 'F', 'zxczx4155', '', '', '', 'node', '导出应用日志', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('876', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d122', '事件管理', 'F', 'zxczx4155', '', '', '', 'node', '导出事件管理', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', null, '500');
INSERT INTO AuditConfig VALUES ('879', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d125', '统计概况', 'F', 'shangdianguanli', '', '', '', 'node', '导出统计概况', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('880', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d126', '活跃用户', 'F', 'shangdianguanli', '', '', '', 'node', '导出活跃用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('881', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d127', '使用频率', 'F', 'shangdianguanli', '', '', '', 'node', '导出使用频率', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('882', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d128', '使用时长', 'F', 'shangdianguanli', '', '', '', 'node', '导出使用时长', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('883', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d129', '页面访问', 'F', 'shangdianguanli', '', '', '', 'node', '导出页面访问', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('884', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d130', '页面转化率', 'F', 'shangdianguanli', '', '', '', 'node', '导出页面转化率', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('885', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d131', '地域分析', 'F', 'shangdianguanli', '', '', '', 'node', '导出地域分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('886', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d132', '版本分析', 'F', 'shangdianguanli', '', '', '', 'node', '导出版本分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('887', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d133', '渠道分析', 'F', 'shangdianguanli', '', '', '', 'node', '导出渠道分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('888', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d134', '渠道用户', 'F', 'shangdianguanli', '', '', '', 'node', '导出渠道用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('889', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d135', '终端和网络-设备', 'F', 'shangdianguanli', '', '', '', 'node', '导出终端和网络-设备', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('890', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d136', '终端和网络-操作系统', 'F', 'shangdianguanli', '', '', '', 'node', '导出终端和网络-操作系统', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('891', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d137', '终端和网络-手机品牌', 'F', 'shangdianguanli', '', '', '', 'node', '导出终端和网络-手机品牌', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('892', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d138', '终端和网络-分辨率', 'F', 'shangdianguanli', '', '', '', 'node', '导出终端和网络-分辨率', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('893', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d139', '终端和网络-运营商', 'F', 'shangdianguanli', '', '', '', 'node', '导出终端和网络-运营商', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('894', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d140', '终端和网络-联网方式', 'F', 'shangdianguanli', '', '', '', 'node', '导出终端和网络-联网方式', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('895', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d141', '事件分析', 'F', 'shangdianguanli', '', '', '', 'node', '导出事件分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('896', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d142', '错误分析', 'F', 'shangdianguanli', '', '', '', 'node', '导出错误分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d12', null, '500');
INSERT INTO AuditConfig VALUES ('897', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d143', '应用日志', 'F', 'shangdianguanli', '', '', '', 'node', '导出应用日志', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', null, '500');
INSERT INTO AuditConfig VALUES ('899', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d145', '事件管理', 'F', 'shangdianguanli', '', '', '', 'node', '导出事件管理', 'adsssdds-c3e2-11e4-8cc9-40167e216d12', null, '500');
INSERT INTO AuditConfig VALUES ('901', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d147', '统计概况', 'F', 'shangdianguanli', '', '', '', 'node', '查看统计概况', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('902', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d148', '活跃用户', 'F', 'shangdianguanli', '', '', '', 'node', '查看活跃用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('903', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d149', '使用频率', 'F', 'shangdianguanli', '', '', '', 'node', '查看使用频率', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('904', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d150', '使用时长', 'F', 'shangdianguanli', '', '', '', 'node', '查看使用时长', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('905', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d151', '页面访问', 'F', 'shangdianguanli', '', '', '', 'node', '查看页面访问', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('906', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d152', '页面转化率', 'F', 'shangdianguanli', '', '', '', 'node', '查看页面转化率', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('907', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d153', '地域分析', 'F', 'shangdianguanli', '', '', '', 'node', '查看地域分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('908', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d154', '版本分析', 'F', 'shangdianguanli', '', '', '', 'node', '查看版本分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('909', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d155', '渠道分析', 'F', 'shangdianguanli', '', '', '', 'node', '查看渠道分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('910', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d156', '渠道用户', 'F', 'shangdianguanli', '', '', '', 'node', '查看渠道用户', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('911', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d157', '终端和网络-设备', 'F', 'shangdianguanli', '', '', '', 'node', '查看终端和网络-设备', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('912', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d158', '终端和网络-操作系统', 'F', 'shangdianguanli', '', '', '', 'node', '查看终端和网络-操作系统', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('913', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d159', '终端和网络-手机品牌', 'F', 'shangdianguanli', '', '', '', 'node', '查看终端和网络-手机品牌', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('914', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d160', '终端和网络-分辨率', 'F', 'shangdianguanli', '', '', '', 'node', '查看终端和网络-分辨率', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('915', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d161', '终端和网络-运营商', 'F', 'shangdianguanli', '', '', '', 'node', '查看终端和网络-运营商', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('916', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d162', '终端和网络-联网方式', 'F', 'shangdianguanli', '', '', '', 'node', '查看终端和网络-联网方式', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('917', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d163', '事件分析', 'F', 'shangdianguanli', '', '', '', 'node', '查看事件分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('918', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d164', '错误分析', 'F', 'shangdianguanli', '', '', '', 'node', '查看错误分析', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('919', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d165', '应用日志', 'F', 'shangdianguanli', '', '', '', 'node', '查看应用日志', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('921', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d167', '事件管理', 'F', 'shangdianguanli', '', '', '', 'node', '查看事件管理', 'adsssdds-c3e2-11e4-8cc9-40167e216d146', null, '500');
INSERT INTO AuditConfig VALUES ('922', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d168', '基础设置', 'T', 'shangdianguanli', '', '', '', 'node', '', '', null, '409');
INSERT INTO AuditConfig VALUES ('923', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d169', '证书管理', 'T', 'shangdianguanli', '', '', '', 'node', '', '', null, '413');
INSERT INTO AuditConfig VALUES ('924', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d170', '权限设置', 'T', 'shangdianguanli', '', '', '', 'node', '', '', null, '410');
INSERT INTO AuditConfig VALUES ('925', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d171', '升级管理', 'T', 'shangdianguanli', '', '', '', 'node', '', '', null, '411');
INSERT INTO AuditConfig VALUES ('926', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d172', '终端管理', 'T', 'shangdianguanli', '', '', '', 'node', '', '', null, '412');
INSERT INTO AuditConfig VALUES ('928', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d174', '评价管理', 'T', 'shangdianguanli', '', '', '', 'node', '', '', null, '414');
INSERT INTO AuditConfig VALUES ('929', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d175', '设置', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '418');
INSERT INTO AuditConfig VALUES ('930', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d176', '证书管理', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '423');
INSERT INTO AuditConfig VALUES ('931', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d177', '权限管理', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '419');
INSERT INTO AuditConfig VALUES ('932', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d178', '升级管理', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '420');
INSERT INTO AuditConfig VALUES ('933', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', '终端管理', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '421');
INSERT INTO AuditConfig VALUES ('935', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d181', '接口管理', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '425');
INSERT INTO AuditConfig VALUES ('936', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216sdfw	', '编辑', 'F', 'zxczx4155', '', '', '', 'node', '应用编辑', 'adsssdds-c3e2-11e4-8cc9-40167e216d1752', null, '431');
INSERT INTO AuditConfig VALUES ('941', '2015-05-26 11:38:11', 'o3aaaaae-c3e2-11e4-8cc9-40167e216df100', '帐号关闭/开启', 'F', 'zxczx4155', '', '', '', 'node', '帐号关闭/开启', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', null, '500');
INSERT INTO AuditConfig VALUES ('942', '2015-05-26 11:38:11', 'o3aaaaae-c3e2-11e4-8cc9-40167e216df101', '数据擦除', 'F', 'zxczx4155', '', '', '', 'node', '数据擦除', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', null, '500');
INSERT INTO AuditConfig VALUES ('943', '2015-05-26 11:38:11', 'o3aaaaae-c3e2-11e4-8cc9-40167e216df102', '解除绑定', 'F', 'zxczx4155', '', '', '', 'node', '解除绑定', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', null, '500');
INSERT INTO AuditConfig VALUES ('954', '2015-05-26 11:38:11', 'l3aaaaae-c3e2-11e4-8cc9-40167e216df1', '添加', 'F', 'zxczx4155', '', '', '', 'node', '应用添加', 'adsssdds-c3e2-11e4-8cc9-40167e216d1752', null, '430');
INSERT INTO AuditConfig VALUES ('957', '2015-05-26 11:38:11', 'o3aaaaae-c3e2-11e4-8cc9-40167e216df1', '设备关闭/开启', 'F', 'zxczx4155', '', '', '', 'node', '设置设备关闭/开启', 'adsssdds-c3e2-11e4-8cc9-40167e216d179', null, '500');
INSERT INTO AuditConfig VALUES ('959', '2015-05-26 11:38:11', 'q3aaaaae-c3e2-11e4-8cc9-40167e216df1', '申请', 'F', 'zxczx4155', '', '', '', 'node', '接口申请', 'adsssdds-c3e2-11e4-8cc9-40167e216d181', null, '500');
INSERT INTO AuditConfig VALUES ('960', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d106', '历史查询', 'F', 'zxczx4155', '', '', '', 'node', '历史查询', 'adsssdds-c3e2-11e4-8cc9-40167e216d181', null, '500');
INSERT INTO AuditConfig VALUES ('962', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d108', '删除', 'F', 'zxczx4155', '', '', '', 'node', '应用删除', 'adsssdds-c3e2-11e4-8cc9-40167e216d1752', null, '432');
INSERT INTO AuditConfig VALUES ('971', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', '用户', 'T', 'zuzhijigou', '', '', '', 'node', '', '', null, '400');
INSERT INTO AuditConfig VALUES ('987', '2015-05-26 11:38:11', 'mokuaijierushezhi', '接入管理', 'F', 'platauditplatmgr', '2', 'platAudit', 'audit', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('966', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', '组织机构', 'T', 'zuzhijigou', '', '', '', 'node', '', '', null, '402');
INSERT INTO AuditConfig VALUES ('986', '2015-05-26 11:38:11', 'modelogtitle', '更换logo、主题', 'F', 'titlebindset', '1', '', '', 'node', '更换log/主题', '', 'EMM', null);
INSERT INTO AuditConfig VALUES ('965', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1812', '应用卡片', 'T', 'zxczx4155', '', '', '', 'node', '', '', null, '424');
INSERT INTO AuditConfig VALUES ('1001', '2015-05-26 11:38:11', 'adminloginplatasds', '管理员事件', 'F', 'adminloginplatasds', '1', 'adminAudit', 'event', 'menu', '登录平台', '', 'ADMIN', null);
INSERT INTO AuditConfig VALUES ('1002', '2015-05-26 11:38:11', 'platadminloginplatasds', '平台操作', 'F', 'adminloginplatasds', '2', 'adminAudit', 'event', 'menu', '登录平台', '', null, null);
INSERT INTO AuditConfig VALUES ('1003', '2015-05-26 11:38:11', 'adminloginplatasdsadmin', '管理员管理', 'F', 'adminloginplatasds', '2', 'adminAudit', 'event', 'menu', '登录平台', '', 'ADMIN', null);
INSERT INTO AuditConfig VALUES ('1004', '2015-05-26 11:38:11', 'adminlogigroupdsadmin', '管理员组管理', 'F', 'adminloginplatasds', '2', 'adminAudit', 'event', 'menu', '管理员组管理', '', null, null);
INSERT INTO AuditConfig VALUES ('1005', '2015-05-26 11:38:11', 'usermumlostlogin', '对象事件', 'F', 'usermumlostlogin', '1', 'objAudit', 'event', 'menu', '', '', 'EMM', null);
INSERT INTO AuditConfig VALUES ('1006', '2015-05-26 11:38:11', 'sdfsssdsg17sdfsdsdjhytt', '失败登录', 'F', 'usermumlostloginerr', '', '', '', 'node', '用户失败登录', '', null, '500');
INSERT INTO AuditConfig VALUES ('1700', '2015-05-26 11:38:11', 'a3aaaaey-c3e2-11e4-8cc9-441i7e216df1', '分组', 'F', 'zuzhijigou', '', '', '', 'node', '用户分组', 'adsssdds-c3e2-11e4-8cc9-40167e216d1815', null, '500');
INSERT INTO AuditConfig VALUES ('1010', '2015-05-26 11:38:11', 'usermumlostloginedev', '应用', 'F', 'usermumlostlogin', '2', 'objAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('1011', '2015-05-26 11:38:11', 'usermumlostloginedevdev', '设备', 'F', 'usermumlostlogin', '2', 'objAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('1012', '2015-05-26 11:38:11', 'opensecuritytestmgr', '安全管理', 'F', 'opensecuritytestmgr', '1', 'privilegeAudit', 'event', 'menu', '', '', 'EMM', null);
INSERT INTO AuditConfig VALUES ('1013', '2015-05-26 11:38:11', 'opensecuritytestctr', '安全中心', 'F', 'opensecuritytestmgr', '2', 'privilegeAudit', 'event', 'menu', '', '', 'EMM', null);
INSERT INTO AuditConfig VALUES ('1014', '2015-05-26 11:38:11', 'opensecuritytestaudit', '审计中心', 'F', 'opensecuritytestmgr', '2', 'privilegeAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('1015', '2015-05-26 11:38:11', 'opensecuritytestctrconfig', '安全配置', 'F', 'opensecuritytestctr', '3', 'privilegeAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('1016', '2015-05-26 11:38:11', 'opensecuritytestauconfig', '审计配置', 'F', 'opensecuritytestaudit', '3', 'privilegeAudit', 'event', 'menu', '', '', null, null);
INSERT INTO AuditConfig VALUES ('1017', '2015-05-26 11:38:11', 'usersetmumuserinfogrp', '用户组', 'T', 'zuzhijigou', '', '', '', 'node', '', '', null, '401');
INSERT INTO AuditConfig VALUES ('1021', '2015-05-26 11:38:11', 'usersetmumconfiggrp', '设置', 'F', 'zuzhijigou', '', '', '', 'node', '组织机构设置', 'adsssdds-c3e2-11e4-8cc9-40167e216d1813', null, '500');
INSERT INTO AuditConfig VALUES ('1022', '2015-05-26 11:38:11', 'usersetmumgrpconfig', '组织机构对接配置', 'F', 'gangweiguanlijichushezhi', '', '', '', 'node', '组织机构对接配置', '', null, '500');
INSERT INTO AuditConfig VALUES ('1023', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-1258-8cc9-40167e216def22', '删除', 'F', 'yuguanli', '', '', '', 'node', '帐号组删除', 'usersetmumaccountgrp', null, '432');
INSERT INTO AuditConfig VALUES ('1024', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216deg01', '组内帐号切换', 'F', 'yuguanli', '', '', '', 'node', '帐号组设置组内帐号的切换', 'usersetmumaccountgrp', null, '500');
INSERT INTO AuditConfig VALUES ('1025', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-40167e216deg02', '组内帐号移除', 'F', 'yuguanli', '', '', '', 'node', '帐号组设置组内帐号的移除', 'usersetmumaccountgrp', null, '500');
INSERT INTO AuditConfig VALUES ('1125', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', '域认证字段', 'T', 'yuguanli', null, null, null, 'node', null, null, null, '407');
INSERT INTO AuditConfig VALUES ('1126', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216mm789', '必填', 'F', 'yuguanli', '', '', '', 'node', '域认证字段必填', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', null, '500');
INSERT INTO AuditConfig VALUES ('1127', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-42167m216dg96', '认证域', 'T', 'yuguanli', '', '', '', 'node', '', '', null, '405');
INSERT INTO AuditConfig VALUES ('1720', '2015-05-26 11:38:11', 'b3aaaaae-c3e2sert-8cc9-40167e216df1', '设置精品', 'F', 'yingyongliebiao', '', '', '', 'node', '设置精品', '', null, '500');
INSERT INTO AuditConfig VALUES ('1128', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cd9-4t167m216dg97', '域帐号', 'T', 'yuguanli', '', '', '', 'node', '', '', null, '406');
INSERT INTO AuditConfig VALUES ('1702', '2015-05-26 11:38:11', 'applistsetgrpmgrset', '应用组设置', 'F', 'appmamstaMgr', '2', 'strategyAudit', 'audit', 'menu', '应用组设置', '', null, null);
INSERT INTO AuditConfig VALUES ('1703', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', '白名单组', 'T', 'applistsetgrpmgrset', '', '', '', 'node', '', '', null, '426');
INSERT INTO AuditConfig VALUES ('1704', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', '黑名单组', 'T', 'applistsetgrpmgrset', '', '', '', 'node', '', '', null, '427');
INSERT INTO AuditConfig VALUES ('1705', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSlsjjs6deg02', '查看违规设备', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '查看违规设备', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1706', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8ccsdfsdfwkFSlsjjs6deg02', '检测设置', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '黑名单检测设置', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1707', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8ccslkihfsdfwkFSlsjjs6deg02', '通知设置', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '黑名单通知设置', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1708', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cuhyvsjhkjkhsdfwkFSlsjjs6deg02', '限制设置', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '黑名单限制设置', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1709', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8ccsd899jinsllnvikFSlsjjs6deg02', '黑名单应用添加', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '黑名单应用添加', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', null, '440');
INSERT INTO AuditConfig VALUES ('1710', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cc9-401sdfhctSlsjjs6deg02', '查看违规设备', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '白名单查看违规设备', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1711', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8ccsdfsdpoinjjub6deg02', '检测设置', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '白名单检测设置', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1712', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8ccslkihfsdfbgjylsjjs6deg02', '通知设置', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '白名单通知设置', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', null, '500');
INSERT INTO AuditConfig VALUES ('1713', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cuhyvsjhkjkhsfghtrbSlsjjs6deg021', '白名单应用添加', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '白名单应用添加', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', null, '440');
INSERT INTO AuditConfig VALUES ('1721', '2015-05-26 11:38:11', 'b3aaaaae-c3e2sert-8ccsdf-167e216df16', '取消精品', 'F', 'yingyongliebiao', '', '', '', 'node', '取消精品', '', null, '500');
INSERT INTO AuditConfig VALUES ('1722', '2015-05-26 11:38:11', 'b3aaaaae-c3e2sertht-8ccsdfsd-167e216df16', '评价导出', 'F', 'yingyongliebiao', '', '', '', 'node', '评价导出', '', null, '461');
INSERT INTO AuditConfig VALUES ('1723', '2015-05-26 11:38:11', 'a3e6444a-c3e2-11e4-8clhgc9-40167e216df1', '栏目可见权限', 'F', 'programaManage', '', '', '', 'node', '栏目可见权限设置', '', null, '500');
INSERT INTO AuditConfig VALUES ('1726', '2015-05-26 11:38:11', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1', '公共文档设置', 'F', 'publishContentGroupManage', '', '', '', 'node', '公共文档设置', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1111', null, '500');
INSERT INTO AuditConfig VALUES ('1939', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8cuhyvsjhkjkhsfghtrbSlsjjs6deg02', '限制设置', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '限制设置', 'a3aaaaer-c3e2-11e4-8cc9-401SDFSDFSDX6deg02', '', '500');
INSERT INTO AuditConfig VALUES ('1937', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df602', '限制设备编辑', 'F', 'devgroupconfig', '', '', '', 'node', '限制设备编辑', '', '', '441');
INSERT INTO AuditConfig VALUES ('1934', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df631', '事件围栏添加', 'F', 'devgroupconfig', '', '', '', 'node', '事件围栏添加', '', '', '440');
INSERT INTO AuditConfig VALUES ('1808', '2015-07-14 20:58:39', 'adsssdds-c3e2-1564-8cc9-40167e216dm10014', '设置地理围栏', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10004', null, null, null, 'node', '设置地理围栏', null, null, '500');
INSERT INTO AuditConfig VALUES ('1988', '2015-05-26 11:38:11', 'titlebindset', '主题定制', 'F', 'platauditplatset', '3', 'platAudit', 'audit', 'menu', '主题定制', '', '', '');
INSERT INTO AuditConfig VALUES ('1806', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10007', '授权许可', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10003', '3', 'privilegeAudit', 'audit', 'menu', '授权许可', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('1781', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e223569', '删除安全事件', 'F', 'securitypricenterMgr', '', '', '', 'node', '删除安全事件', '', '', '451');
INSERT INTO AuditConfig VALUES ('1803', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10004', '围栏策略', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10003', '3', 'privilegeAudit', 'audit', 'menu', '围栏策略', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('1959', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dm721', '编辑', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10007', '', '', '', 'node', '授权许可编辑', '', '', '431');
INSERT INTO AuditConfig VALUES ('1807', '2015-07-14 20:32:49', 'adsssdds-c3e2-1564-8cc9-40167e216dm10008', '平台备份', 'F', 'adsssdds-c3e2-1564-8cc9-40167e216dm10001', '2', 'privilegeAudit', 'audit', 'menu', '平台备份', '', 'PLATFORM', null);
INSERT INTO AuditConfig VALUES ('1817', '2015-05-26 11:38:11', 'gangweiguanlizhiji', '职级管理', 'F', 'gangweiguanlijichushezhi', '3', 'adminAudit', 'audit', 'menu', '职级管理', '', '', '107');
INSERT INTO AuditConfig VALUES ('1818', '2015-05-26 11:38:11', 'gangweiguanlizuzhi', '组织类别', 'F', 'gangweiguanlijichushezhi', '3', 'adminAudit', 'audit', 'menu', '组织类别', '', '', '106');
INSERT INTO AuditConfig VALUES ('1925', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg1712', '添加', 'F', 'gangweiguanlizhiji', '', '', '', 'node', '职级的添加', '', '', '430');
INSERT INTO AuditConfig VALUES ('1926', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg1813', '编辑', 'F', 'gangweiguanlizhiji', '2', '', '', 'node', '职级的编辑', '', '', '431');
INSERT INTO AuditConfig VALUES ('1927', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg1714', '删除', 'F', 'gangweiguanlizhiji', '2', '', '', 'node', '职级的删除', '', '', '432');
INSERT INTO AuditConfig VALUES ('1928', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg1815', '上移', 'F', 'gangweiguanlizhiji', '2', '', '', 'node', '职级上移', '', '', '500');
INSERT INTO AuditConfig VALUES ('1929', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg1916', '下移', 'F', 'gangweiguanlizhiji', '2', '', '', 'node', '职级下移', '', '', '500');
INSERT INTO AuditConfig VALUES ('1931', '2015-05-26 11:38:11', 'a3cc1976-c3e2-11e47ho8-9-40167e216df1112', '文档组', 'T', 'publishContentGroupManage', '', '', '', 'node', '', '', '', '404');
INSERT INTO AuditConfig VALUES ('1941', '2015-05-26 11:38:11', 'a3aaaaer-c3e2-11e4-8ccsd899jinsllnvikFSlsjjs6deg021', '黑名单应用删除', 'F', 'applistsetgrpmgrset', '', '', '', 'node', '黑名单应用删除', 'a3aaaaer-c3e2-11e4-8cc9-401SDRYTUSDDX6deg02', '', '442');
INSERT INTO AuditConfig VALUES ('1956', '2015-05-26 11:38:11', 'zxczx4155grpmgrset', '权限设置', 'F', 'zxczx4155grpmgr', '', '', '', 'node', '权限设置', '', 'MAM', '500');
INSERT INTO AuditConfig VALUES ('1957', '2015-05-26 11:38:11', 'zxczx4155grpmgrgrpadd', '组内应用添加', 'F', 'zxczx4155grpmgr', '', '', '', 'node', '组内应用添加', '', 'MAM', '440');
INSERT INTO AuditConfig VALUES ('1958', '2015-05-26 11:38:11', 'zxczx4155grpmgrgrpdel', '组内应用删除', 'F', 'zxczx4155grpmgr', '', '', '', 'node', '组内应用删除', '', '', '442');
INSERT INTO AuditConfig VALUES ('2024', '2015-05-26 11:38:11', 'mamreqservicerelsebind', '绑定设备', 'F', 'usermumlostloginedevdev', '', '', '', 'node', '绑定设备', '', '', '500');
INSERT INTO AuditConfig VALUES ('1987', '2015-05-26 11:38:11', 'platauditplatset', '平台设置', 'F', 'platauditplatmgr', '2', 'platAudit', 'audit', 'menu', '平台设置', '', '', '');
INSERT INTO AuditConfig VALUES ('1994', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1211', '卡片概览', 'F', 'shangdianguanli', '', '', '', 'node', '导出卡片分析-卡片概览', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', '', '500');
INSERT INTO AuditConfig VALUES ('1995', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1212', '卡片访问时长', 'F', 'shangdianguanli', '', '', '', 'node', '导出卡片分析-访问时长', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', '', '500');
INSERT INTO AuditConfig VALUES ('1996', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1213', '卡片访问次数', 'F', 'shangdianguanli', '', '', '', 'node', '导出卡片分析-访问次数', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', '', '500');
INSERT INTO AuditConfig VALUES ('1997', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1214', '卡片访问人数', 'F', 'shangdianguanli', '', '', '', 'node', '导出卡片分析-访问人数', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', '', '500');
INSERT INTO AuditConfig VALUES ('1998', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1215', '卡片快捷TOP5', 'F', 'shangdianguanli', '', '', '', 'node', '导出卡片分析-快捷TOP5', 'adsssdds-c3e2-11e4-8cc9-40167e216d124', '', '500');
INSERT INTO AuditConfig VALUES ('1999', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1441', '卡片概览', 'F', 'zxczx4155', '', '', '', 'node', '查看卡片分析-卡片概览', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', '', '500');
INSERT INTO AuditConfig VALUES ('2000', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1442', '卡片访问时长', 'F', 'zxczx4155', '', '', '', 'node', '查看卡片分析-访问时长', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', '', '500');
INSERT INTO AuditConfig VALUES ('2001', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1443', '卡片访问次数', 'F', 'zxczx4155', '', '', '', 'node', '查看卡片分析-访问次数', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', '', '500');
INSERT INTO AuditConfig VALUES ('2002', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1444', '卡片访问人数', 'F', 'zxczx4155', '', '', '', 'node', '查看卡片分析-访问人数', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', '', '500');
INSERT INTO AuditConfig VALUES ('2003', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1445', '卡片快捷TOP5', 'F', 'zxczx4155', '', '', '', 'node', '查看卡片分析-快捷TOP5', 'adsssdds-c3e2-11e4-8cc9-40167e216dm80', '', '500');
INSERT INTO AuditConfig VALUES ('2004', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1661', '卡片概览', 'F', 'zxczx4155', '', '', '', 'node', '导出卡片分析-卡片概览', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', '', '500');
INSERT INTO AuditConfig VALUES ('2005', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1662', '卡片访问时长', 'F', 'zxczx4155', '', '', '', 'node', '导出卡片分析-访问时长', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', '', '500');
INSERT INTO AuditConfig VALUES ('2006', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1663', '卡片访问次数', 'F', 'zxczx4155', '', '', '', 'node', '导出卡片分析-访问次数', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', '', '500');
INSERT INTO AuditConfig VALUES ('2007', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1664', '卡片访问人数', 'F', 'zxczx4155', '', '', '', 'node', '导出卡片分析-访问人数', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', '', '500');
INSERT INTO AuditConfig VALUES ('2008', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216d1665', '卡片快捷TOP5', 'F', 'zxczx4155', '', '', '', 'node', '导出卡片分析-快捷TOP5', 'adsssdds-c3e2-11e4-8cc9-40167e216d123', '', '500');
INSERT INTO AuditConfig VALUES ('2011', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df301', '移除描述文件', 'F', 'devmamMgr', '', '', '', 'node', '移除描述文件', '', '', '500');
INSERT INTO AuditConfig VALUES ('2012', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df302', '解绑设备', 'F', 'devmamMgr', '', '', '', 'node', '解绑设备', '', '', '500');
INSERT INTO AuditConfig VALUES ('2013', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df303', '设备限制登录', 'F', 'devmamMgr', '', '', '', 'node', '设备限制登录', '', '', '500');
INSERT INTO AuditConfig VALUES ('2014', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df304', '设备限制激活', 'F', 'devmamMgr', '', '', '', 'node', '设备限制激活', '', '', '500');
INSERT INTO AuditConfig VALUES ('2015', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df305', '围栏策略生效', 'F', 'devmamMgr', '', '', '', 'node', '围栏策略生效', '', '', '500');
INSERT INTO AuditConfig VALUES ('2016', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df131', '失败登录', 'F', 'usermumMgr', '', '', '', 'node', '对象失败登录', '', '', '500');
INSERT INTO AuditConfig VALUES ('2017', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df132', '修改密码', 'F', 'usermumMgr', '', '', '', 'node', '对象修改密码', '', '', '500');
INSERT INTO AuditConfig VALUES ('2018', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216df133', '重置/忘记密码', 'F', 'usermumMgr', '', '', '', 'node', '对象重置/忘记密码', '', '', '500');
INSERT INTO AuditConfig VALUES ('2019', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg70', '配置', 'F', 'zxczx4155', '', '', '', 'node', '卡片管理配置', 'adsssdds-c3e2-11e4-8cc9-40167e216d1812', '', '500');
INSERT INTO AuditConfig VALUES ('2021', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d1061', '接口查看', 'F', 'zxczx4155', '', '', '', 'node', '接口查看', 'adsssdds-c3e2-11e4-8cc9-40167e216d181', '', '500');
INSERT INTO AuditConfig VALUES ('2027', '2015-05-26 11:38:11', 'IPWhiteList', 'IP白名单', 'F', 'opensecuritytestctrconfig', '', '', '', 'node', 'IP白名单', null, null, '501');
INSERT INTO AuditConfig VALUES ('245', '2015-05-26 11:38:11', 'eventdump', '事件转储', 'F', 'opensecuritytestctrconfig', '', '', '', 'node', '事件转储', null, null, '501');
INSERT INTO AuditConfig VALUES ('2028', '2015-05-26 11:38:11', 'adsssdds-c3e2-11e4-8cc9-40167e216dg12', '使用', 'F', 'zxczx4155', null, null, null, 'node', '证书使用', 'adsssdds-c3e2-11e4-8cc9-40167e216d176', null, '500');
INSERT INTO AuditConfig VALUES ('241', '2015-05-26 11:38:11', 'auditdump', '审计转储', 'F', 'opensecuritytestauconfig', '', '', '', 'node', '审计转储', null, null, '500');
INSERT INTO AuditConfig VALUES ('2126', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216mm78911', '认证字段设置', 'F', 'yuguanli', '', '', '', 'node', '域认证字段设置', 'a3aaaaeq-c3e2-11e4-8cc9-40167m216dg94', '', '500');
INSERT INTO AuditConfig VALUES ('2030', '2015-05-26 11:38:11', 'ceb87aa8-9d3a-41aa-93b6-9ba1017d3da0', '推送证书上传', 'F', 'shangdianguanli', '', '', '', 'node', '推送证书上传', '3820704d-1938-4562-a671-048a763a16ad', null, '440');
INSERT INTO AuditConfig VALUES ('2031', '2015-05-26 11:38:11', 'd6c36041-f1c6-4a90-9bdf-888dd568e069', '历史信息删除', 'F', 'shangdianguanli', '', '', '', 'node', '历史信息删除', '3820704d-1938-4562-a671-048a763a16ad', null, '441');
INSERT INTO AuditConfig VALUES ('2033', '2015-05-26 11:38:11', '44ebca5d-64bb-4cb4-a1fa-02df7553b3c8', '推送证书上传', 'F', 'zxczx4155', '', '', '', 'node', '推送证书上传', '18b5d53b-9377-44a9-8d72-cd7ab8d38570', null, '440');
INSERT INTO AuditConfig VALUES ('2034', '2015-05-26 11:38:11', '256da00a-44ab-4853-a691-4177f0429eda', '历史信息删除', 'F', 'zxczx4155', '', '', '', 'node', '历史信息删除', '18b5d53b-9377-44a9-8d72-cd7ab8d38570', null, '441');
INSERT INTO AuditConfig VALUES ('2035', '2015-05-26 11:38:11', 'securityCenterManage', '安全中心', 'F', 'securityManage', '2', 'adminAudit', 'audit', 'menu', '安全中心', '', '', '34');
INSERT INTO AuditConfig VALUES ('2036', '2015-05-26 11:38:11', 'a3aaaaeq-c3e2-11e4-8cc9-40167e216d1081', '擦除企业配置', 'F', 'deviceList', '', '', '', 'node', '擦除企业配置', '', '', '500');


#
# Source for table "AuditConsole"
#

DROP TABLE IF EXISTS AuditConsole;
CREATE TABLE AuditConsole (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  cycle varchar(255)  DEFAULT NULL,
  switcher char(1)  NOT NULL,
  templateId varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "AuditConsole"
#

INSERT INTO AuditConsole VALUES (1,'2015-06-25 00:00:00','100','F','3');



-- ----------------------------
-- Table structure for AuditTemplate
-- ----------------------------
DROP TABLE IF EXISTS AuditTemplate;
CREATE TABLE AuditTemplate (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  isUse char(1)  NOT NULL,
  menuIds longtext ,
  name varchar(255)  DEFAULT NULL,
  nodeIds text ,
  uniqueField varchar(255)  DEFAULT NULL,
  updateAt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of AuditTemplate
-- ----------------------------
INSERT INTO AuditTemplate VALUES ('1', '2015-06-11 18:14:05', 'F', '51,37,38,1816,41,1818,1817,1918,52,17,1952,53,31,32,33,34,55,101,120,121,123,124,56,6,7,8,57,5,10,11,60,39,61,129,130,131,140,144,142,143,806,169,170,171,175,180,160,2025,181,1800,1802,1804,1805,1806,1803,1801,1807,182,183,184,1702,185,186,187,188,189,190,191,192,198,207,1986,987,1987,1988,2035,110,111,114', '高', '1507,1510,1508,1505,1506,1509,1700,656,657,658,1812,659,660,661,1536,662,1513,1503,1504,1021,1022,1492,1493,1494,668,1499,1500,1486,1487,1488,1489,669,1496,1490,1491,745,1126,670,671,1023,672,1024,1025,1515,664,665,666,667,1533,1535,1534,1925,1926,1927,1928,1929,954,936,962,1645,1641,1642,1643,673,674,675,680,677,678,703,704,705,714,1950,706,702,707,691,694,695,693,696,697,698,690,941,942,943,957,708,710,709,1638,1640,2028,1639,683,721,720,2019,959,960,2021,841,842,835,836,837,838,839,840,843,844,845,846,847,848,849,850,851,852,853,855,1999,2000,2001,2002,2003,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,876,2004,2005,2006,2007,2008,1953,1954,1955,1957,1958,1956,1521,1722,1516,1518,1519,1720,1721,767,768,769,770,771,772,773,774,777,776,778,779,780,781,782,783,784,786,789,787,790,788,791,785,792,794,797,795,798,796,800,801,802,810,805,807,808,809,814,815,816,817,818,819,1993,1989,1992,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,921,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,897,1994,1995,1996,1997,1998,1946,1947,1948,752,1949,749,1945,751,753,754,755,756,757,758,759,760,761,731,730,732,733,729,735,734,736,737,738,739,740,741,742,743,1538,1438,1537,1439,1456,1458,829,1461,1459,1460,833,830,831,832,1633,1634,1635,1452,1453,1545,1549,1550,1551,980,981,983,984,982,985,1474,1475,1473,1476,1726,1466,1467,1468,1563,1470,1564,1469,1471,1477,1562,1478,1479,1480,1481,1482,1483,1723,812,813,820,821,822,1539,1540,1541,1542,2016,2017,2018,2009,2010,1556,1557,1558,2011,2012,2013,2014,2015,1455,1454,827,828,1781,1782,1565,1566,1567,1568,1569,1570,1571,1572,1573,1626,1627,1960,1959,825,826,1810,1809,1811,1808,1574,699,700,701,1713,1940,1710,1711,1712,1939,1709,1941,1705,1706,1707,1708,1579,1583,1588,1589,1934,1580,1584,1590,1935,1937,1581,1585,1591,1938,1936,1576,1577,1578,1582,1586,1587,1596,1597,1598,1592,1593,1594,1595,1599,1603,1600,1604,1601,1605,1602,1606,1607,1608,1611,1609,1612,1610,1613,1615,1617,1618,1619,2029,2030,2031,2032,2033,2034,2126,986,762,746,747,748,937', '207fd366-c6ab-479b-a7a8-db0c2c46326c', '2015-06-11 18:13:42');
INSERT INTO AuditTemplate VALUES ('2', '2015-06-11 18:14:05', 'F', '51,37,38,52,17,1952,53,31,33,34,55,101,110,111,120,121,123,124,56,6,7,8,57,10,129,130,131,140,142,143,144,175,180,181,1800,1802,1804,1807,182,183,184,1702,185,187,188,189,190,191,192,1986,1987,1988,51,1816,41,1818,1817,1918,55,120,121,124', '中', '1507,1510,1508,1505,1509,1536,1513,1503,1022,1492,1493,1494,668,1499,1500,1486,1488,1489,1496,1490,1491,1515,954,936,962,1645,1641,1642,1643,673,674,675,680,677,678,703,704,705,706,702,707,691,694,695,693,696,698,690,941,942,943,957,709,1638,1640,1639,2080,683,721,959,1955,1956,1521,1516,1518,1519,1720,1721,771,772,773,777,776,778,779,780,781,782,783,784,786,789,787,790,788,791,785,792,1946,1947,1948,752,1949,749,1945,751,753,754,756,757,758,759,760,761,762,735,734,1538,1438,1537,1439,1456,1458,1459,1460,833,830,831,832,1452,1453,1474,1475,1473,1466,1467,1468,1470,1478,1479,1480,820,821,822,823,1565,1566,1567,1569,1570,1572,1573,1626,1627,699,700,701,1711,1712,1939,1706,1707,1708,1596,1597,1598,1592,1593,1594,1595,1599,1603,1600,1604,1601,1605,1602,1606,1607,1608,1611,1609,1612,1610,1613,1616,1614,1615,1617,1618,1619,986,665,1534,1927,730,741', '207fd366-c6ab-479b-a7a8-db0c2c46326d', '2015-06-11 18:13:42');
INSERT INTO AuditTemplate VALUES ('3', '2015-06-11 18:14:05', 'F', '51,37,38,52,17,1952,53,31,34,55,101,110,111,120,121,123,124,56,6,7,8,57,10,129,130,131,140,142,143,144,175,180,181,1800,1802,1804,1807,182,183,184,1702,185,187,188,189,190,191,192,1986,1987,1988,51,1816,41,1818,1817,1918,55,120,121,124', '低', '1508,1505,1509,1513,1503,1022,1494,1500,1486,1488,1489,1491,1515,962,1645,1641,1642,1643,673,674,675,680,677,678,703,704,705,706,702,707,691,694,695,693,696,698,941,942,943,957,1638,1640,1639,2080,1955,1956,1516,777,776,778,779,780,781,782,783,784,786,789,787,790,788,791,785,792,1946,1947,1948,752,1949,749,1945,751,753,754,756,757,758,761,762,735,734,1538,1438,1537,1439,1456,1458,1459,1460,833,830,831,832,1452,1453,1474,1475,1473,1468,1470,1480,820,821,822,823,1565,1566,1567,1569,1570,1572,1573,1626,1627,699,700,701,1711,1712,1939,1706,1707,1708,1596,1597,1598,1592,1593,1594,1595,1599,1603,1600,1604,1601,1605,1602,1606,1607,1608,1611,1609,1612,1610,1613,1616,1614,1615,1617,1618,1619,986,665,1534,1927,730,741', '207fd366-c6ab-479b-a7a8-db0c2c46326e', '2015-06-11 18:13:42');
INSERT INTO AuditTemplate VALUES ('54', '2016-01-26 07:03:22', 'T', '51,37,38,1816,41,1818,1817,1918,52,17,1952,53,31,32,33,34,55,101,120,121,123,124,56,6,7,8,57,5,11,160,60,39,61,129,130,131,140,142,143,144', '高复制1', '1507,1510,1508,1505,1506,1509,1700,656,657,658,1812,659,660,661,1536,662,1513,1503,1504,1021,1492,1493,1494,668,1499,1500,1486,1487,1488,1489,669,1496,1490,1491,745,1126,670,671,1023,672,1024,1025,1515,664,665,666,667,1533,1535,1534,1925,1926,1927,1928,1929,954,936,962,1645,1641,1642,1643,673,674,675,680,677,678,703,704,705,714,1950,706,702,707,691,694,695,693,696,697,698,2033,2034,690,941,942,943,957,708,710,709,1638,1640,1639,683,2028,721,720,2019,959,960,2021,841,842,835,836,837,838,839,840,843,844,845,846,847,848,849,850,851,852,853,855,1999,2000,2001,2002,2003,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,876,2004,2005,2006,2007,2008,1953,1954,1955,1957,1958,1956,1521,1722,1516,1518,1519,1720,1721,767,768,769,770,771,772,773,774,777,776,778,779,780,781,782,783,784,786,789,787,790,788,791,785,792,794,797,795,798,796,800,801,802,2030,2031,810,805,807,808,809,814,815,816,817,818,819,1993,1989,1992,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,921,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,897,1994,1995,1996,1997,1998,1946,1947,1948,752,1949,749,1945,751,753,754,755,756,757,758,759,760,761,731,730,732,733,729,735,734,736,737,738,739,740,741,742,743,1538,1438,1537,1439,1456,1458,829,1461,1459,1460,833,830,831,832,1633,1634,1635,1455,1454,827,828,1545,1549,1550,1551,980,981,983,984,982,985,1474,1475,1473,1476,1726,1466,1467,1468,1563,1470,1564,1469,1471,1477,1562,1478,1479,1480,1481,1482,1483,1723,820,821,822', '9224bdd1-33ed-4453-ba2b-a084c3b294f0', null);
INSERT INTO AuditTemplate VALUES ('55', '2016-01-26 09:46:01', 'T', '51,1816,41,1818,1817,1918', '基础设置', '665,1534,1927', '736d0eba-ef14-4e42-a638-815cd4046c62', null);
INSERT INTO AuditTemplate VALUES ('57', '2016-01-26 10:11:10', 'T', '55,120,121,124', '设备', '730,741', '6de38a16-3b50-4c15-8b97-1248276c7e3b', null);
INSERT INTO AuditTemplate VALUES ('58', '2016-02-16 15:52:42', 'T', '51,37,38,1816,41,1818,1817,1918,52,17,1952,53,31,32,33,34,55,101,110,111,114,120,121,123,124,56,6,7,8,57,5,11,60,39,61,160,129,130,131,140,142,143,144,806,169,170,171,175,180,181,1800,1802,1804,1805,1806,1803,1801,1807,182,183,184,1702,185,186,187,188,189,190,191,192,198,207,1986,987,1987,1988', '全部审计', '1507,1510,1508,1505,1506,1509,1700,656,657,658,1812,659,660,661,1536,662,1513,1503,1504,1021,1492,1493,1494,668,1499,1500,1486,1487,1488,1489,669,1496,1490,1491,745,1126,670,671,1023,672,1024,1025,1515,664,665,666,667,1533,1535,1534,1925,1926,1927,1928,1929,954,936,962,1645,1641,1642,1643,673,674,675,680,677,678,703,704,705,714,1950,706,702,707,691,694,695,693,696,697,698,690,941,942,943,957,708,710,709,1638,1640,1639,683,2028,721,720,2019,959,960,2021,1953,1954,1955,1957,1958,1956,1521,1722,1516,1518,1519,1720,1721,767,768,769,770,771,772,773,774,777,776,778,779,780,781,782,783,784,786,789,787,790,788,791,785,792,794,797,795,798,796,800,801,802,810,805,807,808,809,814,815,816,817,818,819,1946,1947,1948,752,1949,749,1945,751,753,754,755,756,757,758,759,760,761,762,746,747,748,731,730,732,733,729,735,734,736,737,738,739,740,741,742,743,1538,1438,1537,1439,1456,1458,829,1461,1459,1460,833,830,831,832,1633,1634,1635,1545,1549,1550,1551,980,981,983,984,982,985,1455,1454,827,828,1474,1475,1473,1476,1726,1466,1467,1468,1563,1470,1564,1469,1471,1477,1562,1478,1479,1480,1481,1482,1483,1723,820,821,822,1539,1540,1541,1542,2016,2017,2018,2009,2010,1556,1557,1558,2011,2012,2013,2014,2015,1781,1782,1565,1566,1567,1568,1569,1570,1571,1572,1573,1626,1627,1960,1959,825,826,1810,1809,1811,1808,1574,699,700,701,1713,1940,1710,1711,1712,1939,1709,1941,1705,1706,1707,1708,1579,1583,1588,1589,1934,1580,1584,1590,1935,1937,1581,1585,1591,1938,1936,1576,1577,1578,1582,1586,1587,1596,1597,1598,1592,1593,1594,1595,1599,1603,1600,1604,1601,1605,1602,1606,1607,1608,1611,1609,1612,1610,1613,1615,1617,1618,1619,986', 'b837f755-4ca9-40d5-bb33-ba553aaf9366', null);
INSERT INTO AuditTemplate VALUES ('60', '2016-02-18 16:53:21', 'T', '51,37,38,1816,41,1818,1817,1918,52,17,1952,53,31,32,33,34,55,101,120,121,123,124,56,6,7,8,57,5,11,60,39,61,160,129,130,131,140,142,143,144,175,180,181,1800,1802,1804,1805,1806,1803,1801,1807', '123', '1507,1510,1508,1505,1506,1509,1700,656,657,658,1812,659,660,661,1536,662,1513,1503,1504,1021,1492,1493,1494,668,1499,1500,1486,1487,1488,1489,669,1496,1490,1491,745,1126,670,671,1023,672,1024,1025,1515,664,665,666,667,1533,1535,1534,1925,1926,1927,1928,1929,954,936,962,1645,1641,1642,1643,673,674,675,680,677,678,703,704,705,714,1950,706,702,707,691,694,695,693,696,697,698,690,941,942,943,957,708,710,709,1638,1640,1639,683,2028,721,720,2019,959,960,2021,841,842,835,836,837,838,839,840,843,844,845,846,847,848,849,850,851,852,853,855,1999,2000,2001,2002,2003,1953,1954,1955,1957,1958,1956,1521,1722,1516,1518,1519,1720,1721,767,768,769,770,771,772,773,774,777,776,778,779,780,781,782,783,784,786,789,787,790,788,791,785,792,794,797,795,798,796,800,801,802,810,805,807,808,809,814,815,816,817,818,819,1946,1947,1948,752,1949,749,1945,751,753,754,755,756,757,758,759,760,761,731,730,732,733,729,735,734,736,737,738,739,740,741,742,743,1538,1438,1537,1439,1456,1458,829,1461,1459,1460,833,830,831,832,1633,1634,1635,1545,1549,1550,1551,980,981,983,984,982,985,1455,1454,827,828,1474,1475,1473,1476,1726,1466,1467,1468,1563,1470,1564,1469,1471,1477,1562,1478,1479,1480,1481,1482,1483,1723,820,821,822,1781,1782,1565,1566,1567,1568,1569,1570,1571,1572,1573,1626,1627,1960,1959,825,826,1810,1809,1811,1808', '8cd37b19-bb46-4395-8d21-3140ed571a70', null);

#
# Source for table "AuthFieldInfo"
#

DROP TABLE IF EXISTS AuthFieldInfo;
CREATE TABLE AuthFieldInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  defaultValue varchar(255)  DEFAULT NULL,
  domainId varchar(50)  DEFAULT NULL,
  iconLoc varchar(255)  DEFAULT NULL,
  interfaceStr longtext ,
  isReset char(1)  NOT NULL DEFAULT 'F',
  label varchar(255)  DEFAULT NULL,
  name varchar(20)  DEFAULT NULL,
  optionsStr varchar(255)  DEFAULT NULL,
  paixu int(11) DEFAULT NULL,
  required int(11) DEFAULT NULL,
  type varchar(255)  DEFAULT NULL,
  valid char(1)  NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "AuthFieldInfo"
#

INSERT INTO AuthFieldInfo VALUES (1,'2015-08-05 09:20:37','','e72eb08c-c090-49d3-928c-410adf35a218','','','F','用户名','loginName','',1,1,'0','T'),(2,'2015-08-05 09:20:37','','e72eb08c-c090-49d3-928c-410adf35a218','','','F','密码','loginPass','',2,1,'2','T'),(4,'2015-08-05 14:41:43','','e72eb08c-c090-49d3-928c-410adf35a218','','','F','认证码','authCode','',4,1,'0','T'),(5,'2015-08-05 14:41:43','','e72eb08c-c090-49d3-928c-410adf35a218','','','F','证书','certificate','',5,1,'0','T'),(6,'2015-08-05 14:41:43','','e72eb08c-c090-49d3-928c-410adf35a218','','','F','第三方证书','otherCertificate','',6,1,'0','T'),(10,'2015-08-05 17:34:33','','29a348f6-e01f-4546-b7f3-a19681c78c56','','','F','用户名','loginName','',1,1,'0','T'),(11,'2015-08-05 17:34:33','','29a348f6-e01f-4546-b7f3-a19681c78c56','','','F','密码','loginPass','',2,1,'2','T'),(14,'2015-08-07 11:54:28','','880a9daa-bebf-4c20-97a7-49d915168ef3','','','F','用户名','loginName','',1,1,'0','T'),(15,'2015-08-07 11:54:28','','880a9daa-bebf-4c20-97a7-49d915168ef3','','','F','密码','loginPass','',2,1,'2','T');




#
# Source for table "ContentManageSetting"
#

DROP TABLE IF EXISTS ContentManageSetting;
CREATE TABLE ContentManageSetting (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  code varchar(255)  DEFAULT NULL,
  groupId bigint(20) DEFAULT NULL,
  property varchar(255)  DEFAULT NULL,
  value varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "ContentManageSetting"
#

INSERT INTO ContentManageSetting VALUES ('1', '1970-01-01 08:00:00', 'recommend_push', '1', 'is_recommend_push', '1'),(2,'2015-08-07 13:37:10','publish_push',2,'is_publish_push','0'),(4,'2015-08-07 13:37:10','sync_delete',2,'is_sync_delete','0');


#
# Source for table "DeviceWithDefGroup"
#

DROP TABLE IF EXISTS DeviceWithDefGroup;
CREATE TABLE DeviceWithDefGroup (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  defGroupId bigint(20) DEFAULT NULL,
  deviceId bigint(20) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "DeviceWithDefGroup"
#

INSERT INTO DeviceWithDefGroup VALUES (1,'2015-08-07 14:57:14',2,1);




#
# Source for table "DomainInfo"
#

DROP TABLE IF EXISTS DomainInfo;
CREATE TABLE DomainInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  authType varchar(255)  DEFAULT NULL,
  canReg char(1)  NOT NULL,
  creator varchar(255)  DEFAULT NULL,
  domainId varchar(255)  DEFAULT NULL,
  domainName varchar(255)  DEFAULT NULL,
  packageLoc varchar(255)  DEFAULT NULL,
  packageName varchar(255)  DEFAULT NULL,
  sysnc varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY domainId (domainId)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "DomainInfo"
#
INSERT INTO DomainInfo
(id,createdAt,creator,domainId,domainName,packageLoc,packageName,canReg,authType,sysnc)
VALUES
(-2,'2010-06-02 10:45:25','admin','-2','无需认证',NULL,NULL,'F','NoAuth',NULL);
#(-1,'2010-06-02 10:47:49','admin','-1','自动选择(初始口令)',NULL,NULL,'F','NoAuth',NULL);



#
# Source for table "Email"
#

DROP TABLE IF EXISTS Email;
CREATE TABLE Email (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  openEmail varchar(255)  DEFAULT NULL,
  password varchar(255)  DEFAULT NULL,
  port varchar(255)  DEFAULT NULL,
  sendFrom varchar(255)  DEFAULT NULL,
  servername varchar(255)  DEFAULT NULL,
  username varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "Email"
#

INSERT INTO Email(id,createdAt,openEmail,password,port,sendFrom,servername,username) VALUES ('1', '2015-02-07 01:45:29', 'T', '3g2win.com','25','admin@3g2win.com', 'smtp.exmail.qq.com', 'admin@3g2win.com');


#
# Source for table "EmailPrivilegeWirhRoleInfo"
#

DROP TABLE IF EXISTS EmailPrivilegeWirhRoleInfo;
CREATE TABLE EmailPrivilegeWirhRoleInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  isCopy varchar(255)  DEFAULT NULL,
  isDownLoad varchar(255)  DEFAULT NULL,
  isForward varchar(255)  DEFAULT NULL,
  isReciveOutLine varchar(255)  DEFAULT NULL,
  lev varchar(255)  DEFAULT NULL,
  name varchar(255)  DEFAULT NULL,
  parentRoleId varchar(255)  DEFAULT NULL,
  roleId varchar(255)  DEFAULT NULL,
  updatedAt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "EmailPrivilegeWirhRoleInfo"
#

INSERT INTO EmailPrivilegeWirhRoleInfo VALUES (22,'2015-08-08 12:30:28','0','0','0','0','0','角色授权','0','0',NULL);




#
# Source for table "GeoSetting"
#

DROP TABLE IF EXISTS GeoSetting;
CREATE TABLE GeoSetting (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  enable char(1)  NOT NULL,
  endHour int(11) DEFAULT NULL,
  endMinute int(11) DEFAULT NULL,
  startHour int(11) DEFAULT NULL,
  startMinute int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "GeoSetting"
#

INSERT INTO GeoSetting VALUES (1,'2015-08-05 14:24:47','T',23,59,0,0);


#
# Source for table "JobInfo"
#

DROP TABLE IF EXISTS JobInfo;
CREATE TABLE JobInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  jobId varchar(255)  DEFAULT NULL,
  jobName varchar(50)  DEFAULT NULL,
  parentId varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

#
# Data for table "JobInfo"
#

INSERT INTO JobInfo VALUES (1,'2015-08-03 17:02:28','zw0001','总裁','zw0001');

#
# Source for table "LicenseInfo"
#

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for LicenseInfo
-- ----------------------------
DROP TABLE IF EXISTS LicenseInfo;
CREATE TABLE LicenseInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  endTime datetime DEFAULT NULL,
  fileName varchar(255)  DEFAULT NULL,
  fileUrl varchar(255)  DEFAULT NULL,
  ip varchar(255)  DEFAULT NULL,
  isUse char(1)  NOT NULL,
  mac varchar(255)  DEFAULT NULL,
  modulName varchar(255)  DEFAULT NULL,
  nodeName varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of LicenseInfo
-- ----------------------------
INSERT INTO LicenseInfo VALUES ('7', '2015-09-01 11:20:20', '2016-02-29 00:00:00', 'EMM_license7.dat', '/opt/emm/uploads/license/', '127.0.0.1', 'T', 'FF:FF:FF:FF:FF:FF', 'EMM', 'EMM管理节点');
INSERT INTO LicenseInfo VALUES ('8', '2015-09-01 13:22:00', '2016-02-29 00:00:00', 'MDMSTMLicense8.dat', '/opt/emm/uploads/license/', '127.0.0.1', 'T', 'FF:FF:FF:FF:FF:FF', 'MDM', '设备管理');
INSERT INTO LicenseInfo VALUES ('9', '2015-09-01 13:23:16', '2016-02-29 00:00:00', 'MCMSTMLicense9.dat', '/opt/emm/uploads/license/', '127.0.0.1', 'T', 'FF:FF:FF:FF:FF:FF', 'MCM', '内容管理');
INSERT INTO LicenseInfo VALUES ('10', '2015-09-01 13:24:08', '2016-02-29 00:00:00', 'MEMSTMLicense10.dat', '/opt/emm/uploads/license/', '127.0.0.1', 'T', 'FF:FF:FF:FF:FF:FF', 'MEM', '邮件管理');


#
# Source for table "LogoInfo"
#

DROP TABLE IF EXISTS LogoInfo;
CREATE TABLE LogoInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  content varchar(255)  DEFAULT NULL,
  logoIcon varchar(255)  DEFAULT NULL,
  logoTitile varchar(255)  DEFAULT NULL,
  welcomeTitle varchar(255)  DEFAULT NULL,
  theme varchar(255)  DEFAULT NULL,
  loginLogo varchar(255)  DEFAULT NULL,
  serviceTxt varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "LogoInfo"
#
INSERT INTO LogoInfo VALUES ('1', now(), 'Copyright © 2010-2017 All rights reserved 正益移动互联科技股份有限公司版权所有', '', '', '欢迎使用AppCan EMM企业移动管理平台', '2', '', '服务网站： service.appcan.cn 服务热线： 400-040-1766');

#
# Source for table "MdmAplctiongrp"
#

DROP TABLE IF EXISTS MdmAplctiongrp;
CREATE TABLE MdmAplctiongrp (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  createUser varchar(255)  DEFAULT NULL,
  description varchar(255)  DEFAULT NULL,
  devicegroupId varchar(255)  DEFAULT NULL,
  isDetect char(1)  NOT NULL DEFAULT 'F',
  isLimit char(1)  NOT NULL DEFAULT 'F',
  isNotice char(1)  NOT NULL DEFAULT 'F',
  isSwitch char(1)  NOT NULL DEFAULT 'F',
  isDelete char(1)  DEFAULT 'T',
  name varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "MdmAplctiongrp"
#

INSERT INTO MdmAplctiongrp VALUES (1,'2015-08-04 19:37:09','admin',NULL,NULL,'F','F','F','F','T','默认组'),(2,'2015-08-04 19:37:09','admin',NULL,NULL,'F','F','F','F','T','白名单组'),(3,'2015-08-04 19:37:09','admin',NULL,NULL,'F','F','F','F','T','黑名单组'),(4,'2016-08-01','admin',NULL,NULL,'F','F','F','F','T','公共应用组');

#
# Source for table "MdmApplication"
#

DROP TABLE IF EXISTS MdmApplication;
CREATE TABLE MdmApplication (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  appBaseId bigint(20) DEFAULT NULL,
  appversion varchar(255)  DEFAULT NULL,
  fileSize bigint(20) DEFAULT NULL,
  filename varchar(255)  DEFAULT NULL,
  grpid bigint(20) DEFAULT NULL,
  iTunesStoreID varchar(255)  DEFAULT NULL,
  name varchar(255)  DEFAULT NULL,
  packgename varchar(255)  DEFAULT NULL,
  platform int(11) DEFAULT NULL,
  plistName varchar(255)  DEFAULT NULL,
  plisturl varchar(255)  DEFAULT NULL,
  price varchar(255)  DEFAULT NULL,
  type int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY MdmApplication_grp (grpid)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "MdmApplication"
#

INSERT INTO MdmApplication VALUES (1,'2015-08-04 20:54:20',2,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

#
# Source for table "MdmGeoRestrict"
#

DROP TABLE IF EXISTS MdmGeoRestrict;
CREATE TABLE MdmGeoRestrict (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  camera char(1)  NOT NULL,
  deviceType varchar(255)  DEFAULT NULL,
  groupId bigint(20) DEFAULT NULL,
  screenShot char(1)  NOT NULL,
  timeEnable char(1)  NOT NULL,
  wifi char(1)  NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "MdmGeoRestrict"
#

INSERT INTO MdmGeoRestrict VALUES (2,'2015-08-07 15:04:14','T','device',37,'T','T','T'),(3,'2015-08-07 15:04:35','T','device',0,'T','T','T');

#
# Source for table "MdmGeoRstBody"
#

DROP TABLE IF EXISTS MdmGeoRstBody;
CREATE TABLE MdmGeoRstBody (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  geoId bigint(20) DEFAULT NULL,
  geoRestrictId bigint(20) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "MdmGeoRstBody"
#

INSERT INTO MdmGeoRstBody VALUES (2,'2015-08-07 15:04:14',2,2),(3,'2015-08-07 15:04:35',2,3);

#
# Source for table "MobileWithGrp"
#

DROP TABLE IF EXISTS MobileWithGrp;
CREATE TABLE MobileWithGrp (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  creatorId varchar(255)  DEFAULT NULL,
  groupId bigint(20) NOT NULL,
  mobileUserId bigint(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "MobileWithGrp"
#

INSERT INTO MobileWithGrp VALUES (1,now(),'admin',1,657);




#
# Source for table "NodulePrivilege"
#

DROP TABLE IF EXISTS NodulePrivilege;
CREATE TABLE NodulePrivilege (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  insertPrivilegeId varchar(255)  DEFAULT NULL,
  isuse char(1)  DEFAULT NULL,
  name varchar(255)  DEFAULT NULL,
  parentId varchar(255)  DEFAULT NULL,
  privilegeId varchar(255)  DEFAULT NULL,
  url varchar(255)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=utf8;

#
# Data for table "NodulePrivilege"
#

INSERT INTO NodulePrivilege VALUES (1,'2015-01-27 16:51:00',NULL,'T','添加','managerAdmin2112','777777777','ADMIN_ADD'),(2,'2014-09-27 14:18:40',NULL,'T','编辑','managerAdmin2112','111111111','ADMIN_EDITOR'),(3,'2015-01-27 16:51:30',NULL,'T','删除','managerAdmin2112','888888888','ADMIN_REMOVE'),(4,'2014-09-27 14:18:40',NULL,'T','帐号开启/关闭','managerAdmin2112','333333333','ADMIN_OPEN'),(5,'2015-01-27 16:49:15',NULL,'T','重置密码','managerAdmin2112','444444444','ADMIN_RESEND'),(6,'2015-01-27 16:50:25',NULL,'T','管理员组变更','managerAdmin2112','666666666','ADMIN_ROLES'),(7,'2015-01-04 16:49:50',NULL,'F','项目管理','managerAdmin2112','555555555','ADMIN_PROJECT'),(8,'2015-01-27 16:56:09',NULL,'T','添加','managerAdmin21123','bbbbbbbb','LIST_ADD'),(9,'2015-01-27 16:55:26',NULL,'T','编辑','managerAdmin21123','99999999','LIST_EDITOR'),(10,'2015-01-27 16:55:41',NULL,'T','删除','managerAdmin21123','aaaaaaaa','LIST_REMOVE'),(12,'2015-01-27 17:07:29',NULL,'T','提交','asdad1848','cccccccccc','PRI_SUBMIT'),(13,'2015-01-27 17:08:12',NULL,'F','重置','asdad1848','ddddddddd','PRI_RESET'),(14,'2015-01-28 10:06:12',NULL,'T','查看更多','platformAdmin12312','eeeeeeee','CONTAINER_MORE'),(16,'2015-01-28 10:09:06',NULL,'T','添加','platformAdmin12312ASD','fffffffffff','ANNOU_ADD'),(17,'2015-01-28 10:10:12',NULL,'T','编辑','platformAdmin12312ASD','hhhhhhh','ANNOU_EDIT'),(18,'2015-01-28 10:14:20',NULL,'T','删除','platformAdmin12312ASD','iiiiiiiiiiiiiiiiiiiii','ANNOU_REMOVE'),(19,'2015-01-28 10:16:35',NULL,'T','确定','dadasdas','jjjjjjjjjjjjj','BACKUP_OK'),(20,'2015-01-28 10:17:17',NULL,'T','取消','dadasdas','kkkkkkkkk','BACKUP_CANCEL'),(21,'2015-01-28 10:18:47',NULL,'T','保存','SFSDF','llllllllllllllllllllllll','EMAIL_SET'),(22,'2015-01-28 10:19:57',NULL,'T','编辑','FDSFSD','mmmmmm','THEME_EDIT'),(23,'2015-01-28 10:20:29',NULL,'T','确定','FDSFSD','nnnnnnnn','THEME_OK'),(24,'2015-01-28 10:22:09',NULL,'T','删除','ZXZX','ooooooooo','LOG_REMOVE'),(25,'2015-01-28 10:22:53',NULL,'T','导出','ZXZX',NULL,'LOG_EXPORT'),(26,'2015-01-28 10:35:49',NULL,'T','添加','DSFDSFDSZ','pppppppp','INSERT_ADD'),(27,'2015-01-28 10:36:24',NULL,'T','编辑','DSFDSFDSZ','kkkkkkkkkkk','INSERT_EDIT'),(28,'2015-01-28 10:38:11',NULL,'T','删除','DSFDSFDSZ','wwwwwww','INSERT_REMOVE'),(29,'2015-01-28 13:31:20',NULL,'T','通过','zcvcxv','000000000','PLAT_BY'),(30,'2015-01-28 13:38:29',NULL,'T','驳回','zcvcxv','010101010','PLAT_REJECT'),(31,'2015-01-28 13:38:53',NULL,'F','批量通过','zcvcxv','022020202','BATCH_BY'),(32,'2015-01-28 13:39:22',NULL,'F','批量驳回','zcvcxv','03030303','BATCH_REJECT'),(33,'2015-06-29 17:24:50',NULL,'T','导出','axz123ewq','axz123ewq','ADMIN_USER'),(35,'2015-06-29 17:24:50',NULL,'T','添加','platformAdmin12312AhouD','PLATFORM_ADD','PLATFORM_ADD'),(36,'2015-06-29 17:24:51',NULL,'T','编辑','platformAdmin12312AhouD','PLATFORM_EDIT','PLATFORM_EDIT'),(37,'2015-06-29 17:24:52',NULL,'T','删除','platformAdmin12312AhouD','PLATFORM_DEL','PLATFORM_DEL'),(38,'2015-06-29 17:24:52',NULL,'T','添加','IPbaimingdan','IP_ADD','IP_ADD'),(39,'2015-06-29 17:24:52',NULL,'T','编辑','IPbaimingdan','IP_EDIT','IP_EDIT'),(40,'2015-06-29 17:24:52',NULL,'T','删除','IPbaimingdan','IP_DEL','IP_DEL'),(41,'2015-06-29 17:24:52',NULL,'T','开启/关闭','IPbaimingdan','IP_OPEN_CLOSE','IP_OPEN_CLOSE'),(42,'2015-06-29 17:24:52',NULL,'T','添加','jueseguanli','ROLE_ADD','ROLE_ADD'),(43,'2015-06-29 17:24:52',NULL,'T','编辑','jueseguanli','ROLE_EDIT','ROLE_EDIT'),(44,'2015-06-29 17:24:52',NULL,'T','删除','jueseguanli','ROLE_DEL','ROLE_DEL'),(45,'2015-06-29 17:24:52',NULL,'T','移除','jueseguanli','ROLE_REMOVE','ROLE_REMOVE'),(46,'2015-06-29 17:24:52',NULL,'T','变更','jueseguanli','ROLE_CHANGE','ROLE_CHANGE'),(47,'2015-06-29 17:24:52',NULL,'T','用户证书','certtificateManage','USER_CERT','USER_CERT'),(48,'2015-06-29 17:24:52',NULL,'T','管理员证书','certtificateManage','ADMIN_CERT','ADMIN_CERT'),(49,'2015-03-06 17:24:50',NULL,'T','添加','zxczx4155--','APP_ADD','APP_ADD'),(50,'2015-03-06 17:24:50',NULL,'T','编辑','---','APP_EDIT','APP_EDIT'),(51,'2015-03-06 17:24:50',NULL,'T','删除','zxczx4155--','APP_DE','APP_DEL'),(52,'2015-03-06 17:24:50',NULL,'T','上/下架','zxczx4155--','UP_OR_DOWN','UP_OR_DOWN'),(53,'2015-03-06 17:24:50',NULL,'T','管理面板','zxczx4155--','MANAGE_BOARD','MANAGE_BOARD'),(54,'2015-03-06 17:24:50',NULL,'T','一键查杀','zxczx4155--','KILL_VIRUS','KILL_VIRUS'),(56,'2015-03-06 17:24:50',NULL,'T','添加','zuzhijigouliebiao','ORG_ADD','MUM_ORG_ADD'),(57,'2015-03-06 17:24:50',NULL,'T','编辑','zuzhijigouliebiao','ORG_EDIT','MUM_ORG_EDIT'),(58,'2015-03-06 17:24:50',NULL,'T','删除','zuzhijigouliebiao','ORG_DEL','MUM_ORG_DEL'),(59,'2015-03-06 17:24:50',NULL,'T','导入','zuzhijigouliebiao','ORG_IMPORT','MUM_ORG_IMPORT'),(60,'2015-03-06 17:24:50',NULL,'T','导出','zuzhijigouliebiao','ORG_EXPORT','MUM_ORG_EXPORT'),(61,'2015-03-06 17:24:50',NULL,'T','设置','zuzhijigouliebiao','ORG_SET','MUM_ORG_SET'),(62,'2015-03-06 17:24:50',NULL,'T','类别管理','zuzhijigouliebiao','ORG_TYPE','MUM_ORG_TYPE'),(63,'2015-03-06 17:24:50',NULL,'T','添加','yonghuzuguanli','USER_GROUP_ADD','USER_GROUP_ADD'),(64,'2015-03-06 17:24:50',NULL,'T','编辑','yonghuzuguanli','USER_GROUP_EDIT','USER_GROUP_EDIT'),(65,'2015-03-06 17:24:50',NULL,'T','删除','yonghuzuguanli','USER_GROUP_DEL','USER_GROUP_DEL'),(66,'2015-03-06 17:24:50',NULL,'T','设置','yonghuzuguanli','USER_GROUP_SET','USER_GROUP_SET'),(68,'2015-04-08 14:49:52','','T','组切换','yonghuzuguanli','MUM_ORG_CHANGE','MUM_ORG_CHANGE'),(69,'2015-04-08 14:49:52','','T','移除','yonghuzuguanli','MUM_ORG_REMOVE','MUM_ORG_REMOVE'),(70,'2015-03-06 17:24:50',NULL,'T','添加','yonghuguanli','MUM_PERSON_ADD','MUM_PERSON_ADD'),(76,'2015-03-06 17:24:50',NULL,'T','编辑','yonghuguanli','MUM_PERSON_EDIT','MUM_PERSON_EDIT'),(77,'2015-03-06 17:24:50',NULL,'T','删除','yonghuguanli','MUM_PERSON_DEL','MUM_PERSON_DEL'),(79,'2015-03-06 17:24:50',NULL,'T','设备信息','yonghuguanli','MUM_PERSON_DEVICE','MUM_PERSON_DEVICE'),(80,'2015-03-06 17:24:50',NULL,'T','分组','yonghuguanli','MUM_PERSON_GROUP_BY','MUM_PERSON_GROUP_BY'),(81,'2015-03-06 17:24:50',NULL,'T','上/下移','yonghuguanli','MUM_PERSON_UP_DOWN','MUM_PERSON_UP_DOWN'),(82,'2015-03-06 17:24:50',NULL,'T','导入','yonghuguanli','MUM_PERSON_IMPORT','MUM_PERSON_IMPORT'),(83,'2015-03-06 17:24:50',NULL,'T','导出','yonghuguanli','MUM_PERSON_EXPORT','MUM_PERSON_EXPORT'),(84,'2015-03-06 17:24:50',NULL,'T','职级管理','yonghuguanli','MUM_PERSON_POSITION','MUM_PERSON_POSITION'),(85,'2015-03-06 17:24:50',NULL,'T','职务管理','yonghuguanli','MUM_PERSON_JOBINFO','MUM_PERSON_JOBINFO'),(90,'2015-03-06 17:24:50',NULL,'T','添加','renzhengyuliebiao','MUM_DOMAIN_ADD','MUM_DOMAIN_ADD'),(91,'2015-03-06 17:24:50',NULL,'T','编辑','renzhengyuliebiao','MUM_DOMAIN_EDIT','MUM_DOMAIN_EDIT'),(92,'2015-03-06 17:24:50',NULL,'T','删除','renzhengyuliebiao','MUM_DOMAIN_DEL','MUM_DOMAIN_DEL'),(93,'2015-03-06 17:24:50',NULL,'T','设置','renzhengyuliebiao','MUM_DOMAIN_SET','MUM_DOMAIN_SET'),(94,'2015-03-06 17:24:50',NULL,'T','添加','zhanghaozuguanli','MUM_MOBILE_GROUP_ADD','MUM_MOBILE_GROUP_ADD'),(95,'2015-03-06 17:24:50',NULL,'T','编辑','zhanghaozuguanli','MUM_MOBILE_GROUP_EDIT','MUM_MOBILE_GROUP_EDIT'),(96,'2015-03-06 17:24:50',NULL,'T','删除','zhanghaozuguanli','MUM_MOBILE_GROUP_DEL','MUM_MOBILE_GROUP_DEL'),(97,'2015-03-06 17:24:50',NULL,'T','设置','zhanghaozuguanli','MUM_MOBILE_GROUP_SET','MUM_MOBILE_GROUP_SET'),(98,'2015-03-06 17:24:50',NULL,'T','账号操作','zhanghaozuguanli','MUM_MOBILE_GROUP_MANAGE','MUM_MOBILE_GROUP_MANAGE'),(99,'2015-04-08 14:49:52','','T','分组','zhanghaoguanli','MUM_MOBILE_GROUPBY','MUM_MOBILE_GROUPBY'),(100,'2015-04-08 14:49:52','','T','切换组','zhanghaoguanli','MUM_MOBILE_CHANGE','MUM_MOBILE_CHANGE'),(101,'2015-04-08 14:49:52','','T','移除','zhanghaoguanli','MUM_MOBILE_REMOVE','MUM_MOBILE_REMOVE'),(103,'2015-03-06 17:24:50',NULL,'T','添加','zhanghaoguanli','MUM_MOBILE_ADD','MUM_MOBILE_ADD'),(104,'2015-03-06 17:24:50',NULL,'T','编辑','zhanghaoguanli','MUM_MOBILE_EDIT','MUM_MOBILE_EDIT'),(105,'2015-03-06 17:24:50',NULL,'T','删除','zhanghaoguanli','MUM_MOBILE_DEL','MUM_MOBILE_DEL'),(106,'2015-03-06 17:24:50',NULL,'T','关联帐号','zhanghaoguanli','MUM_MOBILE_RELA','MUM_MOBILE_RELA'),(107,'2015-03-06 17:24:50',NULL,'T','关闭帐号','zhanghaoguanli','MUM_MOBILE_CLOSE','MUM_MOBILE_CLOSE'),(108,'2015-03-06 17:24:50',NULL,'T','解除帐号','zhanghaoguanli','MUM_MOBILE_UNRELATE','MUM_MOBILE_UNRELATE'),(109,'2015-03-06 17:24:50',NULL,'T','导入','zhanghaoguanli','MUM_MOBILE_IMPORT','MUM_MOBILE_IMPORT'),(110,'2015-03-06 17:24:50',NULL,'T','导出','zhanghaoguanli','MUM_MOBILE_EXPORT','MUM_MOBILE_EXPORT'),(111,'2015-03-06 17:24:50',NULL,'T','查看','yingyongzu','APP_GROUP_VIEW','APP_GROUP_VIEW'),(112,'2015-03-06 17:24:50',NULL,'T','设置','yingyongzu','APP_GROUP_SET','APP_GROUP_SET'),(113,'2015-03-06 17:24:50',NULL,'T','添加','yingyongzu','APP_GROUP_ADD','APP_GROUP_ADD'),(114,'2015-03-06 17:24:50',NULL,'T','编辑','yingyongzu','APP_GROUP_EDIT','APP_GROUP_EDIT'),(115,'2015-03-06 17:24:50',NULL,'T','删除','yingyongzu','APP_GROUP_DEL','APP_GROUP_DEL'),(116,'2015-03-06 17:24:50',NULL,'T','管理','yingyongzu','APP_GROUP_MANAGE','APP_GROUP_MANAGE'),(117,'2015-03-06 17:24:50',NULL,'T','权限','yingyongzu','APP_GROUP_RIGHT','APP_GROUP_RIGHT'),(118,'2015-03-06 17:24:50',NULL,'F','设置/取消精品','storeapplist','STORE_ADD_REMOVE_BOUTIQUE','STORE_ADD_REMOVE_BOUTIQUE'),(119,'2015-03-06 17:24:50',NULL,'F','下架','storeapplist','STORE_APP_DOWN','STORE_APP_DOWN'),(120,'2015-03-06 17:24:50',NULL,'F','评价管理','storeapplist','STORE_APP_APPRAISE','STORE_APP_APPRAISE'),(121,'2015-03-06 17:24:50',NULL,'F','权限管理','storemanage','STORE_RIGHT_MANAGE','STORE_RIGHT_MANAGE'),(122,'2015-03-06 17:24:50',NULL,'F','信息推送','storemanage','STORE_PUSH_MSG','STORE_PUSH_MSG'),(123,'2015-03-06 17:24:50',NULL,'F','终端管理','storemanage','STORE_DEVICE_MANAGE','STORE_DEVICE_MANAGE'),(124,'2015-03-06 17:24:50',NULL,'T','注销','deviceListOperation','DEVICE_LIST_LOGOFF','DEVICE_LIST_LOGOFF'),(125,'2015-03-06 17:24:50',NULL,'T','丢失','deviceListOperation','DEVICE_LIST_LOSE','DEVICE_LIST_LOSE'),(126,'2015-03-06 17:24:50',NULL,'T','淘汰','deviceListOperation','DEVICE_LIST_ELIMINATE','DEVICE_LIST_ELIMINATE'),(127,'2015-03-06 17:24:50',NULL,'T','删除','deviceListOperation','DEVICE_LIST_DEL','DEVICE_LIST_DEL'),(128,'2015-03-06 17:24:50',NULL,'T','获取系统日志','deviceListView','DEVICE_LIST_IMPORT','DEVICE_LIST_WHEREIS'),(129,'2015-03-06 17:24:50',NULL,'T','设备类型设置','deviceListOperation','DEVICE_LIST_TYPE_SET','DEVICE_LIST_TYPE_SET'),(130,'2015-03-06 17:24:50',NULL,'T','获取设备信息','deviceListOperation','DEVICE_LIST_DEVICEINFO','DEVICE_LIST_DEVICEINFO'),(131,'2015-03-06 17:24:50',NULL,'T','锁定设备','deviceListView','DEVICE_LIST_LOCK_DEVICE','DEVICE_LIST_LOCK_DEVICE'),(132,'2015-03-06 17:24:50',NULL,'T','清除锁屏密码','deviceListView','DEVICE_LIST_PASS_CLEAN','DEVICE_LIST_PASS_CLEAN'),(133,'2015-03-06 17:24:50',NULL,'T','擦除设备','deviceListView','DEVICE_LIST_INFO_CLEAN','DEVICE_LIST_INFO_CLEAN'),(134,'2015-03-06 17:24:50',NULL,'T','获取设备位置','deviceListView','DEVICE_LIST_WHEREIS','DEVICE_LIST_WHEREIS'),(135,'2015-03-06 17:24:50',NULL,'T','擦除企业配置','deviceListView','DEVICE_LIST_ENTERPRISE_CLEAN','DEVICE_LIST_ENTERPRISE_CLEAN'),(136,'2015-03-06 17:24:50',NULL,'T','语音漫游','deviceListView','DEVICE_LIST_VOICE_TRIP','DEVICE_LIST_VOICE_TRIP'),(137,'2015-03-06 17:24:50',NULL,'T','数据漫游','deviceListView','DEVICE_LIST_DATA_TRIP','DEVICE_LIST_DATA_TRIP'),(138,'2015-03-06 17:24:50',NULL,'T','应用卸载','deviceListView','DEVICE_LIST_UNINSTALL','DEVICE_LIST_UNINSTALL'),(139,'2015-03-06 17:24:50',NULL,'T','基础','deviceListGroupSet','DEVICE_LIST_BASIC','DEVICE_LIST_BASIC'),(140,'2015-03-06 17:24:50',NULL,'T','密码','deviceListGroupSet','DEVICE_LIST_PASS','DEVICE_LIST_PASS'),(141,'2015-03-06 17:24:50',NULL,'T','限制','deviceListGroupSet','DEVICE_LIST_LIMIT','DEVICE_LIST_LIMIT'),(142,'2015-03-06 17:24:50',NULL,'T','WIFI','deviceListGroupSet','DEVICE_LIST_WIFI','DEVICE_LIST_WIFI'),(143,'2015-03-06 17:24:50',NULL,'T','VPN','deviceListGroupSet','DEVICE_LIST_VPN','DEVICE_LIST_VPN'),(144,'2015-03-06 17:24:50',NULL,'T','激活设置','deviceListGroupSet','DEVICE_LIST_ACTIVATION','DEVICE_LIST_ACTIVATION'),(145,'2015-03-06 17:24:50',NULL,'T','围栏策略','deviceListGroupSet','DEVICE_LIST_RAIL','DEVICE_LIST_RAIL'),(146,'2015-03-06 17:24:50',NULL,'T','添加','deviceListGroupOperation','DEVICE_LIST_GROUP_ADD','DEVICE_LIST_GROUP_ADD'),(147,'2015-03-06 17:24:50',NULL,'T','编辑','deviceListGroupOperation','DEVICE_LIST_GROUP_EDIT','DEVICE_LIST_GROUP_EDIT'),(148,'2015-03-06 17:24:50',NULL,'T','删除','deviceListGroupOperation','DEVICE_LIST_GROUP_DEL','DEVICE_LIST_GROUP_DEL'),(149,'2015-03-06 17:24:50',NULL,'F','管理','deviceListGroupOperation','DEVICE_LIST_GROUP_MANAGE','DEVICE_LIST_GROUP_MANAGE'),(150,'2015-03-06 17:24:50',NULL,'T','设置','deviceListGroupOperation','DEVICE_LIST_GROUP_SET','DEVICE_LIST_GROUP_SET'),(171,'2015-03-06 17:24:50',NULL,'T','添加','contentGroupOperation','a3cc1976-c3e2-11e4-8cc9-40167e216df1','MCM_ADD_PUBLISHCONTENTGROUP'),(172,'2015-03-06 17:24:50',NULL,'T','编辑','contentGroupOperation','a3d140d6-c3e2-11e4-8cc9-40167e216df1','MCM_UPDATE_PUBLISHCONTENTGROUP'),(173,'2015-03-06 17:24:50',NULL,'T','删除','contentGroupOperation','a3d3763a-c3e2-11e4-8cc9-40167e216df1','MCM_DELETE_PUBLISHCONTENTGROUP'),(174,'2015-03-06 17:24:50',NULL,'T','新文档提醒','contentGroupOperation','a3d5eb4a-c3e2-11e4-8cc9-40167e216df1','MCM_NEW_PUBLISHCONTENT_REMIND'),(175,'2015-03-06 17:24:50',NULL,'T','同步删除','contentGroupOperation','a3d7d11c-c3e2-11e4-8cc9-40167e216df1','MCM_SYNC_DELETE'),(176,'2015-03-06 17:24:50',NULL,'T','权限设置','contentGroupOperation','a3d9c8be-c3e2-11e4-8cc9-40167e216df1','MCM_PRIVILEGE_SETTING'),(177,'2015-03-06 17:24:50',NULL,'F','文档组授权','contentGroupOperation','a3dbb4e4-c3e2-11e4-8cc9-40167e216df1','MCM_PUBLISHCONTENTGROUP_AUTHORIZATION'),(178,'2015-03-06 17:24:50',NULL,'T','发布','contentOperation','a3dd58bc-c3e2-11e4-8cc9-40167e216df1','MCM_ADD_PUBLISHCONTENT'),(179,'2015-03-06 17:24:50',NULL,'T','编辑','contentOperation','a3df1bf2-c3e2-11e4-8cc9-40167e216df1','MCM_UPDATE_PUBLISHCONTENT'),(180,'2015-03-06 17:24:50',NULL,'T','删除','contentOperation','a3e0e81a-c3e2-11e4-8cc9-40167e216df1','MCM_DELETE_PUBLISHCONTENT'),(181,'2015-03-06 17:24:50',NULL,'T','评论管理','contentOperation','a3e2a114-c3e2-11e4-8cc9-40167e216df1','MCM_REVIEW_MANAGE'),(182,'2015-03-06 17:24:50',NULL,'F','公共组文档管理','publishContentGroupManage','a3e47782-c3e2-11e4-8cc9-40167e216df1','MCM_PUBLIC_PUBLISHCONTENTGROUP_MANAGE'),(183,'2015-03-06 17:24:50',NULL,'T','添加','programaManage','a3e6444a-c3e2-11e4-8cc9-40167e216df1','MCM_ADD_PROGRAMA'),(184,'2015-03-06 17:24:50',NULL,'T','编辑','programaManage','a3e8206c-c3e2-11e4-8cc9-40167e216df1','MCM_UPDATE_PROGRAMA'),(185,'2015-03-06 17:24:50',NULL,'T','删除','programaManage','a3e9bf30-c3e2-11e4-8cc9-40167e216df1','MCM_DELETE_PROGRAMA'),(186,'2015-03-06 17:24:50',NULL,'T','推荐设置','programaManage','a3eb6aba-c3e2-11e4-8cc9-40167e216df1','MCM_RECOMMEND_SETTING'),(187,'2015-03-06 17:24:50',NULL,'T','文档推荐','programaManage','a3ed5118-c3e2-11e4-8cc9-40167e216df1','MCM_PUBLISHCONTENT_RECOMMEND'),(188,'2015-03-06 17:24:50','','T','栏目切换','programaManage','a3ef1dea-c3e2-11e4-8cc9-40167e216df1','MCM_PROGRAMA_SWITCH'),(189,'2015-03-17 17:24:50','','T','添加账号','yuguanli','a3aaaaea-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_ADD'),(190,'2015-03-17 17:24:50','','T','同步','zhanghaoguanli','a3aaaaeb-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_SYN'),(191,'2015-03-17 17:24:50','','T','导入','yuguanli','a3aaaaec-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_IMPORT'),(192,'2015-03-17 17:24:50','','T','导出','yuguanli','a3aaaaed-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_EXPORT'),(193,'2015-03-17 17:24:50','','T','关联账号','yuguanli','a3aaaaee-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_RELA'),(194,'2015-03-17 17:24:50','','T','关闭账号','yuguanli','a3aaaaef-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_CLOSE'),(195,'2015-03-17 17:24:50','','T','编辑','yuguanli','a3aaaaeg-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_EDIT'),(196,'2015-03-17 17:24:50','','T','删除','yuguanli','a3aaaaeh-c3e2-11e4-8cc9-40167e216df1','MUM_MOBILE_DEL'),(197,'2015-03-17 17:24:50','','T','添加域','yuguanli','a3aaaaei-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_ADD'),(198,'2015-03-17 17:24:50','','T','编辑域','yuguanli','a3aaaaej-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_EDIT'),(199,'2015-03-17 17:24:50','','T','删除域','yuguanli','a3aaaaek-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_DEL'),(200,'2015-03-17 17:24:50','','T','设置字段','yuguanli','a3aaaael-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_SET'),(201,'2015-03-17 17:24:50','','T','添加认证字段','yuguanli','a3aaaaem-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_AUTH_ADD'),(202,'2015-03-17 17:24:50','','T','上移','yuguanli','a3aaaaen-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_AUTH_UP'),(203,'2015-03-17 17:24:50','','T','下移','yuguanli','a3aaaaeo-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_AUTH_DOWN'),(204,'2015-03-17 17:24:50','','T','编辑','yuguanli','a3aaaaep-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_AUTH_EDIT'),(205,'2015-03-17 17:24:50','','T','删除','yuguanli','a3aaaaeq-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_AUTH_DEL'),(206,'2015-03-17 17:24:50','','T','同步组织机构','zuzhijigou','a3aaaaer-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_SYN'),(207,'2015-03-17 17:24:50','','T','添加组织机构','zuzhijigou','a3aaaaes-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_ADD'),(208,'2015-03-17 17:24:50','','T','导入组织机构','zuzhijigou','a3aaaaet-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_IMPORT'),(209,'2015-03-17 17:24:50','','T','导出组织机构','zuzhijigou','a3aaaaeu-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_EXPORT'),(210,'2015-03-17 17:24:50','','T','导入用户','zuzhijigou','a3aaaaev-c3e2-11e4-8cc9-40167e216df1','MUM_PERSON_IMPORT'),(211,'2015-03-17 17:24:50','','T','导出用户','zuzhijigou','a3aaaaew-c3e2-11e4-8cc9-40167e216df1','MUM_PERSON_EXPORT'),(212,'2015-03-17 17:24:50','','T','添加用户','zuzhijigou','a3aaaaex-c3e2-11e4-8cc9-40167e216df1','MUM_PERSON_ADD'),(213,'2015-03-17 17:24:50','','T','删除用户','zuzhijigou','a3aaaaey-c3e2-11e4-8cc9-40167e216df1','MUM_PERSON_DEL'),(214,'2015-03-17 17:24:50','','T','账号设置','yonghuguanli','a3aaaaez-c3e2-11e4-8cc9-40167e216df1','MUM_PERSON_SET'),(215,'2015-03-17 17:24:50','','T','编辑用户','zuzhijigou','a3aaaaaa-c3e2-11e4-8cc9-40167e216df1','MUM_PERSON_EDIT'),(216,'2015-03-17 17:24:50','','T','编辑组织机构','zuzhijigou','a3aaaaab-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_EDIT'),(217,'2015-03-17 17:24:50','','T','添加子节点','zuzhijigou','a3aaaaac-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_SON_ADD'),(218,'2015-03-17 17:24:50','','T','删除组织机构','zuzhijigou','a3aaaaad-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_DEL'),(219,'2015-03-17 17:24:50','','T','设备信息','zuzhijigou','a3aaaaae-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_DEVICEINFO'),(220,'2015-03-17 17:24:50','','T','重置','yuguanli','a3aaaaaf-c3e2-11e4-8cc9-40167e216df1','MUM_DOMAIN_RESET'),(221,'2015-03-17 17:24:50',NULL,'F','权限管理','yingyongliebiao','e3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_PRIV_MANAGE'),(222,'2015-03-17 17:24:50',NULL,'F','设置','yingyongliebiao','o3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_MONITOR_MANAGE'),(223,'2015-03-17 17:24:50',NULL,'F','升级管理','yingyongliebiao','k3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_UPDATE_MANAGE'),(224,'2015-03-17 17:24:50',NULL,'F','信息推送','yingyongliebiao','f3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_PUSH_MANAGE'),(225,'2015-03-17 17:24:50',NULL,'F','应用监控','yingyongliebiao','b2aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_MONITOR_MANAGE'),(226,'2015-03-17 17:24:50',NULL,'F','渠道管理','yingyongliebiao','3aaaaae-c3e2-11e4-8cc9-40167e216df','MAM_TERM_MANAGE'),(227,'2015-03-17 17:24:50',NULL,'F','终端管理','yingyongliebiao','d3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_TERM_MANAGE'),(228,'2015-03-17 17:24:50',NULL,'F','证书管理','yingyongliebiao','m3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_CERT_MANAGE'),(229,'2015-03-17 17:24:50',NULL,'F','应用卡片','yingyongliebiao','n3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_CARD_MANAGE'),(230,'2015-03-17 17:24:50',NULL,'F','接口管理','yingyongliebiao','p3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_INTERFACE_MANAGE'),(231,'2015-03-17 17:24:50',NULL,'T','添加','yingyongliebiao','g3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_ADD_MANAGE'),(232,'2015-03-17 17:24:50',NULL,'T','编辑','yingyongliebiao','h3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_EDIT_MANAGE'),(233,'2015-03-17 17:24:50',NULL,'T','删除','yingyongliebiao','i3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_DELAPP_MANAGE'),(234,'2015-03-17 17:24:50',NULL,'T','上/下架','yingyongliebiao','j3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_SETONOFF_MANAGE'),(235,'2015-03-17 17:24:50',NULL,'T','管理面板','yingyongliebiao','b3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_ADMIN_PANEL'),(236,'2015-03-17 17:24:50',NULL,'F','一键查杀','yingyongliebiao','l3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_KILL_VIRUS_MANAGE'),(237,'2015-04-08 14:49:52',NULL,'F','数据统计','yingyongliebiao','q3aaaaae-c3e2-11e4-8cc9-40167e216df1','MAM_ANALY_MANAGE'),(238,'2015-04-08 14:49:52',NULL,'T','组织机构类别','zuzhijigou','asdfasdfa-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_TYPE'),(239,'2015-04-08 14:49:52','','T','组织机构类别添加','zuzhijigou','aaaaaafff-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_TYPE_ADD'),(240,'2015-04-08 14:49:52','','T','组织机构类别删除','zuzhijigou','sdfdddss-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_TYPE_DEL'),(241,'2015-04-08 14:49:52','','T','组织机构类别编辑','zuzhijigou','fdsssddfs-c3e2-11e4-8cc9-40167e216df1','MUM_ORG_TYPE_EDIT'),(242,'2015-04-08 14:49:52','','T','组织机构','zuzhijigou','adsssdds-c3e2-11e4-8cc9-40167e216df1','MUM_ORG'),(243,'2015-03-06 17:24:50',NULL,'T','公共文档','contentOperation','a3dd58bc-c3e2-11e4-8cc9-40167e216df1','MCM_ADD_PUBLISHCONTENT');

#
# Source for table "Programa"
#

DROP TABLE IF EXISTS Programa;
CREATE TABLE Programa (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  appId varchar(255)  DEFAULT NULL,
  description varchar(255)  DEFAULT NULL,
  title varchar(255)  DEFAULT NULL,
  documentPropertyId bigint(20) DEFAULT NULL,
  createUserId bigint(20) DEFAULT NULL,
  isDelete int(11) DEFAULT NULL,
  isEnable int(11) DEFAULT NULL,
  orderDate datetime DEFAULT NULL,
  updatedAt datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FKC82F167DD60F93CA (documentPropertyId)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "Programa"
#

INSERT INTO Programa VALUES ('1', now(), null, '推荐栏目', '推荐', null, '1', '0', '1', '2015-08-06 16:23:27', '2015-09-16 20:46:28'),('2', '2015-08-07 13:37:29', null, null, '公共栏目', null, '1', '0', '1', '2015-08-06 16:23:28', null);


#
# Source for table "PublishContentGroup"
#

DROP TABLE IF EXISTS PublishContentGroup;
CREATE TABLE PublishContentGroup (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  createUserId bigint(20) DEFAULT NULL,
  description varchar(255)  DEFAULT NULL,
  isDelete int(11) DEFAULT NULL,
  isEnable int(11) DEFAULT NULL,
  name varchar(255)  DEFAULT NULL,
  orderDate datetime DEFAULT NULL,
  updatedAt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "PublishContentGroup"
#

INSERT INTO PublishContentGroup VALUES (1,now(),1,'公共文档组',0,0,'公共文档组','2015-08-06 16:22:57',NULL);


#
# Source for table "SecurityConfig"
#

DROP TABLE IF EXISTS SecurityConfig;
CREATE TABLE SecurityConfig (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  cycle varchar(255)  DEFAULT NULL,
  emailNotice char(1)  DEFAULT NULL,
  frozen char(1)  DEFAULT NULL,
  sessBroken char(1)  DEFAULT NULL,
  switcher char(1)  DEFAULT NULL,
  warring char(1)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "SecurityConfig"
#

INSERT INTO SecurityConfig VALUES (1,'2015-06-25 19:37:34','1','T','T','T','F','T');




#
# Source for table "t_PositionType"
#

DROP TABLE IF EXISTS t_PositionType;
CREATE TABLE t_PositionType (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  paixu bigint(20) DEFAULT NULL,
  typeName varchar(50)  DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO t_PositionType (id, createdAt, paixu, typeName) VALUES ('100000', now(), '100000', '请选择');

#
# Data for table "TenantInfo"
#

DROP TABLE IF EXISTS TenantInfo;
CREATE TABLE TenantInfo (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  createdAt datetime DEFAULT NULL,
  tenantAddr varchar(255) DEFAULT NULL,
  tenantAuthStatus varchar(255) DEFAULT NULL,
  tenantFullName varchar(255) DEFAULT NULL,
  tenantId varchar(255) DEFAULT NULL,
  tenantInternetAddr varchar(255) DEFAULT NULL,
  tenantLogo varchar(255) DEFAULT NULL,
  tenantName varchar(255) DEFAULT NULL,
  tenantTel varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO TenantInfo (id,createdAt,tenantAddr,tenantAuthStatus,tenantFullName,tenantId,tenantInternetAddr,tenantLogo,tenantName,tenantTel) VALUES (1,now(),'',NULL,'','1846','','','ydyy','');

-- ----------------------------
-- Procedure structure for `createOrgChildLst`
-- ----------------------------
DROP PROCEDURE IF EXISTS `createOrgChildLst`;
DELIMITER ;;
CREATE DEFINER=`emm_user`@`%` PROCEDURE `createOrgChildLst`(IN rootId VARCHAR(100),IN nDepth INT)
BEGIN
      DECLARE done INT DEFAULT 0;
      DECLARE b VARCHAR(100);
      DECLARE cur1 CURSOR FOR SELECT orgId FROM t_Organization where parentId=rootId;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

      insert into tmpOrgLst values (null,rootId,nDepth);


      OPEN cur1;

      FETCH cur1 INTO b;
      WHILE done=0 DO
              CALL createOrgChildLst(b,nDepth+1);
              FETCH cur1 INTO b;
      END WHILE;

      CLOSE cur1;
     END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `showOrgChildLst`
-- ----------------------------
DROP PROCEDURE IF EXISTS `showOrgChildLst`;
DELIMITER ;;
CREATE DEFINER=`emm_user`@`%` PROCEDURE `showOrgChildLst`(IN rootId VARCHAR(100))
BEGIN
      SET max_sp_recursion_depth = 10000;
      CREATE TEMPORARY TABLE IF NOT EXISTS tmpOrgLst
       (sno int primary key auto_increment,id VARCHAR(100),depth int);
      DELETE FROM tmpOrgLst;

      CALL createOrgChildLst(rootId,0);

      select t_Organization.id from tmpOrgLst,t_Organization where tmpOrgLst.id=t_Organization.orgId order by tmpOrgLst.sno;
     END
;;
DELIMITER ;

-- ----------------------------
-- FUNCTION structure for `getParentList`
-- ----------------------------
DROP FUNCTION IF EXISTS `getParentList`;
DELIMITER ;;
CREATE DEFINER=`emm_user`@`%` FUNCTION `getParentList`(rootId VARCHAR(100))
RETURNS varchar(1000)
BEGIN
DECLARE sParentList varchar(1000);
DECLARE sParentTemp varchar(1000);
SET sParentTemp =rootId;
WHILE sParentTemp is not null DO
IF (sParentList is not null) THEN
SET sParentList = concat(sParentTemp,',',sParentList);
ELSE
SET sParentList = concat(sParentTemp);
END IF;
SELECT group_concat(parentId) INTO sParentTemp FROM t_Organization where FIND_IN_SET(orgId,sParentTemp)>0;
END WHILE;
RETURN sParentList;
END;
;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


