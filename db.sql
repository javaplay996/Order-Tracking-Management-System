/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dingdangenzhong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dingdangenzhong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dingdangenzhong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-22 11:20:58'),(2,'sex_types','性别',2,'女',NULL,'2021-04-22 11:20:58'),(3,'dingdan_types','订单状态',1,'待支付',NULL,'2021-04-22 11:20:58'),(4,'dingdan_types','订单状态',2,'待生产',NULL,'2021-04-22 11:20:58'),(5,'dingdan_types','订单状态',3,'生产中',NULL,'2021-04-22 11:20:58'),(6,'dingdan_types','订单状态',4,'待收货',NULL,'2021-04-22 11:20:58'),(7,'dingdan_types','订单状态',5,'已收货',NULL,'2021-04-22 11:20:58'),(8,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-22 11:20:58'),(9,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-22 11:20:58');

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_bianhao` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '客户名称',
  `dingdan_name` varchar(200) DEFAULT NULL COMMENT '定制品名称 Search111',
  `dingdan_number` int(200) DEFAULT NULL COMMENT '订购数量 Search111',
  `dingdan_time` timestamp NULL DEFAULT NULL COMMENT '签订时间',
  `dingdan_money` decimal(10,4) DEFAULT NULL COMMENT '订单总额',
  `dingdan_types` int(200) DEFAULT NULL COMMENT '订单状态 Search111',
  `youxigonglue_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`dingdan_bianhao`,`yonghu_id`,`dingdan_name`,`dingdan_number`,`dingdan_time`,`dingdan_money`,`dingdan_types`,`youxigonglue_content`,`create_time`) values (22,'订单编号1',1,'定制品名称1',10,'2021-04-22 11:34:53','1000.0000',5,'备注1\r\n','2021-04-22 11:34:58'),(23,'订单编号2',3,'定制品名称2',20,'2021-04-23 00:00:00','2000.0000',1,'备注2\r\n','2021-04-22 14:00:30'),(24,'订单编号3',1,'定制品名称3',30,'2021-04-22 14:10:45','3000.0000',5,'备注3\r\n','2021-04-22 14:10:49');

/*Table structure for table `dingdan_liuyan` */

DROP TABLE IF EXISTS `dingdan_liuyan`;

CREATE TABLE `dingdan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_id` int(11) DEFAULT NULL COMMENT '定制品名称',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '反馈用户',
  `dingdan_liuyan_content` text COMMENT '反馈内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='售后服务';

/*Data for the table `dingdan_liuyan` */

insert  into `dingdan_liuyan`(`id`,`dingdan_id`,`yonghu_id`,`dingdan_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,22,1,'12312312123123123123123\r\n','‍123123123\r\n','2021-04-22 13:55:40','2021-04-22 13:55:40'),(2,24,1,'123123123123\r\n','‍132123123123\r\n','2021-04-22 14:11:44','2021-04-22 14:11:44');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/dingdangenzhong/file/download?fileName=1619070489073.jpg','2021-04-22 13:48:11','公告详情1\r\n','2021-04-22 13:48:11'),(2,'公告名称2',2,'http://localhost:8080/dingdangenzhong/file/download?fileName=1619070497226.jpg','2021-04-22 13:48:19','公告详情2\r\n','2021-04-22 13:48:19');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','w5i6f0xxa7aribtrcr8fvajjy35m1x9q','2021-04-22 10:40:44','2021-04-22 15:12:59'),(2,1,'111','yonghu','用户','4wmyuovpfp6qdgmtbe8y5wpjm27h0hxt','2021-04-22 13:48:51','2021-04-22 15:11:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_bianhao` varchar(200) DEFAULT NULL COMMENT '客户编号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_bianhao`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'客户编号1','111','123456','客户1',2,'410882200011064871','17789944561','http://localhost:8080/dingdangenzhong/file/download?fileName=1619060126863.jpg','2021-04-22 10:55:27'),(2,'客户编号2','222','123456','客户2',2,'410882200011064872','17789944562','http://localhost:8080/dingdangenzhong/file/download?fileName=1619060146992.jpg','2021-04-22 10:55:48'),(3,'123','123','123456','123',1,'410882200011064873','17789944563','http://localhost:8080/dingdangenzhong/file/download?fileName=1619071132092.jpg','2021-04-22 13:58:53');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuangong_bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`sex_types`,`yuangong_id_number`,`yuangong_phone`,`yuangong_photo`,`yuangong_bumen`,`create_time`) values (1,'333','123456','员工1',2,'410882200011211341','17786655941','http://localhost:8080/dingdangenzhong/file/download?fileName=1619060172912.jpg','部门1','2021-04-22 10:56:18'),(2,'444','123456','员工2',2,'410882200011211342','17786655942','http://localhost:8080/dingdangenzhong/file/download?fileName=1619060191613.jpg','部门2','2021-04-22 10:56:34');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
