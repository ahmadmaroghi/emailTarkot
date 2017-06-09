/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.9-MariaDB : Database - email
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `mail` */

CREATE TABLE `mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `mail_to` varchar(100) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_message` text,
  `mail_attachment` varchar(255) DEFAULT NULL,
  `mail_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `mail` */

insert  into `mail`(`mail_id`,`username`,`mail_to`,`mail_subject`,`mail_message`,`mail_attachment`,`mail_date`) values (1,'batak@mail.com','tarkot@mail.com','Test','Test','','2017-06-08 22:34:48'),(2,'tarkot@mail.com','batak@mail.com','RE : Bales Test','akjsdhkjasdh','','2017-06-08 22:35:04'),(3,'batak@mail.com','tarkot@mail.com','RE : tai ly','assdg','','2017-06-08 22:36:23'),(4,'bayu94.ba@gmail.com','batak@mail.com','testing','gua nyoba pake jaringan bisa gak ya ? kayaknya canggih deh \r\n\r\n\r\nisa kali *:\r\n','','2017-06-08 22:38:36'),(5,'batak@mail.com','bayu94.ba@gmail.com','RE : bodo amat','tai lu','','2017-06-08 22:39:08'),(6,'bayu94.ba@gmail.com','batak@mail.com','RE : ','Dear Martin,\r\n\r\n\r\nTarkot ngoceh mulu, suruh diem\r\n\r\nTerima kasih ','','2017-06-08 22:39:39'),(7,'batak@mail.com','bayu94.ba@gmail.com','','Message ','','2017-06-08 23:09:49');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`email`,`password`) values ('batak','batak@mail.com','202cb962ac59075b964b07152d234b70'),('Bayu Tri anggoro','bayu94.ba@gmail.com','a430e06de5ce438d499c2e4063d60fd6'),('tarkot','tarkot@mail.com','202cb962ac59075b964b07152d234b70');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
