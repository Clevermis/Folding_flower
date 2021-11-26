/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.17 : Database - folding_flowers
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`folding_flowers` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `folding_flowers`;

/*Table structure for table `flo_control` */

DROP TABLE IF EXISTS `flo_control`;

CREATE TABLE `flo_control` (
  `r_id` int(15) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `r_code` int(10) DEFAULT NULL COMMENT '角色权限代码',
  `r_name` varchar(15) DEFAULT NULL COMMENT '角色名称',
  `r_creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `r_creation` datetime DEFAULT NULL COMMENT '创建时间',
  `r_modifier` bigint(20) DEFAULT NULL COMMENT '修改者',
  `r_modification` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flo_control` */

/*Table structure for table `flo_posts` */

DROP TABLE IF EXISTS `flo_posts`;

CREATE TABLE `flo_posts` (
  `p_id` int(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `p_bum` int(15) DEFAULT NULL COMMENT '编号',
  `p_master` varchar(15) DEFAULT NULL COMMENT '主人',
  `p_content` varchar(15) DEFAULT NULL COMMENT '内容',
  `p_comment` varchar(15) DEFAULT NULL COMMENT '评论',
  `p_up` int(20) DEFAULT NULL COMMENT '点赞',
  `p_script` varchar(15) DEFAULT NULL COMMENT '剧本',
  `p_creation` datetime DEFAULT NULL COMMENT '创建时间',
  `p_creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `p_updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `p_update` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flo_posts` */

/*Table structure for table `flo_script` */

DROP TABLE IF EXISTS `flo_script`;

CREATE TABLE `flo_script` (
  `s_id` int(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `s_num` varchar(15) DEFAULT NULL COMMENT '编号',
  `s_name` varchar(15) DEFAULT NULL COMMENT '名字',
  `s_kind` varchar(15) DEFAULT NULL COMMENT '类型',
  `s_source` varchar(15) DEFAULT NULL COMMENT '来源',
  `s_synopsis` varchar(15) DEFAULT NULL COMMENT '简介',
  `s_creation` datetime DEFAULT NULL COMMENT '创建时间',
  `s_creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `s_updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `s_update` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flo_script` */

/*Table structure for table `flo_user` */

DROP TABLE IF EXISTS `flo_user`;

CREATE TABLE `flo_user` (
  `u_id` int(15) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_num` int(10) DEFAULT NULL COMMENT '编号',
  `u_name` varchar(15) DEFAULT NULL COMMENT '名字',
  `u_sex` varchar(15) DEFAULT NULL COMMENT '性别',
  `u_age` int(10) DEFAULT NULL COMMENT '年龄',
  `u_synopsis` varchar(15) DEFAULT NULL COMMENT '简介',
  `u_region` varchar(15) DEFAULT NULL COMMENT '地区',
  `u_phone` int(10) DEFAULT NULL COMMENT '手机号',
  `u_password` varchar(15) DEFAULT NULL COMMENT '密码',
  `u_head` varchar(15) DEFAULT NULL COMMENT '头像',
  `u_sta` int(10) DEFAULT NULL COMMENT '状态',
  `u_role` int(10) DEFAULT NULL COMMENT '用户角色（取自权限控制表）',
  `u_creation` datetime DEFAULT NULL COMMENT '创建时间',
  `u_creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `u_modifier` bigint(20) DEFAULT NULL COMMENT '修改者',
  `u_modification` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flo_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
