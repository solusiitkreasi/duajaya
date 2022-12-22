/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.5.17-MariaDB-cll-lve : Database - u1579603_db_duajaya
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`u1579603_db_duajaya` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `u1579603_db_duajaya`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `accounts` */

insert  into `accounts`(`id`,`account_no`,`name`,`initial_balance`,`total_balance`,`note`,`is_default`,`is_active`,`created_at`,`updated_at`) values 
(1,'11111','Sales Account',1000,1000,'this is first account',1,1,'2018-12-18 08:58:02','2022-10-12 12:40:08');

/*Table structure for table `adjustments` */

DROP TABLE IF EXISTS `adjustments`;

CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `adjustments` */

/*Table structure for table `attendances` */

DROP TABLE IF EXISTS `attendances`;

CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `attendances` */

/*Table structure for table `billers` */

DROP TABLE IF EXISTS `billers`;

CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `billers` */

insert  into `billers`(`id`,`name`,`image`,`company_name`,`vat_number`,`email`,`phone_number`,`address`,`city`,`state`,`postal_code`,`country`,`is_active`,`created_at`,`updated_at`) values 
(9,'Kasir Duajaya',NULL,'Duajaya',NULL,'kasir@mail.com','0123123','Duajaya','Duajaya',NULL,NULL,NULL,1,'2022-12-16 02:24:57','2022-12-16 02:24:57');

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brands` */

insert  into `brands`(`id`,`code`,`title`,`image`,`is_active`,`created_at`,`updated_at`) values 
(1,'M0001','NM',NULL,1,'2022-12-21 22:08:39','2022-12-21 22:08:39'),
(2,'M0002','Kompas',NULL,1,'2022-12-21 22:08:46','2022-12-21 22:08:46'),
(3,'M0003','Ultra Milk',NULL,1,'2022-12-22 06:16:02','2022-12-22 06:16:02'),
(4,'M0004','Rose Brand',NULL,1,'2022-12-22 07:09:52','2022-12-22 07:09:52'),
(5,'M0005','Gudang Garam',NULL,1,'2022-12-22 08:51:25','2022-12-22 08:51:25'),
(6,'M0006','Bimoli',NULL,1,'2022-12-22 08:52:22','2022-12-22 08:52:22');

/*Table structure for table `cash_registers` */

DROP TABLE IF EXISTS `cash_registers`;

CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cash_registers` */

insert  into `cash_registers`(`id`,`cash_in_hand`,`user_id`,`warehouse_id`,`status`,`created_at`,`updated_at`) values 
(1,100,9,1,0,'2020-10-13 13:32:54','2020-10-24 06:27:42'),
(2,50,9,1,1,'2020-10-13 21:25:26','2020-10-13 21:25:26'),
(3,200,1,1,0,'2020-10-22 13:53:07','2021-06-19 10:52:48'),
(4,100,1,2,1,'2020-10-24 07:04:39','2020-10-24 07:04:39'),
(5,1000,1,1,0,'2021-06-19 10:53:22','2022-12-17 02:17:01'),
(6,50000,1,7,1,'2022-10-09 23:34:22','2022-10-09 23:34:22'),
(7,120000,1,9,1,'2022-11-14 23:52:31','2022-11-14 23:52:31'),
(8,12000000,1,11,1,'2022-11-15 03:14:11','2022-11-15 03:14:11'),
(9,12000000,1,10,1,'2022-11-15 03:14:34','2022-11-15 03:14:34'),
(10,150000,1,9,1,'2022-11-22 13:35:41','2022-11-22 13:35:41'),
(11,15000,1,10,1,'2022-11-22 13:35:51','2022-11-22 13:35:51'),
(12,150,1,9,1,'2022-11-24 14:52:59','2022-11-24 14:52:59'),
(13,0,1,1,1,'2022-12-16 02:23:54','2022-12-16 02:23:54'),
(14,0,30,1,1,'2022-12-16 02:27:58','2022-12-16 02:27:58'),
(15,0,1,1,1,'2022-12-16 05:41:37','2022-12-16 05:41:37'),
(16,0,1,1,1,'2022-12-16 05:41:50','2022-12-16 05:41:50'),
(17,0,1,1,1,'2022-12-19 04:06:14','2022-12-19 04:06:14');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`code`,`name`,`image`,`parent_id`,`is_active`,`created_at`,`updated_at`) values 
(1,'K0001','Bumbu-bumbu',NULL,NULL,1,'2022-12-21 22:11:01','2022-12-21 22:11:01'),
(2,'K0002','Product roti/kering',NULL,NULL,1,'2022-12-21 22:11:01','2022-12-21 22:11:01'),
(3,'K0003','FRUITS & VEGETABLES',NULL,NULL,1,'2022-12-21 22:15:14','2022-12-21 22:15:14'),
(4,'K0004','DRY',NULL,NULL,1,'2022-12-22 06:11:32','2022-12-22 06:11:32'),
(5,'K0005','TEST',NULL,NULL,1,'2022-12-22 06:13:50','2022-12-22 06:13:50'),
(7,'K0006','FROZEN FOOD',NULL,NULL,1,'2022-12-22 07:14:56','2022-12-22 07:14:56'),
(13,'K0007','bumbu kaldu',NULL,1,1,'2022-12-22 08:48:31','2022-12-22 08:48:31');

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `coupons` */

insert  into `coupons`(`id`,`code`,`type`,`amount`,`minimum_amount`,`quantity`,`used`,`expired_date`,`user_id`,`is_active`,`created_at`,`updated_at`) values 
(3,'DISKON50','percentage',50,0,100,0,'2022-11-30',1,1,'2022-10-11 11:30:58','2022-11-22 13:10:01'),
(4,'promo70','percentage',70,NULL,10,0,'2022-10-15',1,1,'2022-10-11 11:32:38','2022-10-11 11:32:38');

/*Table structure for table `currencies` */

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `currencies` */

insert  into `currencies`(`id`,`name`,`code`,`exchange_rate`,`created_at`,`updated_at`) values 
(1,'Rupiah','Rp',1,'2022-03-24 02:33:42','2022-11-25 07:52:29'),
(2,'Euro','Euro',0.85,'2020-11-01 07:29:12','2020-11-11 05:15:34'),
(4,'Dollar','Dollar',1.1,'2022-11-25 08:59:40','2022-11-25 08:59:40');

/*Table structure for table `customer_groups` */

DROP TABLE IF EXISTS `customer_groups`;

CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customer_groups` */

insert  into `customer_groups`(`id`,`name`,`percentage`,`is_active`,`created_at`,`updated_at`) values 
(1,'general','0',1,'2018-05-12 14:09:36','2019-03-02 12:01:35'),
(2,'distributor','-10',1,'2018-05-12 14:12:14','2019-03-02 12:02:12'),
(3,'reseller','5',1,'2018-05-12 14:12:26','2018-05-30 07:18:14'),
(5,'Harga Partai','-2.5',1,'2018-08-03 15:10:27','2018-08-03 15:10:34');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customers` */

insert  into `customers`(`id`,`customer_group_id`,`user_id`,`name`,`company_name`,`email`,`phone_number`,`tax_no`,`address`,`city`,`state`,`postal_code`,`country`,`points`,`deposit`,`expense`,`is_active`,`created_at`,`updated_at`) values 
(1,1,22,'dhiman','kayoxlv','aryatama045@gmail.com','+8801111111101',NULL,'jakarta','jakarta',NULL,NULL,'indonesia',265,190,20,1,'2018-05-12 16:00:48','2022-12-10 14:35:14'),
(11,1,1,'walk-in-customer','Corporate','Corporate','01232123','11111','addresss','city',NULL,NULL,NULL,96261,1000000,160000,1,'2018-09-02 07:30:54','2022-12-22 07:30:10'),
(29,1,37,'aryatama045',NULL,'aryatama045@gmail.com','676767',NULL,'aryatama045','aryatama045',NULL,NULL,NULL,13,NULL,NULL,1,'2022-12-10 14:58:55','2022-12-10 15:02:54');

/*Table structure for table `deliveries` */

DROP TABLE IF EXISTS `deliveries`;

CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `deliveries` */

insert  into `deliveries`(`id`,`reference_no`,`sale_id`,`user_id`,`address`,`delivered_by`,`recieved_by`,`file`,`note`,`status`,`created_at`,`updated_at`) values 
(1,'dr-20221222-082757',1,1,'addresss city',NULL,NULL,NULL,NULL,'1','2022-12-22 08:28:53','2022-12-22 08:28:53');

/*Table structure for table `deliveries_detail` */

DROP TABLE IF EXISTS `deliveries_detail`;

CREATE TABLE `deliveries_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_deliveries` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_beli` varchar(20) NOT NULL,
  `qty_kirim` varchar(20) NOT NULL,
  `qty_terima` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference_po` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `deliveries_detail` */

insert  into `deliveries_detail`(`id`,`id_deliveries`,`id_product`,`qty_beli`,`qty_kirim`,`qty_terima`,`created_at`,`updated_at`,`reference_po`) values 
(1,1,8,'5','2','','2022-12-22 08:28:53','2022-12-22 08:28:53','1'),
(2,1,1,'2','1','','2022-12-22 08:28:53','2022-12-22 08:28:53','1'),
(3,1,2,'4','0','','2022-12-22 08:28:53','2022-12-22 08:28:53','1');

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `departments` */

/*Table structure for table `deposits` */

DROP TABLE IF EXISTS `deposits`;

CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `deposits` */

insert  into `deposits`(`id`,`amount`,`customer_id`,`user_id`,`note`,`created_at`,`updated_at`) values 
(6,1000000,11,1,NULL,'2022-12-17 04:20:37','2022-12-19 04:41:51');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employees` */

insert  into `employees`(`id`,`name`,`email`,`phone_number`,`department_id`,`user_id`,`image`,`address`,`city`,`country`,`is_active`,`created_at`,`updated_at`) values 
(1,'john','aryatama045@gmail.com','10001',2,12,'johngmailcom.jpg','GEC','Jakarta','Jakarta',1,'2022-12-30 06:48:37','2019-03-02 12:50:23');

/*Table structure for table `expense_categories` */

DROP TABLE IF EXISTS `expense_categories`;

CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expense_categories` */

insert  into `expense_categories`(`id`,`code`,`name`,`is_active`,`created_at`,`updated_at`) values 
(1,'16718342','washing',1,'2018-08-16 06:32:48','2019-03-02 13:02:07'),
(2,'60128975','electric bill',1,'2018-08-16 06:39:18','2018-08-16 06:39:18'),
(3,'83954970','test',0,'2018-08-16 06:50:28','2018-08-16 06:51:40'),
(4,'1234','snacks',1,'2018-09-01 08:40:04','2018-09-01 08:40:04');

/*Table structure for table `expenses` */

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expenses` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `general_settings` */

DROP TABLE IF EXISTS `general_settings`;

CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `general_settings` */

insert  into `general_settings`(`id`,`site_title`,`site_logo`,`is_rtl`,`currency`,`staff_access`,`date_format`,`developed_by`,`invoice_format`,`state`,`theme`,`created_at`,`updated_at`,`currency_position`) values 
(1,'POS','logo-cipta-jaya.png',0,'1','all','d-m-Y','Anonymous','standard',1,'default.css','2022-12-19 11:01:30','2022-12-19 11:01:36','prefix');

/*Table structure for table `gift_card_recharges` */

DROP TABLE IF EXISTS `gift_card_recharges`;

CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gift_card_recharges` */

/*Table structure for table `gift_cards` */

DROP TABLE IF EXISTS `gift_cards`;

CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gift_cards` */

/*Table structure for table `holidays` */

DROP TABLE IF EXISTS `holidays`;

CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `holidays` */

/*Table structure for table `hrm_settings` */

DROP TABLE IF EXISTS `hrm_settings`;

CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `hrm_settings` */

insert  into `hrm_settings`(`id`,`checkin`,`checkout`,`created_at`,`updated_at`) values 
(1,'10:00am','6:00pm','2022-12-13 08:20:08','2022-12-13 08:20:08');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `languages` */

insert  into `languages`(`id`,`code`,`created_at`,`updated_at`) values 
(1,'id','2018-07-08 04:59:17','2019-12-24 23:34:20');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `money_transfers` */

DROP TABLE IF EXISTS `money_transfers`;

CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `money_transfers` */

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `notifications` */

insert  into `notifications`(`id`,`type`,`notifiable_type`,`notifiable_id`,`data`,`read_at`,`created_at`,`updated_at`) values 
('0644b434-a4b1-48a0-9c93-2eef3d6b598f','App\\Notifications\\SendNotification','App\\User',37,'{\"message\":\"testtttt\"}',NULL,'2022-12-10 16:34:45','2022-12-10 16:34:45'),
('572b9cfa-cfe0-415e-84a2-3d26561848a9','App\\Notifications\\SendNotification','App\\User',37,'{\"message\":\"test\"}',NULL,'2022-12-10 15:30:16','2022-12-10 15:30:16'),
('a2f9e6b7-4f6f-46ef-8dfe-86f18192f210','App\\Notifications\\SendNotification','App\\User',1,'{\"message\":\"test\"}','2022-12-10 16:32:52','2022-12-10 16:22:32','2022-12-10 16:32:52'),
('b8087dd3-82a6-46e1-8690-a55109c6d285','App\\Notifications\\SendNotification','App\\User',30,'{\"message\":\"kasiir test\"}','2022-12-16 02:27:42','2022-12-10 16:38:24','2022-12-16 02:27:42'),
('c1fbe370-e230-41c2-ac3e-7ad35d1561a4','App\\Notifications\\SendNotification','App\\User',37,'{\"message\":\"test\"}',NULL,'2022-12-10 16:20:02','2022-12-10 16:20:02'),
('f84ce4f2-a218-43e0-9b24-54344621a84e','App\\Notifications\\SendNotification','App\\User',1,'{\"message\":\"haiii\"}','2022-12-10 16:34:03','2022-12-10 16:33:44','2022-12-10 16:34:03');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `payment_with_cheque` */

DROP TABLE IF EXISTS `payment_with_cheque`;

CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payment_with_cheque` */

/*Table structure for table `payment_with_credit_card` */

DROP TABLE IF EXISTS `payment_with_credit_card`;

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payment_with_credit_card` */

/*Table structure for table `payment_with_gift_card` */

DROP TABLE IF EXISTS `payment_with_gift_card`;

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payment_with_gift_card` */

/*Table structure for table `payment_with_paypal` */

DROP TABLE IF EXISTS `payment_with_paypal`;

CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payment_with_paypal` */

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payments` */

insert  into `payments`(`id`,`payment_reference`,`user_id`,`purchase_id`,`sale_id`,`cash_register_id`,`account_id`,`amount`,`used_points`,`change`,`paying_method`,`payment_note`,`created_at`,`updated_at`) values 
(5,'ppr-20221219-063729',1,1,NULL,NULL,1,0,NULL,0,'Cash',NULL,'2022-12-19 06:37:29','2022-12-19 06:37:29'),
(6,'ppr-20221221-123434',1,4,NULL,NULL,1,200000,NULL,0,'Cash',NULL,'2022-12-21 00:34:34','2022-12-21 00:34:34'),
(8,'ppr-20221221-055432',1,5,NULL,NULL,1,220000,NULL,0,'Cash',NULL,'2022-12-21 05:54:32','2022-12-21 05:54:32'),
(9,'spr-20221222-023833',1,NULL,391,13,1,50000,NULL,225000,'Deposit',NULL,'2022-12-22 02:38:33','2022-12-22 02:38:33'),
(10,'ppr-20221222-070543',1,1,NULL,NULL,1,150000,NULL,0,'Cash',NULL,'2022-12-22 07:05:43','2022-12-22 07:05:43'),
(11,'ppr-20221222-072214',1,1,NULL,NULL,1,200000,NULL,0,'Cash',NULL,'2022-12-22 07:22:14','2022-12-22 07:22:14'),
(12,'ppr-20221222-072352',1,2,NULL,NULL,1,660000,NULL,0,'Cash',NULL,'2022-12-22 07:23:52','2022-12-22 07:23:52'),
(13,'spr-20221222-072739',1,NULL,1,13,1,10000,NULL,492000,'Deposit',NULL,'2022-12-22 07:27:39','2022-12-22 07:27:39');

/*Table structure for table `payrolls` */

DROP TABLE IF EXISTS `payrolls`;

CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payrolls` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`guard_name`,`created_at`,`updated_at`) values 
(4,'products-edit','web','2018-06-03 07:00:09','2018-06-03 07:00:09'),
(5,'products-delete','web','2018-06-04 04:54:22','2018-06-04 04:54:22'),
(6,'products-add','web','2018-06-04 06:34:14','2018-06-04 06:34:14'),
(7,'products-index','web','2018-06-04 09:34:27','2018-06-04 09:34:27'),
(8,'purchases-index','web','2018-06-04 14:03:19','2018-06-04 14:03:19'),
(9,'purchases-add','web','2018-06-04 14:12:25','2018-06-04 14:12:25'),
(10,'purchases-edit','web','2018-06-04 15:47:36','2018-06-04 15:47:36'),
(11,'purchases-delete','web','2018-06-04 15:47:36','2018-06-04 15:47:36'),
(12,'sales-index','web','2018-06-04 16:49:08','2018-06-04 16:49:08'),
(13,'sales-add','web','2018-06-04 16:49:52','2018-06-04 16:49:52'),
(14,'sales-edit','web','2018-06-04 16:49:52','2018-06-04 16:49:52'),
(15,'sales-delete','web','2018-06-04 16:49:53','2018-06-04 16:49:53'),
(16,'quotes-index','web','2018-06-05 04:05:10','2018-06-05 04:05:10'),
(17,'quotes-add','web','2018-06-05 04:05:10','2018-06-05 04:05:10'),
(18,'quotes-edit','web','2018-06-05 04:05:10','2018-06-05 04:05:10'),
(19,'quotes-delete','web','2018-06-05 04:05:10','2018-06-05 04:05:10'),
(20,'transfers-index','web','2018-06-05 04:30:03','2018-06-05 04:30:03'),
(21,'transfers-add','web','2018-06-05 04:30:03','2018-06-05 04:30:03'),
(22,'transfers-edit','web','2018-06-05 04:30:03','2018-06-05 04:30:03'),
(23,'transfers-delete','web','2018-06-05 04:30:03','2018-06-05 04:30:03'),
(24,'returns-index','web','2018-06-05 04:50:24','2018-06-05 04:50:24'),
(25,'returns-add','web','2018-06-05 04:50:24','2018-06-05 04:50:24'),
(26,'returns-edit','web','2018-06-05 04:50:25','2018-06-05 04:50:25'),
(27,'returns-delete','web','2018-06-05 04:50:25','2018-06-05 04:50:25'),
(28,'customers-index','web','2018-06-05 05:15:54','2018-06-05 05:15:54'),
(29,'customers-add','web','2018-06-05 05:15:55','2018-06-05 05:15:55'),
(30,'customers-edit','web','2018-06-05 05:15:55','2018-06-05 05:15:55'),
(31,'customers-delete','web','2018-06-05 05:15:55','2018-06-05 05:15:55'),
(32,'suppliers-index','web','2018-06-05 05:40:12','2018-06-05 05:40:12'),
(33,'suppliers-add','web','2018-06-05 05:40:12','2018-06-05 05:40:12'),
(34,'suppliers-edit','web','2018-06-05 05:40:12','2018-06-05 05:40:12'),
(35,'suppliers-delete','web','2018-06-05 05:40:12','2018-06-05 05:40:12'),
(36,'product-report','web','2018-06-25 05:05:33','2018-06-25 05:05:33'),
(37,'purchase-report','web','2018-06-25 05:24:56','2018-06-25 05:24:56'),
(38,'sale-report','web','2018-06-25 05:33:13','2018-06-25 05:33:13'),
(39,'customer-report','web','2018-06-25 05:36:51','2018-06-25 05:36:51'),
(40,'due-report','web','2018-06-25 05:39:52','2018-06-25 05:39:52'),
(41,'users-index','web','2018-06-25 06:00:10','2018-06-25 06:00:10'),
(42,'users-add','web','2018-06-25 06:00:10','2018-06-25 06:00:10'),
(43,'users-edit','web','2018-06-25 06:01:30','2018-06-25 06:01:30'),
(44,'users-delete','web','2018-06-25 06:01:30','2018-06-25 06:01:30'),
(45,'profit-loss','web','2018-07-15 03:50:05','2018-07-15 03:50:05'),
(46,'best-seller','web','2018-07-15 04:01:38','2018-07-15 04:01:38'),
(47,'daily-sale','web','2018-07-15 04:24:21','2018-07-15 04:24:21'),
(48,'monthly-sale','web','2018-07-15 04:30:41','2018-07-15 04:30:41'),
(49,'daily-purchase','web','2018-07-15 04:36:46','2018-07-15 04:36:46'),
(50,'monthly-purchase','web','2018-07-15 04:48:17','2018-07-15 04:48:17'),
(51,'payment-report','web','2018-07-15 05:10:41','2018-07-15 05:10:41'),
(52,'warehouse-stock-report','web','2018-07-15 05:16:55','2018-07-15 05:16:55'),
(53,'product-qty-alert','web','2018-07-15 05:33:21','2018-07-15 05:33:21'),
(54,'supplier-report','web','2018-07-30 09:00:01','2018-07-30 09:00:01'),
(55,'expenses-index','web','2018-09-05 07:07:10','2018-09-05 07:07:10'),
(56,'expenses-add','web','2018-09-05 07:07:10','2018-09-05 07:07:10'),
(57,'expenses-edit','web','2018-09-05 07:07:10','2018-09-05 07:07:10'),
(58,'expenses-delete','web','2018-09-05 07:07:11','2018-09-05 07:07:11'),
(59,'general_setting','web','2018-10-20 05:10:04','2018-10-20 05:10:04'),
(60,'mail_setting','web','2018-10-20 05:10:04','2018-10-20 05:10:04'),
(61,'pos_setting','web','2018-10-20 05:10:04','2018-10-20 05:10:04'),
(62,'hrm_setting','web','2019-01-02 16:30:23','2019-01-02 16:30:23'),
(63,'purchase-return-index','web','2019-01-03 03:45:14','2019-01-03 03:45:14'),
(64,'purchase-return-add','web','2019-01-03 03:45:14','2019-01-03 03:45:14'),
(65,'purchase-return-edit','web','2019-01-03 03:45:14','2019-01-03 03:45:14'),
(66,'purchase-return-delete','web','2019-01-03 03:45:14','2019-01-03 03:45:14'),
(67,'account-index','web','2019-01-03 04:06:13','2019-01-03 04:06:13'),
(68,'balance-sheet','web','2019-01-03 04:06:14','2019-01-03 04:06:14'),
(69,'account-statement','web','2019-01-03 04:06:14','2019-01-03 04:06:14'),
(70,'department','web','2019-01-03 04:30:01','2019-01-03 04:30:01'),
(71,'attendance','web','2019-01-03 04:30:01','2019-01-03 04:30:01'),
(72,'payroll','web','2019-01-03 04:30:01','2019-01-03 04:30:01'),
(73,'employees-index','web','2019-01-03 04:52:19','2019-01-03 04:52:19'),
(74,'employees-add','web','2019-01-03 04:52:19','2019-01-03 04:52:19'),
(75,'employees-edit','web','2019-01-03 04:52:19','2019-01-03 04:52:19'),
(76,'employees-delete','web','2019-01-03 04:52:19','2019-01-03 04:52:19'),
(77,'user-report','web','2019-01-16 12:48:18','2019-01-16 12:48:18'),
(78,'stock_count','web','2019-02-17 16:32:01','2019-02-17 16:32:01'),
(79,'adjustment','web','2019-02-17 16:32:02','2019-02-17 16:32:02'),
(80,'sms_setting','web','2019-02-22 11:18:03','2019-02-22 11:18:03'),
(81,'create_sms','web','2019-02-22 11:18:03','2019-02-22 11:18:03'),
(82,'print_barcode','web','2019-03-07 11:02:19','2019-03-07 11:02:19'),
(83,'empty_database','web','2019-03-07 11:02:19','2019-03-07 11:02:19'),
(84,'customer_group','web','2019-03-07 11:37:15','2019-03-07 11:37:15'),
(85,'unit','web','2019-03-07 11:37:15','2019-03-07 11:37:15'),
(86,'tax','web','2019-03-07 11:37:15','2019-03-07 11:37:15'),
(87,'gift_card','web','2019-03-07 12:29:38','2019-03-07 12:29:38'),
(88,'coupon','web','2019-03-07 12:29:38','2019-03-07 12:29:38'),
(89,'holiday','web','2019-10-19 14:57:15','2019-10-19 14:57:15'),
(90,'warehouse-report','web','2019-10-22 12:00:23','2019-10-22 12:00:23'),
(91,'warehouse','web','2020-02-26 12:47:32','2020-02-26 12:47:32'),
(92,'brand','web','2020-02-26 12:59:59','2020-02-26 12:59:59'),
(93,'billers-index','web','2020-02-26 13:11:15','2020-02-26 13:11:15'),
(94,'billers-add','web','2020-02-26 13:11:15','2020-02-26 13:11:15'),
(95,'billers-edit','web','2020-02-26 13:11:15','2020-02-26 13:11:15'),
(96,'billers-delete','web','2020-02-26 13:11:15','2020-02-26 13:11:15'),
(97,'money-transfer','web','2020-03-02 11:41:48','2020-03-02 11:41:48'),
(98,'category','web','2020-07-13 18:13:16','2020-07-13 18:13:16'),
(99,'delivery','web','2020-07-13 18:13:16','2020-07-13 18:13:16'),
(100,'send_notification','web','2020-10-31 12:21:31','2020-10-31 12:21:31'),
(101,'today_sale','web','2020-10-31 12:57:04','2020-10-31 12:57:04'),
(102,'today_profit','web','2020-10-31 12:57:04','2020-10-31 12:57:04'),
(103,'currency','web','2020-11-09 06:23:11','2020-11-09 06:23:11'),
(104,'backup_database','web','2020-11-15 06:16:55','2020-11-15 06:16:55'),
(105,'reward_point_setting','web','2021-06-27 10:34:42','2021-06-27 10:34:42');

/*Table structure for table `pos_setting` */

DROP TABLE IF EXISTS `pos_setting`;

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pos_setting` */

insert  into `pos_setting`(`id`,`customer_id`,`warehouse_id`,`biller_id`,`product_number`,`keybord_active`,`stripe_public_key`,`stripe_secret_key`,`created_at`,`updated_at`) values 
(1,11,1,9,15,0,'1312','123412','2018-09-02 09:17:04','2022-12-16 05:42:03');

/*Table structure for table `product_adjustments` */

DROP TABLE IF EXISTS `product_adjustments`;

CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_adjustments` */

/*Table structure for table `product_batches` */

DROP TABLE IF EXISTS `product_batches`;

CREATE TABLE `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_batches` */

/*Table structure for table `product_purchases` */

DROP TABLE IF EXISTS `product_purchases`;

CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_purchases` */

insert  into `product_purchases`(`id`,`purchase_id`,`product_id`,`product_batch_id`,`variant_id`,`imei_number`,`qty`,`recieved`,`purchase_unit_id`,`net_unit_cost`,`discount`,`tax_rate`,`tax`,`total`,`created_at`,`updated_at`) values 
(1,1,8,NULL,NULL,NULL,10,10,1,20000,0,0,0,200000,'2022-12-22 07:21:53','2022-12-22 07:21:53'),
(4,2,1,NULL,NULL,NULL,6,6,1,50000,0,0,0,300000,'2022-12-22 07:23:39','2022-12-22 07:23:39'),
(5,2,2,NULL,NULL,NULL,6,6,1,60000,0,0,0,360000,'2022-12-22 07:23:39','2022-12-22 07:23:39');

/*Table structure for table `product_quotation` */

DROP TABLE IF EXISTS `product_quotation`;

CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_quotation` */

/*Table structure for table `product_returns` */

DROP TABLE IF EXISTS `product_returns`;

CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_returns` */

/*Table structure for table `product_sales` */

DROP TABLE IF EXISTS `product_sales`;

CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `qty_kirim` double DEFAULT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_sales` */

insert  into `product_sales`(`id`,`sale_id`,`product_id`,`product_batch_id`,`variant_id`,`imei_number`,`qty`,`qty_kirim`,`sale_unit_id`,`net_unit_price`,`discount`,`tax_rate`,`tax`,`total`,`created_at`,`updated_at`) values 
(1,1,8,NULL,NULL,NULL,5,2,1,30000,0,0,0,150000,'2022-12-22 07:27:39','2022-12-22 08:28:53'),
(2,1,1,NULL,NULL,NULL,2,1,1,66000,0,0,0,132000,'2022-12-22 07:27:39','2022-12-22 08:28:53'),
(3,1,2,NULL,NULL,NULL,4,0,1,55000,0,0,0,220000,'2022-12-22 07:27:39','2022-12-22 08:28:53'),
(4,2,2,NULL,NULL,NULL,2,0,1,70000,0,0,0,140000,'2022-12-22 07:29:16','2022-12-22 08:25:49'),
(5,2,8,NULL,NULL,NULL,2,0,1,30000,0,0,0,60000,'2022-12-22 07:29:16','2022-12-22 08:25:49'),
(6,3,8,NULL,NULL,NULL,1,0,1,30000,0,0,0,30000,'2022-12-22 07:30:10','2022-12-22 08:25:49');

/*Table structure for table `product_transfer` */

DROP TABLE IF EXISTS `product_transfer`;

CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_transfer` */

/*Table structure for table `product_variants` */

DROP TABLE IF EXISTS `product_variants`;

CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_variants` */

/*Table structure for table `product_warehouse` */

DROP TABLE IF EXISTS `product_warehouse`;

CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_warehouse` */

insert  into `product_warehouse`(`id`,`product_id`,`product_batch_id`,`variant_id`,`imei_number`,`warehouse_id`,`qty`,`price`,`created_at`,`updated_at`) values 
(1,'8',NULL,NULL,NULL,1,2,NULL,'2022-12-22 07:21:53','2022-12-22 07:30:10'),
(2,'10',NULL,NULL,NULL,2,0,51350,'2022-12-22 07:22:37','2022-12-22 07:22:37'),
(3,'1',NULL,NULL,NULL,1,4,NULL,'2022-12-22 07:23:17','2022-12-22 07:27:39'),
(4,'2',NULL,NULL,NULL,1,0,NULL,'2022-12-22 07:23:18','2022-12-22 07:29:16'),
(5,'11',NULL,NULL,NULL,2,0,74500,'2022-12-22 08:02:34','2022-12-22 08:02:34'),
(6,'12',NULL,NULL,NULL,2,0,25000,'2022-12-22 08:07:04','2022-12-22 08:07:04');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_wholesale` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`code`,`type`,`barcode_symbology`,`brand_id`,`category_id`,`unit_id`,`purchase_unit_id`,`sale_unit_id`,`cost`,`price`,`price_wholesale`,`qty`,`alert_quantity`,`promotion`,`promotion_price`,`starting_date`,`last_date`,`tax_id`,`tax_method`,`image`,`file`,`is_variant`,`is_batch`,`is_diffPrice`,`is_imei`,`featured`,`product_list`,`variant_list`,`qty_list`,`price_list`,`product_details`,`is_active`,`created_at`,`updated_at`) values 
(1,'Cabe rawit','K0011220220003','standard','C128',1,1,1,1,1,'50000','66000','',4,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,NULL,'',1,'2022-12-21 22:15:14','2022-12-22 07:27:39'),
(2,'Cabe merah besar','K0011220220002','standard','C128',1,1,1,1,1,'60000','70000','',0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,'',1,'2022-12-21 22:15:14','2022-12-22 07:29:16'),
(3,'Gula pasir','K0011220220001','standard','C128',1,1,1,1,1,'12500','16055','',0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,NULL,'',1,'2022-12-21 22:15:14','2022-12-21 22:38:20'),
(4,'Tepung kompas, 25 KG','K0021220220001','standard','C128',1,2,2,2,2,'209000','230000','',0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,NULL,'',1,'2022-12-21 22:15:14','2022-12-21 22:38:44'),
(5,'fgfdg','K0004M00031220220001','standard','C128',3,4,3,4,4,'1200','1200',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'2022-12-22 06:59:05','2022-12-22 07:00:22'),
(6,'dasda','K0005M00031220220001','standard','C128',3,5,3,4,4,'0','0','0',0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'2022-12-22 07:02:11','2022-12-22 07:02:27'),
(7,'Fresh Milk Plain 1000 ML','K0004M00031220220002','standard','C128',3,4,3,4,4,'215000','287300',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'2022-12-22 07:05:25','2022-12-22 07:05:25'),
(8,'Beras Ketan Hitam','K0004M00011220220001','standard','C128',1,4,1,1,1,'20000','30000',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'2022-12-22 07:07:53','2022-12-22 07:30:10'),
(9,'Tepung Beras Putih 500 GR','K0004M00041220220001','standard','C128',4,4,3,3,3,'7000','13000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'2022-12-22 07:12:26','2022-12-22 07:12:26'),
(10,'Ayam Beku','K0006M00011220220001','standard','C128',1,7,1,2,1,'892500','51350',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'2022-12-22 07:22:37','2022-12-22 07:22:37'),
(11,'Duckling / Bebek','K0006M00011220220002','standard','C128',1,7,20,20,20,'72000','74500',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'2022-12-22 08:02:34','2022-12-22 08:02:34'),
(12,'Crabmeat Canned 170 GR','K0004M00011220220002','standard','C128',1,4,6,6,6,'19230','25000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'zummXD2dvAtI.png',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'2022-12-22 08:07:04','2022-12-22 08:07:04');

/*Table structure for table `purchase_product_return` */

DROP TABLE IF EXISTS `purchase_product_return`;

CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `purchase_product_return` */

/*Table structure for table `purchases` */

DROP TABLE IF EXISTS `purchases`;

CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `purchases` */

insert  into `purchases`(`id`,`reference_no`,`user_id`,`warehouse_id`,`supplier_id`,`item`,`total_qty`,`total_discount`,`total_tax`,`total_cost`,`order_tax_rate`,`order_tax`,`order_discount`,`shipping_cost`,`grand_total`,`paid_amount`,`status`,`payment_status`,`document`,`note`,`created_at`,`updated_at`) values 
(1,'pr-20221222-072153',1,1,6,1,10,0,0,200000,0,0,NULL,NULL,200000,200000,1,2,NULL,NULL,'2022-12-22 07:21:53','2022-12-22 07:22:14'),
(2,'pr-20221222-072317',1,1,7,2,12,0,0,660000,0,0,0,0,660000,660000,1,2,NULL,NULL,'2022-12-22 07:23:17','2022-12-22 07:23:52');

/*Table structure for table `quotations` */

DROP TABLE IF EXISTS `quotations`;

CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `quotations` */

/*Table structure for table `return_purchases` */

DROP TABLE IF EXISTS `return_purchases`;

CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `return_purchases` */

/*Table structure for table `returns` */

DROP TABLE IF EXISTS `returns`;

CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `returns` */

/*Table structure for table `reward_point_settings` */

DROP TABLE IF EXISTS `reward_point_settings`;

CREATE TABLE `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reward_point_settings` */

insert  into `reward_point_settings`(`id`,`per_point_amount`,`minimum_amount`,`duration`,`type`,`is_active`,`created_at`,`updated_at`) values 
(1,300,1000,1,'Year',1,'2021-06-08 21:40:15','2021-06-27 11:20:55');

/*Table structure for table `role_has_permissions` */

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_has_permissions` */

insert  into `role_has_permissions`(`permission_id`,`role_id`) values 
(4,1),
(4,2),
(4,4),
(5,1),
(5,2),
(6,1),
(6,2),
(6,4),
(7,1),
(7,2),
(7,4),
(8,1),
(8,2),
(8,4),
(9,1),
(9,2),
(9,4),
(10,1),
(10,2),
(11,1),
(11,2),
(12,1),
(12,2),
(12,4),
(13,1),
(13,2),
(13,4),
(14,1),
(14,2),
(15,1),
(15,2),
(16,1),
(16,2),
(17,1),
(17,2),
(18,1),
(18,2),
(19,1),
(19,2),
(20,1),
(20,2),
(20,4),
(21,1),
(21,2),
(21,4),
(22,1),
(22,2),
(22,4),
(23,1),
(23,2),
(24,1),
(24,2),
(24,4),
(25,1),
(25,2),
(25,4),
(26,1),
(26,2),
(27,1),
(27,2),
(28,1),
(28,2),
(28,4),
(29,1),
(29,2),
(29,4),
(30,1),
(30,2),
(31,1),
(31,2),
(32,1),
(32,2),
(33,1),
(33,2),
(34,1),
(34,2),
(35,1),
(35,2),
(36,1),
(36,2),
(37,1),
(37,2),
(38,1),
(38,2),
(39,1),
(39,2),
(40,1),
(40,2),
(41,1),
(41,2),
(42,1),
(42,2),
(43,1),
(43,2),
(44,1),
(44,2),
(45,1),
(45,2),
(46,1),
(46,2),
(47,1),
(47,2),
(48,1),
(48,2),
(49,1),
(49,2),
(50,1),
(50,2),
(51,1),
(51,2),
(52,1),
(52,2),
(53,1),
(53,2),
(54,1),
(54,2),
(55,1),
(55,2),
(55,4),
(56,1),
(56,2),
(56,4),
(57,1),
(57,2),
(57,4),
(58,1),
(58,2),
(59,1),
(59,2),
(60,1),
(60,2),
(61,1),
(61,2),
(62,1),
(62,2),
(63,1),
(63,2),
(63,4),
(64,1),
(64,2),
(64,4),
(65,1),
(65,2),
(66,1),
(66,2),
(67,1),
(67,2),
(68,1),
(68,2),
(69,1),
(69,2),
(70,1),
(70,2),
(71,1),
(71,2),
(72,1),
(72,2),
(73,1),
(73,2),
(74,1),
(74,2),
(75,1),
(75,2),
(76,1),
(76,2),
(77,1),
(77,2),
(78,1),
(78,2),
(79,1),
(79,2),
(80,1),
(80,2),
(81,1),
(81,2),
(82,1),
(82,2),
(83,1),
(83,2),
(84,1),
(84,2),
(85,1),
(85,2),
(86,1),
(86,2),
(87,1),
(87,2),
(88,1),
(88,2),
(89,1),
(89,2),
(90,1),
(90,2),
(91,1),
(91,2),
(92,1),
(92,2),
(93,1),
(93,2),
(94,1),
(94,2),
(95,1),
(95,2),
(96,1),
(96,2),
(97,1),
(97,2),
(98,1),
(98,2),
(99,1),
(99,2),
(100,1),
(100,2),
(101,1),
(101,2),
(102,1),
(102,2),
(103,1),
(103,2),
(104,1),
(104,2),
(105,1),
(105,2),
(12,6),
(13,6);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`description`,`guard_name`,`is_active`,`created_at`,`updated_at`) values 
(1,'Admin','admin can access all data...','web',1,'2018-06-02 05:46:44','2018-06-03 05:13:05'),
(2,'Owner','Owner of shop...','web',1,'2018-10-22 08:38:13','2018-10-22 08:38:13'),
(4,'staff','staff has specific acess...','web',1,'2018-06-02 06:05:27','2018-06-02 06:05:27'),
(5,'Customer','','web',1,'2020-11-05 12:43:16','2020-11-15 06:24:15'),
(6,'Kasir',NULL,'web',1,'2022-03-24 02:00:37','2022-03-24 02:00:37');

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sales` */

insert  into `sales`(`id`,`reference_no`,`user_id`,`cash_register_id`,`customer_id`,`warehouse_id`,`biller_id`,`item`,`total_qty`,`total_discount`,`total_tax`,`total_price`,`grand_total`,`order_tax_rate`,`order_tax`,`order_discount`,`coupon_id`,`coupon_discount`,`shipping_cost`,`sale_status`,`payment_status`,`document`,`paid_amount`,`sale_note`,`staff_note`,`created_at`,`updated_at`) values 
(1,'posr-20221222-072739',1,13,11,1,9,3,11,0,0,502000,502000,0,0,NULL,NULL,NULL,NULL,1,2,NULL,10000,NULL,NULL,'2022-12-22 07:27:39','2022-12-22 07:27:39'),
(2,'INV-009-0090',1,13,11,1,9,2,4,0,0,200000,200000,0,0,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2022-12-22 07:29:16','2022-12-22 07:29:16'),
(3,'sr-20221222-073010',1,13,11,1,9,1,1,0,0,30000,30000,0,0,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2022-12-22 07:30:10','2022-12-22 07:30:10');

/*Table structure for table `stock_counts` */

DROP TABLE IF EXISTS `stock_counts`;

CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `stock_counts` */

insert  into `stock_counts`(`id`,`reference_no`,`warehouse_id`,`category_id`,`brand_id`,`user_id`,`type`,`initial_file`,`final_file`,`note`,`is_adjusted`,`created_at`,`updated_at`) values 
(3,'scr-20221218-115615',1,NULL,NULL,1,'full','20221218-115615.csv',NULL,NULL,0,'2022-12-18 11:56:15','2022-12-18 11:56:15'),
(4,'scr-20221219-032825',1,NULL,NULL,1,'full','20221219-032825.csv',NULL,NULL,0,'2022-12-19 03:28:25','2022-12-19 03:28:25');

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `suppliers` */

insert  into `suppliers`(`id`,`name`,`image`,`company_name`,`vat_number`,`email`,`phone_number`,`address`,`city`,`state`,`postal_code`,`country`,`is_active`,`created_at`,`updated_at`) values 
(1,'Supplier 1','globaltouch.jpg','Supplier 1','','Supplier 1@mail.com','231231','Jakarta','Jakarta Selatan','','','Indonesia',1,'2018-05-13 04:06:34','2019-12-21 16:58:47'),
(6,'Bone Indah',NULL,'Bone Indah',NULL,'bone@gmail.com','0853','Sorong','Sorong','Papua barat',NULL,'Indo',1,'2022-12-21 22:06:53','2022-12-21 22:06:53'),
(7,'Pasar Central',NULL,'Pasar Central',NULL,'pasr@gmail.com','0853','Sorong','Sorong','Papua barat',NULL,'Indo',1,'2022-12-21 22:07:43','2022-12-21 22:07:43');

/*Table structure for table `taxes` */

DROP TABLE IF EXISTS `taxes`;

CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `taxes` */

insert  into `taxes`(`id`,`name`,`rate`,`is_active`,`created_at`,`updated_at`) values 
(1,'vat@11',11,1,'2018-05-12 15:58:30','2022-05-17 16:08:02'),
(2,'vat@15',15,1,'2018-05-12 15:58:43','2018-05-28 05:35:05'),
(3,'test',6,0,'2018-05-28 05:32:54','2018-05-28 05:34:44'),
(4,'vat 20',20,1,'2018-09-01 06:58:57','2018-09-01 06:58:57');

/*Table structure for table `transfers` */

DROP TABLE IF EXISTS `transfers`;

CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transfers` */

/*Table structure for table `units` */

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `units` */

insert  into `units`(`id`,`unit_code`,`unit_name`,`base_unit`,`operator`,`operation_value`,`is_active`,`created_at`,`updated_at`) values 
(1,'KG','Kilo Gram',NULL,'*',1,1,'2022-12-21 22:08:10','2022-12-21 22:08:10'),
(2,'ZAK','Zak',1,'*',1,1,'2022-12-21 22:08:23','2022-12-22 07:20:46'),
(3,'Pcs','Pieces',NULL,'*',1,1,'2022-12-22 06:18:19','2022-12-22 06:18:19'),
(4,'Ctn Pcs','Cartoon Pieces',3,NULL,NULL,1,'2022-12-22 06:18:50','2022-12-22 07:43:20'),
(5,'Ikt','Ikat',1,NULL,NULL,1,'2022-12-22 07:33:14','2022-12-22 07:33:14'),
(6,'Tin','Tin',NULL,'*',1,1,'2022-12-22 07:40:24','2022-12-22 07:40:24'),
(7,'Btl','Botol',NULL,'*',1,1,'2022-12-22 07:40:40','2022-12-22 07:40:40'),
(8,'Ctn Tin','Cartoon Tin',6,NULL,NULL,1,'2022-12-22 07:41:29','2022-12-22 07:41:29'),
(9,'Ctn Btl','Cartoon Botol',7,NULL,NULL,1,'2022-12-22 07:41:49','2022-12-22 07:41:49'),
(10,'Ball Pcs','Ball Pieces',3,NULL,NULL,1,'2022-12-22 07:44:49','2022-12-22 07:44:49'),
(11,'Jar','Jerigen',NULL,'*',1,1,'2022-12-22 07:45:52','2022-12-22 07:45:52'),
(12,'Ctn Jar','Cartoon Jerigen',11,NULL,NULL,1,'2022-12-22 07:46:25','2022-12-22 07:46:25'),
(13,'Roll','Roll',NULL,'*',1,1,'2022-12-22 07:47:04','2022-12-22 07:47:04'),
(14,'Pack Roll','Pack Roll',13,NULL,NULL,1,'2022-12-22 07:47:54','2022-12-22 07:47:54'),
(15,'Ea','Ea',NULL,'*',1,1,'2022-12-22 07:49:58','2022-12-22 07:49:58'),
(16,'Rim Ea','Rim Ea',15,NULL,NULL,1,'2022-12-22 07:50:57','2022-12-22 07:50:57'),
(17,'Gln','Gallon',NULL,'*',1,1,'2022-12-22 07:51:30','2022-12-22 07:51:30'),
(18,'Set','Set',NULL,'*',1,1,'2022-12-22 07:52:19','2022-12-22 07:52:19'),
(19,'Pct','Pct',NULL,'*',1,1,'2022-12-22 07:52:30','2022-12-22 07:52:30'),
(20,'Ekr','Ekor',NULL,'*',1,1,'2022-12-22 07:55:48','2022-12-22 07:55:48'),
(21,'Ram','Ram',NULL,'*',1,1,'2022-12-22 07:58:27','2022-12-22 07:58:27'),
(22,'Nos','Nos',NULL,'*',1,1,'2022-12-22 07:58:45','2022-12-22 07:58:45'),
(23,'Ram Nos','Ram Nos',22,NULL,NULL,1,'2022-12-22 07:59:05','2022-12-22 07:59:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`phone`,`company_name`,`role_id`,`biller_id`,`warehouse_id`,`is_active`,`is_deleted`,`created_at`,`updated_at`) values 
(1,'admin','admin@gmail.com','$2y$10$n/vmLn4hioFmzie1yTB5q.HTcz00Zf9.Jr7SySkE6sDOtT1JTQNGW','QFxzUb1aAes333xavZ93kS2cENOMzAq8nOTwTZpPpmdNNUJne8uIS7yF6oOS','12112','duajaya',1,NULL,NULL,1,0,'2018-06-02 09:24:15','2022-12-10 14:51:26'),
(12,'john','john@gmail.com','$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe','O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg','10001','',4,2,2,0,1,'2018-12-30 06:48:37','2019-03-06 10:59:49'),
(22,'dhiman','dhiman@gmail.com','$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq','','+8801111111101','lioncoders',5,0,0,0,1,'2020-11-15 12:14:58','2022-05-18 08:17:31'),
(30,'kasir','kasir@mail.com','$2y$10$q63b2887GvvTiVhq2Y3P8O9RrFuobDrN5hn3wb31RKutW.8iK2IGS',NULL,'012','Duajaya',6,9,1,1,0,'2022-03-24 02:45:30','2022-12-16 02:26:50'),
(37,'aryatama045','aryatama045@gmail.com','$2y$10$ZIPfETc57SAH1FXXITnswuJ6lexA93PFzPR0buKHGp3.c/ru55gAy',NULL,'676767',NULL,5,NULL,NULL,1,0,'2022-12-10 14:58:55','2022-12-10 15:24:41');

/*Table structure for table `variants` */

DROP TABLE IF EXISTS `variants`;

CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `variants` */

insert  into `variants`(`id`,`name`,`created_at`,`updated_at`) values 
(2,'Medium','2019-11-21 13:03:04','2019-11-24 14:43:52'),
(3,'Small','2019-11-21 13:03:04','2019-11-24 14:43:52'),
(5,'Large','2019-11-24 12:07:20','2019-11-24 14:44:56'),
(9,'a','2020-05-18 22:44:14','2020-05-18 22:44:14'),
(11,'b','2020-05-18 22:53:49','2020-05-18 22:53:49'),
(12,'variant 1','2020-09-27 12:08:27','2020-09-27 12:08:27'),
(13,'variant 2','2020-09-27 12:08:27','2020-09-27 12:08:27'),
(15,'S','2020-11-16 12:09:33','2020-11-16 12:09:33'),
(16,'M','2020-11-16 12:09:33','2020-11-16 12:09:33'),
(17,'L','2020-11-16 12:09:33','2020-11-16 12:09:33');

/*Table structure for table `warehouses` */

DROP TABLE IF EXISTS `warehouses`;

CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `warehouses` */

insert  into `warehouses`(`id`,`name`,`phone`,`email`,`address`,`is_active`,`created_at`,`updated_at`) values 
(1,'Dua Jaya','0813','duajaya@gmail.com','Jln Sungai kamundan',1,'2022-12-14 07:28:47','2022-12-14 07:28:47'),
(2,'Klalin Sejahtera Mandiri','0813','klalinsejahtera@gmail.com','Jln sungai mamberamo',1,'2022-12-15 06:14:47','2022-12-15 06:15:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
