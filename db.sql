/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmd0rud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmd0rud` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmd0rud`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269594057 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-09 13:27:29',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-09 13:27:29',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-09 13:27:29',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-09 13:27:29',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-09 13:27:29',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-09 13:27:29',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615269082247,'2021-03-09 13:51:21',11,'梅江区城北镇凹背','测试','13800000000','是'),(1615269561968,'2021-03-09 13:59:21',1615269479737,'梅县区石扇镇牛牯岌','张三','13800000000','否'),(1615269594056,'2021-03-09 13:59:53',1615269479737,'梅江碧桂园二期西北','张三','13800000000','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tongzhuangshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmd0rud/upload/1615269230399.jpg'),(2,'picture2','http://localhost:8080/ssmd0rud/upload/1615269245764.jpg'),(3,'picture3','http://localhost:8080/ssmd0rud/upload/1615269383999.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusstongzhuangshangcheng` */

DROP TABLE IF EXISTS `discusstongzhuangshangcheng`;

CREATE TABLE `discusstongzhuangshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269542208 DEFAULT CHARSET=utf8 COMMENT='童装商城评论表';

/*Data for the table `discusstongzhuangshangcheng` */

insert  into `discusstongzhuangshangcheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-03-09 13:27:29',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-03-09 13:27:29',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-03-09 13:27:29',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-03-09 13:27:29',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-03-09 13:27:29',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-03-09 13:27:29',6,6,'用户名6','评论内容6','回复内容6'),(1615269542207,'2021-03-09 13:59:02',1615269363282,1615269479737,'001','测试','');

/*Table structure for table `fenleiliebiao` */

DROP TABLE IF EXISTS `fenleiliebiao`;

CREATE TABLE `fenleiliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269304205 DEFAULT CHARSET=utf8 COMMENT='分类列表';

/*Data for the table `fenleiliebiao` */

insert  into `fenleiliebiao`(`id`,`addtime`,`fenlei`) values (1615268866271,'2021-03-09 13:47:45','上衣'),(1615268872425,'2021-03-09 13:47:52','裤装'),(1615268888468,'2021-03-09 13:48:08','裙装'),(1615268899228,'2021-03-09 13:48:18','套装'),(1615269145754,'2021-03-09 13:52:25','内裤'),(1615269304204,'2021-03-09 13:55:03','袜子');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269414305 DEFAULT CHARSET=utf8 COMMENT='童装资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-09 13:27:29','标题1','简介1','http://localhost:8080/ssmd0rud/upload/news_picture1.jpg','内容1'),(82,'2021-03-09 13:27:29','标题2','简介2','http://localhost:8080/ssmd0rud/upload/news_picture2.jpg','内容2'),(83,'2021-03-09 13:27:29','标题3','简介3','http://localhost:8080/ssmd0rud/upload/news_picture3.jpg','内容3'),(84,'2021-03-09 13:27:29','标题4','简介4','http://localhost:8080/ssmd0rud/upload/news_picture4.jpg','内容4'),(85,'2021-03-09 13:27:29','标题5','简介5','http://localhost:8080/ssmd0rud/upload/news_picture5.jpg','内容5'),(86,'2021-03-09 13:27:29','标题6','简介6','http://localhost:8080/ssmd0rud/upload/news_picture6.jpg','内容6'),(1615269269569,'2021-03-09 13:54:29','资讯测试','测试测试商城','http://localhost:8080/ssmd0rud/upload/1615269261824.jpg','<p>测试商城商城<img src=\"http://localhost:8080/ssmd0rud/upload/1615269267538.jpg\"></p>'),(1615269414304,'2021-03-09 13:56:53','测试','测试测试测试','http://localhost:8080/ssmd0rud/upload/1615269405912.jpg','<p><img src=\"http://localhost:8080/ssmd0rud/upload/1615269411933.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tongzhuangshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269599892 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615269087230,'2021-03-09 13:51:26','20213913512670622794','tongzhuangshangcheng',11,1615269035779,'安踏男童卫衣2021','http://localhost:8080/ssmd0rud/upload/1615269020912.jpg',1,500,500,500,500,1,'已完成','梅江区城北镇凹背'),(1615269568130,'2021-03-09 13:59:27','20213913592747794445','tongzhuangshangcheng',1615269479737,1615269363282,'安踏男童卫衣2021xxx','http://localhost:8080/ssmd0rud/upload/1615269336302.jpg',1,300,300,300,300,1,'已支付','梅县区石扇镇牛牯岌'),(1615269599891,'2021-03-09 13:59:59','20213913595932011568','tongzhuangshangcheng',1615269479737,1615269363282,'安踏男童卫衣2021xxx','http://localhost:8080/ssmd0rud/upload/1615269336302.jpg',1,300,300,300,300,2,'已支付','梅江碧桂园二期西北');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269534586 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615268016471,'2021-03-09 13:33:35',11,33,'tongzhuangshangcheng','名称3','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian3.jpg'),(1615269060247,'2021-03-09 13:50:59',11,1615269035779,'tongzhuangshangcheng','安踏男童卫衣2021','http://localhost:8080/ssmd0rud/upload/1615269020912.jpg'),(1615269534585,'2021-03-09 13:58:54',1615269479737,1615269363282,'tongzhuangshangcheng','安踏男童卫衣2021xxx','http://localhost:8080/ssmd0rud/upload/1615269336302.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','0jyx7mvcelbg8eyv89ovmqacqrz8aesl','2021-03-09 13:31:58','2021-03-09 14:54:49'),(2,11,'1','yonghu','用户','032afr5u7y9tpqfqw0g323m08xnvpk9m','2021-03-09 13:32:50','2021-03-09 15:00:17'),(3,1615269479737,'001','yonghu','用户','yfwjclx66by1jjiyzumu242d33iybgyh','2021-03-09 13:58:06','2021-03-09 14:58:06');

/*Table structure for table `tongzhuangshangcheng` */

DROP TABLE IF EXISTS `tongzhuangshangcheng`;

CREATE TABLE `tongzhuangshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chima` varchar(200) DEFAULT NULL COMMENT '尺码',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269363283 DEFAULT CHARSET=utf8 COMMENT='童装商城';

/*Data for the table `tongzhuangshangcheng` */

insert  into `tongzhuangshangcheng`(`id`,`addtime`,`mingcheng`,`fenlei`,`leibie`,`pinpai`,`chima`,`yanse`,`tupian`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`jifen`,`price`) values (31,'2021-03-09 13:27:29','名称1','分类1','男装','品牌1','尺码1','颜色1','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian1.jpg','详情1',1,1,'2021-03-09 13:27:29',1,10000,99.9),(32,'2021-03-09 13:27:29','名称2','分类2','男装','品牌2','尺码2','颜色2','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian2.jpg','详情2',2,2,'2021-03-09 13:27:29',2,10000,99.9),(33,'2021-03-09 13:27:29','名称3','分类3','男装','品牌3','尺码3','颜色3','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian3.jpg','详情3',3,3,'2021-03-09 13:33:29',4,10000,99.9),(34,'2021-03-09 13:27:29','名称4','分类4','男装','品牌4','尺码4','颜色4','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian4.jpg','详情4',4,4,'2021-03-09 13:27:29',4,10000,99.9),(35,'2021-03-09 13:27:29','名称5','分类5','男装','品牌5','尺码5','颜色5','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian5.jpg','详情5',5,5,'2021-03-09 13:27:29',5,10000,99.9),(36,'2021-03-09 13:27:29','名称6','分类6','男装','品牌6','尺码6','颜色6','http://localhost:8080/ssmd0rud/upload/tongzhuangshangcheng_tupian6.jpg','详情6',6,6,'2021-03-09 13:27:29',6,10000,99.9),(1615269035779,'2021-03-09 13:50:35','安踏男童卫衣2021','上衣','男装','安踏','65cm/20kg','黄色','http://localhost:8080/ssmd0rud/upload/1615269020912.jpg','<ul><li>品牌:&nbsp;ANTA/安踏</li><li>适用年龄:&nbsp;6岁&nbsp;7岁&nbsp;8岁&nbsp;9岁&nbsp;10岁&nbsp;11岁&nbsp;12岁&nbsp;13岁&nbsp;14岁</li><li>面料:&nbsp;其他</li><li>图案:&nbsp;纯色</li><li>风格:&nbsp;运动</li><li>适用性别:&nbsp;男</li><li>模特实拍:&nbsp;实拍有模特</li><li>衣门襟:&nbsp;套头</li><li>是否带帽子:&nbsp;无</li><li>颜色分类:&nbsp;【21年春款logo款】深幽蓝-8710&nbsp;【21年春款logo款】梦幻黑-8710&nbsp;【21年春款logo款】帝国红8710&nbsp;【21年春款】桑巴橙&nbsp;【21春季新款】深幽蓝&nbsp;【21春季新款】梦幻黑&nbsp;【21春季新款】桑巴橙&nbsp;【加绒款】8748帝国红&nbsp;【加绒字母款】-4707运动红&nbsp;【春季涂鸦款】帝国红8760&nbsp;【春秋涂鸦款】宫蓝色8760&nbsp;【秋季新款-方块款】梦幻黑&nbsp;352018710梦幻黑&nbsp;【春季字母款90%棉】】帝国红8782&nbsp;加绒2&nbsp;加绒4&nbsp;加绒7&nbsp;加绒9</li><li>货号:&nbsp;35744712</li><li>参考身高:&nbsp;130cm&nbsp;140cm&nbsp;150cm&nbsp;160cm&nbsp;165cm&nbsp;170cm</li><li>适用季节:&nbsp;春秋</li><li>上市年份季节:&nbsp;2021年春季</li><li>厚薄:&nbsp;常规</li><li>安全等级:&nbsp;其他</li><li>材质成分:&nbsp;聚酯纤维66% 棉34%</li></ul><p><img style=\"width:100%;\" src=\"http://localhost:8080/ssmd0rud/upload/1615269033464.jpg\"></p>',1,0,'2021-03-09 14:00:27',3,50,500),(1615269210807,'2021-03-09 13:53:30','361男童卫衣2021','套装','女装','361','65cm/25kg','绿色','http://localhost:8080/ssmd0rud/upload/1615269196689.jpg','<p>品牌: ANTA/安踏适用年龄: 6岁 7岁 8岁 9岁 10岁 11岁 12岁 13岁 14岁面料: 其他图案: 纯色风格: 运动适用性别: 男模特实拍: 实拍有模特衣门襟: 套头是否带帽子: 无颜色分类: 【21年春款logo款】深幽蓝-8710 【21年春款logo款】梦幻黑-8710 【21年春款logo款】帝国红8710 【21年春款】桑巴橙 【21春季新款】深幽蓝 【21春季新款】梦幻黑 【21春季新款】桑巴橙 【加绒款】8748帝国红 【加绒字母款】-4707运动红 【春季涂鸦款】帝国红8760 【春秋涂鸦款】宫蓝色8760 【秋季新款-方块款】梦幻黑 352018710梦幻黑 【春季字母款90%棉】】帝国红8782 加绒2 加绒4 加绒7 加绒9货号: 35744712参考身高: 130cm 140cm 150cm 160cm 165cm 170cm适用季节: 春秋上市年份季节: 2021年春季厚薄: 常规安全等级: 其他材质成分: 聚酯纤维66% 棉34%<img src=\"http://localhost:8080/ssmd0rud/upload/1615269208652.jpg\"></p>',0,0,NULL,0,300,300),(1615269363282,'2021-03-09 13:56:02','安踏男童卫衣2021xxx','裤装','男装','安踏','60cm/32kg','红色','http://localhost:8080/ssmd0rud/upload/1615269336302.jpg','<p>品牌: ANTA/安踏适用年龄: 6岁 7岁 8岁 9岁 10岁 11岁 12岁 13岁 14岁面料: 其他图案: 纯色风格: 运动适用性别: 男模特实拍: 实拍有模特衣门襟: 套头是否带帽子: 无颜色分类: 【21年春款logo款】深幽蓝-8710 【21年春款logo款】梦幻黑-8710 【21年春款logo款】帝国红8710 【21年春款】桑巴橙 【21春季新款】深幽蓝 【21春季新款】梦幻黑 【21春季新款】桑巴橙 【加绒款】8748帝国红 【加绒字母款】-4707运动红 【春季涂鸦款】帝国红8760 【春秋涂鸦款】宫蓝色8760 【秋季新款-方块款】梦幻黑 352018710梦幻黑 【春季字母款90%棉】】帝国红8782 加绒2 加绒4 加绒7 加绒9货号: 35744712参考身高: 130cm 140cm 150cm 160cm 165cm 170cm适用季节: 春秋上市年份季节: 2021年春季厚薄: 常规安全等级: 其他材质成分: 聚酯纤维66% 棉34%xxxxxxxxxxxxxxxxxxxx<img style=\"width:100%;\" src=\"http://localhost:8080/ssmd0rud/upload/1615269354768.jpg\"></p>',1,0,'2021-03-09 14:00:01',5,300,300);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 13:27:29');

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
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615269479738 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`jifen`,`money`) values (11,'2021-03-09 13:27:29','1','1','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmd0rud/upload/yonghu_zhaopian1.jpg',10500,599),(12,'2021-03-09 13:27:29','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmd0rud/upload/yonghu_zhaopian2.jpg',10000,100),(13,'2021-03-09 13:27:29','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmd0rud/upload/yonghu_zhaopian3.jpg',10000,100),(14,'2021-03-09 13:27:29','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmd0rud/upload/yonghu_zhaopian4.jpg',10000,100),(15,'2021-03-09 13:27:29','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmd0rud/upload/yonghu_zhaopian5.jpg',10000,100),(16,'2021-03-09 13:27:29','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmd0rud/upload/yonghu_zhaopian6.jpg',10000,100),(1615269479737,'2021-03-09 13:57:59','001','001','张三','女',26,'13800000000','123@qq.com','http://localhost:8080/ssmd0rud/upload/1615269498087.jpg',0,99699);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
