/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.1.34-community : Database - crf_cs_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `actor` */

CREATE TABLE `actor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actor_no` varchar(20) DEFAULT NULL,
  `actor_name` varchar(20) DEFAULT NULL,
  `actor_desc` varchar(20) DEFAULT NULL,
  `actor_seq` varchar(10) DEFAULT NULL,
  `is_enable` varchar(2) DEFAULT NULL,
  `createid` varchar(20) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actor_no` (`actor_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `actor` */

insert  into `actor`(`id`,`actor_no`,`actor_name`,`actor_desc`,`actor_seq`,`is_enable`,`createid`,`createtime`) values (1,'admin','超级管理员','拥有所有权限','01','1','wanghao','2015-05-11 11:45:34');
insert  into `actor`(`id`,`actor_no`,`actor_name`,`actor_desc`,`actor_seq`,`is_enable`,`createid`,`createtime`) values (14,'normal','普通角色','普通用户权限',NULL,'1','wanghao','2015-05-11 11:45:34');
insert  into `actor`(`id`,`actor_no`,`actor_name`,`actor_desc`,`actor_seq`,`is_enable`,`createid`,`createtime`) values (15,'he','测试角色','哟哟',NULL,'1','wanghao','2015-06-09 20:25:47');

/*Table structure for table `actor_operation` */

CREATE TABLE `actor_operation` (
  `actor_no` varchar(20) NOT NULL,
  `operation_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `actor_operation` */

insert  into `actor_operation`(`actor_no`,`operation_no`) values ('normal','0101');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('normal','0105');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('normal','0104');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('admin','0201');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('admin','0202');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('admin','0203');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('admin','0204');
insert  into `actor_operation`(`actor_no`,`operation_no`) values ('admin','0205');

/*Table structure for table `dim_node` */

CREATE TABLE `dim_node` (
  `NODE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TREE_ID` varchar(20) DEFAULT NULL,
  `NODE_NO` varchar(25) DEFAULT NULL,
  `NODE_NAME` varchar(100) DEFAULT NULL,
  `NODE_LEVEL` varchar(50) DEFAULT NULL,
  `PARENT_ID` varchar(50) DEFAULT NULL,
  `CHILD_NUM` varchar(50) DEFAULT NULL,
  `SEQSTR` varchar(50) DEFAULT NULL,
  `NODE_PROP` varchar(50) DEFAULT NULL,
  `NODE_ICON` varchar(50) DEFAULT NULL,
  `NODE_FACE` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

/*Data for the table `dim_node` */

insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (188,'area','NT','南通','1','0',NULL,'NT',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (189,'area','AQ','安庆','1','0',NULL,'AQ',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (190,'area','BENGBU','蚌埠','1','0',NULL,'BENGBU',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (191,'area','BT','包头','1','0',NULL,'BT',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (192,'area','BAOJI','宝鸡','1','0',NULL,'BAOJI',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (193,'area','CANGZ','沧州','1','0',NULL,'CANGZ',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (194,'area','CC','长春','1','0',NULL,'CC',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (195,'area','CS','长沙','1','0',NULL,'CS',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (196,'area','CHANGZ','长治','1','0',NULL,'CHANGZ',NULL,NULL,NULL,NULL);
insert  into `dim_node`(`NODE_ID`,`TREE_ID`,`NODE_NO`,`NODE_NAME`,`NODE_LEVEL`,`PARENT_ID`,`CHILD_NUM`,`SEQSTR`,`NODE_PROP`,`NODE_ICON`,`NODE_FACE`,`STATE`) values (197,'area','CZ','常州','1','0',NULL,'CZ',NULL,NULL,NULL,NULL);

/*Table structure for table `dim_tree` */

CREATE TABLE `dim_tree` (
  `TREE_ID` varchar(20) NOT NULL,
  `TREE_NAME` varchar(40) DEFAULT NULL,
  `TOPNODE_NAME` varchar(40) DEFAULT NULL,
  `TREE_TYPE` varchar(10) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `TREE_SEQ` varchar(50) DEFAULT NULL,
  `CRT_TIME` varchar(50) DEFAULT NULL,
  `ICON_TOP` varchar(50) DEFAULT NULL,
  `ICON_NODE` varchar(50) DEFAULT NULL,
  `ICON_LEAF` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dim_tree` */

insert  into `dim_tree`(`TREE_ID`,`TREE_NAME`,`TOPNODE_NAME`,`TREE_TYPE`,`STATE`,`TREE_SEQ`,`CRT_TIME`,`ICON_TOP`,`ICON_NODE`,`ICON_LEAF`) values ('area','地区',NULL,NULL,NULL,NULL,'2015-05-07 13:18:06',NULL,NULL,NULL);

/*Table structure for table `operation` */

CREATE TABLE `operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_no` varchar(20) DEFAULT NULL,
  `operation_name` varchar(20) DEFAULT NULL,
  `operation_url` varchar(100) DEFAULT NULL,
  `operation_seq` varchar(10) DEFAULT NULL,
  `is_enable` varchar(2) DEFAULT NULL,
  `parent_id` varchar(10) DEFAULT NULL,
  `createid` varchar(20) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `operation_no` (`operation_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `operation` */

insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (1,'01','PAD管理','','001','1','0','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (2,'0101','逾期列表','pc_CcardDataController.do?getCcardDataList','001001','1','01','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (3,'02','系统管理','','002','1','0','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (4,'0105','组别管理','pc_ParamSetController.do?getPadGroupList','001002','1','01','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (5,'0202','角色管理','pc_SystemController.do?getActorList','002002','1','02','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (6,'0201','用户管理','pc_SystemController.do?getUserList','002001','1','02','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (7,'0203','菜单管理','pc_SystemController.do?getOperationList','002003','1','02','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (8,'0204','维度管理','pc_SystemController.do?dimMain','002004','1','02','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (10,'0104','PAD用户','pc_ParamSetController.do?getPadUserList','001004','1','01','wanghao','2015-05-11 11:45:34');
insert  into `operation`(`id`,`operation_no`,`operation_name`,`operation_url`,`operation_seq`,`is_enable`,`parent_id`,`createid`,`createtime`) values (12,'0205','在线用户','pc_SystemController.do?getOnlineUserList','002005','1','02','wanghao','2015-05-26 14:22:11');

/*Table structure for table `test` */

CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loanContractNo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `test` */

insert  into `test`(`id`,`loanContractNo`) values (81,'0');
insert  into `test`(`id`,`loanContractNo`) values (82,'1');
insert  into `test`(`id`,`loanContractNo`) values (83,'2');
insert  into `test`(`id`,`loanContractNo`) values (84,'0');
insert  into `test`(`id`,`loanContractNo`) values (85,'1');
insert  into `test`(`id`,`loanContractNo`) values (86,'2');
insert  into `test`(`id`,`loanContractNo`) values (87,'0');
insert  into `test`(`id`,`loanContractNo`) values (88,'1');
insert  into `test`(`id`,`loanContractNo`) values (89,'2');
insert  into `test`(`id`,`loanContractNo`) values (90,'0');
insert  into `test`(`id`,`loanContractNo`) values (91,'1');
insert  into `test`(`id`,`loanContractNo`) values (92,'2');
insert  into `test`(`id`,`loanContractNo`) values (93,'0');
insert  into `test`(`id`,`loanContractNo`) values (94,'1');
insert  into `test`(`id`,`loanContractNo`) values (95,'2');
insert  into `test`(`id`,`loanContractNo`) values (98,'0');
insert  into `test`(`id`,`loanContractNo`) values (99,'1');
insert  into `test`(`id`,`loanContractNo`) values (100,'2');

/*Table structure for table `user` */

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `is_enable` varchar(2) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `createid` varchar(20) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  `last_login_time` varchar(20) DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (1,'wanghao','111111','王浩','438425036@qq.com','13581915307','1','1','wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (2,'nsf','111111','牛牛牛','**********','***********','1',NULL,'wanghao','2015-05-11 11:45:34','2015-06-01 09:22:23','192.168.10.253');
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (3,'fengjing','111111','封景','***','***','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (4,'ttttt','tttttt','tt','tt','tt','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (5,'lyh','111111','雷艳红','****','****','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (6,'zhangmo','111111','张默','**@,**','135****0317','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (7,'licai','111111','李彩','@','135****0000','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (8,'wangyuxin','111111','王玉新','@','135****0000','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (9,'yanmuhua','111111','严慕华','@','135****0000','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (10,'chenzong','111111','陈总','@','135****0000','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (11,'zhngyan','111111','郑岩','@','135****0000','0',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (12,'zhangdaihao','111111','张代浩','','13581915307','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (13,'yufaxiu','1    1','于法修','fuck@crfchina.com','13500000000','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);
insert  into `user`(`id`,`username`,`password`,`realname`,`email`,`mobile`,`is_enable`,`account`,`createid`,`createtime`,`last_login_time`,`last_login_ip`) values (18,'cuisongjie','111111','崔松杰','11@qq.com','11111111111','1',NULL,'wanghao','2015-05-11 11:45:34',NULL,NULL);

/*Table structure for table `user_actor` */

CREATE TABLE `user_actor` (
  `username` varchar(20) NOT NULL,
  `actor_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_actor` */

insert  into `user_actor`(`username`,`actor_no`) values ('fengjing','admin');
insert  into `user_actor`(`username`,`actor_no`) values ('fengjing','normal');
insert  into `user_actor`(`username`,`actor_no`) values ('zhangmo','normal');
insert  into `user_actor`(`username`,`actor_no`) values ('wanghao','admin');
insert  into `user_actor`(`username`,`actor_no`) values ('wanghao','normal');
insert  into `user_actor`(`username`,`actor_no`) values ('nsf','admin');
insert  into `user_actor`(`username`,`actor_no`) values ('nsf','normal');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;