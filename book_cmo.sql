/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 6.0.10-alpha-community : Database - book_cmo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book_cmo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book_cmo`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `booknumber` varchar(72) DEFAULT NULL COMMENT '图书编号',
  `bookname` varchar(72) DEFAULT NULL COMMENT '图书名称',
  `author` varchar(72) DEFAULT NULL COMMENT '作者',
  `press` varchar(72) DEFAULT NULL COMMENT '出版社',
  `presstime` date DEFAULT NULL COMMENT '出版时间',
  `bookamount` int(11) DEFAULT NULL COMMENT '图书总数',
  `price` decimal(18,2) DEFAULT NULL COMMENT '单价',
  `intro` varchar(72) DEFAULT NULL COMMENT '简介',
  `booktype` int(11) DEFAULT NULL COMMENT '图书类型',
  `pagenumber` int(11) DEFAULT NULL COMMENT '页数',
  `entrydate` date DEFAULT NULL COMMENT '入库时间',
  `library` int(11) DEFAULT NULL COMMENT '图书馆',
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bookID`,`booknumber`,`bookname`,`author`,`press`,`presstime`,`bookamount`,`price`,`intro`,`booktype`,`pagenumber`,`entrydate`,`library`) values (1,'TG123-1773240','唐诗三百首','冯立功','机械工业','2006-07-18',1,'28.00','唐诗收集珍藏版',2,180,'2016-10-07',1),(2,'TG9007-51293','口语大全','王朝一','中国水利水电','2006-11-01',2,'38.00','世界五百强员工天天在说的',3,2000,'2016-10-07',2),(3,'TG1710371-912321','微商是怎样炼成的！','微笑','微微一笑','2008-08-20',3,'78.00','微商之路',7,300,'2016-10-07',2),(4,'TG90236-9120347','疯狂JAVA','李刚','上海电子','2014-10-31',4,'89.00','初学版',5,1200,'2016-10-07',1),(5,'TG90236-134-02378','疯狂安卓','李刚','上海电子','2001-12-20',5,'56.00','初学版',5,2000,'2016-10-12',2);

/*Table structure for table `booktype` */

DROP TABLE IF EXISTS `booktype`;

CREATE TABLE `booktype` (
  `booktypeID` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书类别ID',
  `booktypename` varchar(72) DEFAULT NULL COMMENT '图书类别名称',
  PRIMARY KEY (`booktypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `booktype` */

insert  into `booktype`(`booktypeID`,`booktypename`) values (2,'古诗书'),(3,'外语'),(5,'程序设计'),(7,'金融经济学'),(8,'政治'),(9,'心灵鸡汤');

/*Table structure for table `borrowrecord` */

DROP TABLE IF EXISTS `borrowrecord`;

CREATE TABLE `borrowrecord` (
  `borrowID` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书借阅ID',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `bookID` int(11) DEFAULT NULL COMMENT '图书ID',
  `borrowdate` date DEFAULT NULL COMMENT '借书时间',
  `returndate` date DEFAULT NULL COMMENT '实际归还时间',
  `ifreturn` int(11) DEFAULT NULL COMMENT '是否归还',
  `renewtime` int(11) DEFAULT NULL COMMENT '续借次数',
  `ifovertime` int(11) DEFAULT NULL COMMENT '是否超期',
  `borrowstate` int(11) DEFAULT NULL COMMENT '借阅状态',
  PRIMARY KEY (`borrowID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `borrowrecord` */

insert  into `borrowrecord`(`borrowID`,`userID`,`bookID`,`borrowdate`,`returndate`,`ifreturn`,`renewtime`,`ifovertime`,`borrowstate`) values (1,1,1,'2016-10-14','2016-10-14',1,0,NULL,1),(2,1,2,'2016-10-14','2016-10-14',1,0,NULL,1),(3,2,2,'2016-10-14','2016-10-14',1,0,NULL,1),(4,2,3,'2016-10-14','2016-10-14',1,2,NULL,1);

/*Table structure for table `fine` */

DROP TABLE IF EXISTS `fine`;

CREATE TABLE `fine` (
  `fineID` int(11) NOT NULL AUTO_INCREMENT COMMENT '罚款ID',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `bookID` int(11) DEFAULT NULL COMMENT '图书ID',
  `borrowID` int(11) DEFAULT NULL COMMENT '借书记录ID',
  `finemoney` decimal(18,2) DEFAULT NULL COMMENT '罚款金额',
  `finetype` int(11) DEFAULT NULL COMMENT '罚款类型',
  PRIMARY KEY (`fineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fine` */

/*Table structure for table `library` */

DROP TABLE IF EXISTS `library`;

CREATE TABLE `library` (
  `libraryID` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书馆ID',
  `libraryname` varchar(72) DEFAULT NULL COMMENT '图书馆名称',
  PRIMARY KEY (`libraryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `library` */

insert  into `library`(`libraryID`,`libraryname`) values (1,'A馆'),(2,'B馆'),(4,'C馆');

/*Table structure for table `loserecord` */

DROP TABLE IF EXISTS `loserecord`;

CREATE TABLE `loserecord` (
  `loserecord` int(11) NOT NULL AUTO_INCREMENT COMMENT '遗失记录ID',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `bookID` int(11) DEFAULT NULL COMMENT '图书ID',
  `losedate` date DEFAULT NULL COMMENT '遗失时间',
  `borrowID` int(11) DEFAULT NULL COMMENT '借阅记录ID',
  `losetype` int(11) DEFAULT NULL COMMENT '遗失类型',
  PRIMARY KEY (`loserecord`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `loserecord` */

/*Table structure for table `overtimerecord` */

DROP TABLE IF EXISTS `overtimerecord`;

CREATE TABLE `overtimerecord` (
  `overdateID` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书超期ID',
  `bookID` int(11) DEFAULT NULL COMMENT '图书ID',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `overday` int(11) DEFAULT NULL COMMENT '超期天数',
  `bookrecord` int(11) DEFAULT NULL COMMENT '借书记录',
  PRIMARY KEY (`overdateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `overtimerecord` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `rolename` varchar(72) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(72) DEFAULT NULL COMMENT '备注',
  `ifmanager` int(11) DEFAULT NULL COMMENT '是否管理员',
  `borrowday` int(11) DEFAULT NULL COMMENT '借阅时长',
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`roleID`,`rolename`,`remark`,`ifmanager`,`borrowday`) values (1,'管理员','超级用户',1,60),(2,'普通用户','客户测试',0,30);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(72) DEFAULT NULL COMMENT '用户名称',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `password` varchar(72) DEFAULT NULL COMMENT '密码',
  `borrownumber` varchar(72) DEFAULT NULL COMMENT '借书证号',
  `mailbox` varchar(72) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(72) DEFAULT NULL COMMENT '手机号',
  `ifborrow` tinyint(1) DEFAULT NULL COMMENT '是否可借阅',
  `number` int(11) DEFAULT NULL COMMENT '借阅数量',
  `role` int(11) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userID`,`username`,`sex`,`password`,`borrownumber`,`mailbox`,`telephone`,`ifborrow`,`number`,`role`) values (1,'admin',1,'123','ER89791040','13266402804@163.com','13452960252',1,3,1),(2,'zhangsan',1,'123','AD1233832','123@139.com','1325679853',1,2,2),(3,'李四',0,'123','TG123','123@163.com','13289279719',0,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
