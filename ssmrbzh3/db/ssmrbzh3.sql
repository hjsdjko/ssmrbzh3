/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmrbzh3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmrbzh3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmrbzh3`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmrbzh3/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmrbzh3/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmrbzh3/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jihuadaka` */

DROP TABLE IF EXISTS `jihuadaka`;

CREATE TABLE `jihuadaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `jihuatupian` varchar(200) DEFAULT NULL COMMENT '计划图片',
  `kaishiriqi` date DEFAULT NULL COMMENT '开始日期',
  `jihuaneirong` longtext COMMENT '计划内容',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `jihuatianshu` varchar(200) DEFAULT NULL COMMENT '计划天数',
  `wanchengdu` varchar(200) DEFAULT NULL COMMENT '完成度',
  `dakariqi` date DEFAULT NULL COMMENT '打卡日期',
  `dakatianshu` int(11) DEFAULT NULL COMMENT '打卡天数',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619020374349 DEFAULT CHARSET=utf8 COMMENT='计划打卡';

/*Data for the table `jihuadaka` */

insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (31,'2021-04-21 23:48:56','计划标题1','http://localhost:8080/ssmrbzh3/upload/jihuadaka_jihuatupian1.jpg','2021-04-21','计划内容1','2021-04-21','计划天数1','未完成','2021-04-21',1,'账号1','姓名1',1);
insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (32,'2021-04-21 23:48:56','计划标题2','http://localhost:8080/ssmrbzh3/upload/jihuadaka_jihuatupian2.jpg','2021-04-21','计划内容2','2021-04-21','计划天数2','未完成','2021-04-21',2,'账号2','姓名2',2);
insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (33,'2021-04-21 23:48:56','计划标题3','http://localhost:8080/ssmrbzh3/upload/jihuadaka_jihuatupian3.jpg','2021-04-21','计划内容3','2021-04-21','计划天数3','未完成','2021-04-21',3,'账号3','姓名3',3);
insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (34,'2021-04-21 23:48:56','计划标题4','http://localhost:8080/ssmrbzh3/upload/jihuadaka_jihuatupian4.jpg','2021-04-21','计划内容4','2021-04-21','计划天数4','未完成','2021-04-21',4,'账号4','姓名4',4);
insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (35,'2021-04-21 23:48:56','计划标题5','http://localhost:8080/ssmrbzh3/upload/jihuadaka_jihuatupian5.jpg','2021-04-21','计划内容5','2021-04-21','计划天数5','未完成','2021-04-21',5,'账号5','姓名5',5);
insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (36,'2021-04-21 23:48:56','计划标题6','http://localhost:8080/ssmrbzh3/upload/jihuadaka_jihuatupian6.jpg','2021-04-21','计划内容6','2021-04-21','计划天数6','未完成','2021-04-21',6,'账号6','姓名6',6);
insert  into `jihuadaka`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`dakariqi`,`dakatianshu`,`zhanghao`,`xingming`,`userid`) values (1619020374348,'2021-04-21 23:52:53','测试','http://localhost:8080/ssmrbzh3/upload/1619020348695.jpg','2021-04-21','测试','2021-04-23','3','未完成','2021-04-21',1,'用户1','姓名1',11);

/*Table structure for table `jihualishi` */

DROP TABLE IF EXISTS `jihualishi`;

CREATE TABLE `jihualishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `jihuatupian` varchar(200) DEFAULT NULL COMMENT '计划图片',
  `kaishiriqi` date DEFAULT NULL COMMENT '开始日期',
  `jihuaneirong` longtext COMMENT '计划内容',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `jihuatianshu` int(11) DEFAULT NULL COMMENT '计划天数',
  `wanchengdu` varchar(200) DEFAULT NULL COMMENT '完成度',
  `wanchengriqi` date DEFAULT NULL COMMENT '完成日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619020384145 DEFAULT CHARSET=utf8 COMMENT='计划历史';

/*Data for the table `jihualishi` */

insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (41,'2021-04-21 23:48:56','计划标题1','http://localhost:8080/ssmrbzh3/upload/jihualishi_jihuatupian1.jpg','2021-04-21','计划内容1','2021-04-21',1,'未完成','2021-04-21','账号1','姓名1',1);
insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (42,'2021-04-21 23:48:56','计划标题2','http://localhost:8080/ssmrbzh3/upload/jihualishi_jihuatupian2.jpg','2021-04-21','计划内容2','2021-04-21',2,'未完成','2021-04-21','账号2','姓名2',2);
insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (43,'2021-04-21 23:48:56','计划标题3','http://localhost:8080/ssmrbzh3/upload/jihualishi_jihuatupian3.jpg','2021-04-21','计划内容3','2021-04-21',3,'未完成','2021-04-21','账号3','姓名3',3);
insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (44,'2021-04-21 23:48:56','计划标题4','http://localhost:8080/ssmrbzh3/upload/jihualishi_jihuatupian4.jpg','2021-04-21','计划内容4','2021-04-21',4,'未完成','2021-04-21','账号4','姓名4',4);
insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (45,'2021-04-21 23:48:56','计划标题5','http://localhost:8080/ssmrbzh3/upload/jihualishi_jihuatupian5.jpg','2021-04-21','计划内容5','2021-04-21',5,'未完成','2021-04-21','账号5','姓名5',5);
insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (46,'2021-04-21 23:48:56','计划标题6','http://localhost:8080/ssmrbzh3/upload/jihualishi_jihuatupian6.jpg','2021-04-21','计划内容6','2021-04-21',6,'未完成','2021-04-21','账号6','姓名6',6);
insert  into `jihualishi`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`wanchengriqi`,`zhanghao`,`xingming`,`userid`) values (1619020384144,'2021-04-21 23:53:04','测试','http://localhost:8080/ssmrbzh3/upload/1619020348695.jpg','2021-04-21','测试','2021-04-23',3,'完成','2021-04-21','用户1','姓名1',11);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619020404742 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (51,'2021-04-21 23:48:56',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (52,'2021-04-21 23:48:56',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (53,'2021-04-21 23:48:56',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (54,'2021-04-21 23:48:56',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (55,'2021-04-21 23:48:56',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (56,'2021-04-21 23:48:56',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619020404741,'2021-04-21 23:53:24',11,'用户1','测试','');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','tysepko1c1nv2vpv3qohgao07zjgnayy','2021-04-21 23:51:12','2021-04-22 00:51:13');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 23:48:56');

/*Table structure for table `xuexijihua` */

DROP TABLE IF EXISTS `xuexijihua`;

CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `jihuatupian` varchar(200) DEFAULT NULL COMMENT '计划图片',
  `kaishiriqi` date DEFAULT NULL COMMENT '开始日期',
  `jihuaneirong` longtext COMMENT '计划内容',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `jihuatianshu` varchar(200) DEFAULT NULL COMMENT '计划天数',
  `wanchengdu` varchar(200) DEFAULT NULL COMMENT '完成度',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619020359640 DEFAULT CHARSET=utf8 COMMENT='学习计划';

/*Data for the table `xuexijihua` */

insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (21,'2021-04-21 23:48:56','计划标题1','http://localhost:8080/ssmrbzh3/upload/xuexijihua_jihuatupian1.jpg','2021-04-21','计划内容1','2021-04-21','计划天数1','未完成','账号1','姓名1',1);
insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (22,'2021-04-21 23:48:56','计划标题2','http://localhost:8080/ssmrbzh3/upload/xuexijihua_jihuatupian2.jpg','2021-04-21','计划内容2','2021-04-21','计划天数2','未完成','账号2','姓名2',2);
insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (23,'2021-04-21 23:48:56','计划标题3','http://localhost:8080/ssmrbzh3/upload/xuexijihua_jihuatupian3.jpg','2021-04-21','计划内容3','2021-04-21','计划天数3','未完成','账号3','姓名3',3);
insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (24,'2021-04-21 23:48:56','计划标题4','http://localhost:8080/ssmrbzh3/upload/xuexijihua_jihuatupian4.jpg','2021-04-21','计划内容4','2021-04-21','计划天数4','未完成','账号4','姓名4',4);
insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (25,'2021-04-21 23:48:56','计划标题5','http://localhost:8080/ssmrbzh3/upload/xuexijihua_jihuatupian5.jpg','2021-04-21','计划内容5','2021-04-21','计划天数5','未完成','账号5','姓名5',5);
insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (26,'2021-04-21 23:48:56','计划标题6','http://localhost:8080/ssmrbzh3/upload/xuexijihua_jihuatupian6.jpg','2021-04-21','计划内容6','2021-04-21','计划天数6','未完成','账号6','姓名6',6);
insert  into `xuexijihua`(`id`,`addtime`,`jihuabiaoti`,`jihuatupian`,`kaishiriqi`,`jihuaneirong`,`jieshushijian`,`jihuatianshu`,`wanchengdu`,`zhanghao`,`xingming`,`userid`) values (1619020359639,'2021-04-21 23:52:39','测试','http://localhost:8080/ssmrbzh3/upload/1619020348695.jpg','2021-04-21','测试','2021-04-23','3','未完成','用户1','姓名1',11);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-04-21 23:48:56','用户1','123456','姓名1','男',21,'13823888881','773890001@qq.com','http://localhost:8080/ssmrbzh3/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`) values (12,'2021-04-21 23:48:56','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmrbzh3/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`) values (13,'2021-04-21 23:48:56','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmrbzh3/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`) values (14,'2021-04-21 23:48:56','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmrbzh3/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`) values (15,'2021-04-21 23:48:56','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmrbzh3/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`) values (16,'2021-04-21 23:48:56','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmrbzh3/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
