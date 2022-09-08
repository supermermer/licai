/*微信后台相关*/
/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.1.34-community : Database - crf_invest_db
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `wechat_article` */

CREATE TABLE `wechat_article` (
  `art_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `art_tmi` varchar(100) NOT NULL COMMENT '图文消息缩略图的media_id',
  `art_autor` varchar(20) NOT NULL COMMENT '图文消息的作者',
  `art_title` varchar(100) NOT NULL COMMENT '图文消息的标题',
  `art_csu` varchar(100) NOT NULL COMMENT '在图文消息页面点击“阅读原文”后的页面',
  `art_content` text NOT NULL COMMENT '图文消息页面的内容，支持HTML标签',
  `art_digest` varchar(50) NOT NULL COMMENT '图文消息的描述',
  `art_scp` varchar(10) NOT NULL COMMENT '是否显示封面，1为显示，0为不显示',
  `art_gs_record_id` bigint(20) NOT NULL COMMENT '外键id',
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*2015-07-29*/
/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.1.34-community : Database - crf_invest_db
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `wechat_article` */

CREATE TABLE `wechat_article` (
  `art_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `art_tmi` varchar(100) NOT NULL DEFAULT '' COMMENT '图文消息缩略图的media_id',
  `art_autor` varchar(20) NOT NULL DEFAULT '' COMMENT '图文消息的作者',
  `art_title` varchar(100) NOT NULL DEFAULT '' COMMENT '图文消息的标题',
  `art_csu` varchar(100) NOT NULL DEFAULT '' COMMENT '在图文消息页面点击“阅读原文”后的页面',
  `art_content` text NOT NULL COMMENT '图文消息页面的内容，支持HTML标签',
  `art_digest` varchar(50) NOT NULL DEFAULT '' COMMENT '图文消息的描述',
  `art_scp` varchar(10) NOT NULL DEFAULT '' COMMENT '是否显示封面，1为显示，0为不显示',
  `art_gs_record_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '外键id',
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `wechat_attention` */

CREATE TABLE `wechat_attention` (
  `attention_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attention_openid` varchar(100) NOT NULL DEFAULT '',
  `attention_nickname` varchar(30) NOT NULL DEFAULT '',
  `attention_sex` varchar(10) NOT NULL DEFAULT '',
  `attention_language` varchar(20) NOT NULL DEFAULT '',
  `attention_city` varchar(20) NOT NULL DEFAULT '',
  `attention_province` varchar(20) NOT NULL DEFAULT '',
  `attention_country` varchar(20) NOT NULL DEFAULT '',
  `attention_headimgurl` varchar(200) NOT NULL DEFAULT '',
  `attention_subscribe_time` bigint(20) NOT NULL DEFAULT '0',
  `attention_unionid` varchar(50) NOT NULL DEFAULT '',
  `attention_remark` varchar(100) NOT NULL DEFAULT '',
  `attention_groupid` varchar(10) NOT NULL DEFAULT '',
  `attention_subscribe_timedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`attention_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `wechat_gs_record` */

CREATE TABLE `wechat_gs_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `record_media_id` varchar(100) NOT NULL DEFAULT '',
  `record_type` varchar(10) NOT NULL DEFAULT '',
  `record_creat_at` bigint(20) NOT NULL DEFAULT '0',
  `record_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_create_id` varchar(20) NOT NULL DEFAULT '',
  `record_msg_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `wechat_kf` */

CREATE TABLE `wechat_kf` (
  `kf_p_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `kf_account` varchar(20) NOT NULL DEFAULT '',
  `kf_nickname` varchar(20) NOT NULL DEFAULT '',
  `kf_password` varchar(40) NOT NULL DEFAULT '',
  `kf_creat_id` varchar(20) NOT NULL DEFAULT '',
  `kf_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kf_p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `wechat_material` */

CREATE TABLE `wechat_material` (
  `material_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `material_media_id` varchar(100) NOT NULL DEFAULT '',
  `material_type` varchar(10) NOT NULL DEFAULT '',
  `material_create_at` bigint(20) NOT NULL DEFAULT '0',
  `material_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `material_create_id` varchar(20) NOT NULL DEFAULT '',
  `material_url` varchar(100) NOT NULL DEFAULT '',
  `material_desc` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `wechat_record` */

CREATE TABLE `wechat_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `record_openid` varchar(50) NOT NULL DEFAULT '',
  `record_opercode` varchar(10) NOT NULL DEFAULT '',
  `record_opercode_desc` varchar(30) NOT NULL DEFAULT '',
  `record_text` text NOT NULL,
  `record_time` bigint(20) NOT NULL DEFAULT '0',
  `record_time_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_worker` varchar(30) NOT NULL DEFAULT '',
  `record_import_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--修改后台用户邮箱长度
alter table user modify email varchar(40) default '' not null; 

update operation set operation_name='出资列表' where operation_name='认购列表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
alter table fm_user_wechat add index userid_index (fm_user_id ) ;