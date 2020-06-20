/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.7.26 : Database - db_antiquesstore
*********************************************************************
Server version : 5.7.26
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `db_antiquesstore`;

USE `db_antiquesstore`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`admin_id`,`username`,`password`) values (1,'admin','admin');

/*Table structure for table `tbl_booking` */

DROP TABLE IF EXISTS `tbl_booking`;

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_booking` */

insert  into `tbl_booking`(`booking_id`,`cus_id`,`product_id`,`time`,`date`) values (1,1,4,'01:14:29','2020-02-27'),(2,1,1,'02:21:56','2020-02-27'),(3,1,1,'02:23:15','2020-02-27'),(4,1,1,'02:24:25','2020-02-27'),(5,1,1,'02:54:24','2020-02-27'),(6,1,4,'02:55:36','2020-02-27'),(7,1,4,'02:56:13','2020-02-27'),(8,1,4,'03:03:32','2020-02-27'),(9,1,4,'03:09:40','2020-02-27'),(10,1,4,'03:15:11','2020-02-27'),(11,1,4,'03:16:30','2020-02-27'),(12,1,1,'11:23:44','2020-02-28'),(13,1,1,'12:17:24','2020-03-02'),(14,1,1,'12:25:09','2020-03-02'),(15,1,1,'12:31:26','2020-03-02'),(16,1,1,'12:57:50','2020-03-02'),(17,2,4,'01:05:30','2020-03-02'),(18,2,1,'01:07:49','2020-03-02'),(19,3,1,'03:17:53','2020-03-02'),(20,3,1,'03:27:38','2020-03-02'),(21,1,1,'03:39:34','2020-03-02'),(22,1,1,'03:40:48','2020-03-02'),(23,1,1,'03:41:39','2020-03-02'),(24,1,1,'01:37:27','2020-03-06'),(25,4,1,'07:23:24','2020-03-09'),(26,4,1,'08:44:47','2020-03-09'),(27,6,10,'02:32:30','2020-03-18');

/*Table structure for table `tbl_cart` */

DROP TABLE IF EXISTS `tbl_cart`;

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_cart` */

insert  into `tbl_cart`(`cart_id`,`cus_id`,`product_id`) values (12,1,1);

/*Table structure for table `tbl_categories` */

DROP TABLE IF EXISTS `tbl_categories`;

CREATE TABLE `tbl_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_categories` */

insert  into `tbl_categories`(`cat_id`,`cat_name`) values (1,'FIBER'),(2,'MUDD'),(3,'CLAY'),(4,'GLASS'),(5,'IRON');

/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(45) NOT NULL,
  `district_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `cus_palce` varchar(45) NOT NULL,
  `cus_pin` bigint(20) NOT NULL,
  `cus_phone` bigint(20) NOT NULL,
  `cus_gender` varchar(45) NOT NULL,
  `cus_email` varchar(45) NOT NULL,
  `cus_password` varchar(45) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`cus_id`,`cus_name`,`district_id`,`location_id`,`cus_palce`,`cus_pin`,`cus_phone`,`cus_gender`,`cus_email`,`cus_password`) values (1,'Adam',1,2,'Vengalloor',123456,9912345678,'Male','adam123@gmail.com','adam123'),(2,'John',2,3,'Neeloor',123456,9912345678,'Male','john123@gmail.com','john123'),(3,'Litty',4,9,'MUVATTUPUZHA',123456,9112345678,'Female','litty123@gmail.com','litty123'),(4,'Aleena Issac',4,5,'VAYITTILA',123456,9912345678,'Female','aleenaissac123@gmail.com','aleena123'),(5,'Asif Ali',1,4,'KATTAPAN TWON',123456,9912345678,'Male','asifali123@gmail.com','asif123'),(6,'Alan Rajan',1,2,'VENGALLOOR',123456,9912345678,'Male','alan123@gmail.com','alan123');

/*Table structure for table `tbl_district` */

DROP TABLE IF EXISTS `tbl_district`;

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `districtname` varchar(45) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_district` */

insert  into `tbl_district`(`district_id`,`districtname`) values (1,'IDUKKI'),(2,'KOTTAYAM'),(3,'KOLLAM'),(4,'ERNAKULAM'),(5,'ALAPPUZHA'),(6,'THIRUVANANTHAPURAM'),(7,'PATHANAMTHITTA'),(8,'THRISSUR'),(9,'PALAKKAD'),(10,'MALAPPURAM'),(11,'KOZHIKODE'),(12,'WAYANAD'),(13,'KANNUR'),(14,'KASARAGOD1');

/*Table structure for table `tbl_location` */

DROP TABLE IF EXISTS `tbl_location`;

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `locationname` varchar(45) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_location` */

insert  into `tbl_location`(`location_id`,`district_id`,`locationname`) values (1,1,'MUTTOM'),(2,1,'THODUPUZHA'),(3,2,'PALA'),(4,1,'KATTAPANA'),(5,4,'KOCHI'),(6,1,'MOOLAMATTAM'),(7,4,'NORTH'),(8,2,'NADUKANI'),(9,4,'MUVATTUPUZHA');

/*Table structure for table `tbl_payment` */

DROP TABLE IF EXISTS `tbl_payment`;

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_payment` */

insert  into `tbl_payment`(`payment_id`,`cus_id`,`booking_id`,`amount`,`date`,`time`) values (1,1,2,500,'2020-02-27','02:46:30'),(2,1,2,500,'2020-02-27','02:54:46'),(3,1,1,45,'2020-02-27','03:15:21'),(4,1,1,45,'2020-02-27','03:16:44'),(5,1,2,500,'2020-03-02','12:25:33'),(6,1,2,500,'2020-03-02','12:31:42'),(7,1,2,500,'2020-03-02','12:58:04'),(8,2,17,45,'2020-03-02','01:05:44'),(9,2,18,500,'2020-03-02','01:07:59'),(10,3,19,500,'2020-03-02','03:18:32'),(11,4,25,500,'2020-03-09','07:23:53'),(12,4,25,500,'2020-03-09','08:45:59'),(13,6,27,250,'2020-03-18','02:32:50');

/*Table structure for table `tbl_product` */

DROP TABLE IF EXISTS `tbl_product`;

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(45) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `pr_price` bigint(20) NOT NULL,
  `pr_qnty` bigint(20) NOT NULL,
  `pr_image` varchar(250) NOT NULL,
  `pr_meaterial` varchar(45) NOT NULL,
  `cus_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_product` */

insert  into `tbl_product`(`product_id`,`pr_name`,`cat_id`,`subcat_id`,`pr_price`,`pr_qnty`,`pr_image`,`pr_meaterial`,`cus_id`) values (1,'Dream Catcher',1,5,500,5,'il_794xN.2207274491_itvh.jpg','Cotton',1),(7,'Wall Art',5,8,450,5,'il_794xN.867498314_30co.jpg','Silver, Glass',2),(8,'Necklace',5,17,2500,10,'il_794xN.1685839363_igif.jpg','Gold',3),(9,'Necklace',5,8,1500,2,'il_794xN.2260391483_4y5s.jpg','Silver, Stone',4),(10,'Mens Hat',1,5,250,1,'39122322_xxl.jpg','Cotton',1);

/*Table structure for table `tbl_subcat` */

DROP TABLE IF EXISTS `tbl_subcat`;

CREATE TABLE `tbl_subcat` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `subcat_name` varchar(45) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_subcat` */

insert  into `tbl_subcat`(`subcat_id`,`cat_id`,`subcat_name`) values (6,1,'PLASTIC'),(7,2,'BLACK'),(8,5,'SILVER'),(5,1,'COTTON'),(9,5,'COPPER'),(10,5,'BRONZE'),(11,5,'METTALIC'),(12,2,'WHITE'),(13,2,'SYNTHETIC'),(14,3,'WHITISH'),(15,3,'BROWNISH'),(16,3,'SYNTHETICS'),(17,5,'GOLD');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
