/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.21-MariaDB : Database - email
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`email` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `email`;

/*Table structure for table `mail` */

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `mail_to` varchar(100) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_message` text,
  `mail_attachment` varchar(255) DEFAULT NULL,
  `mail_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `mail` */

insert  into `mail`(`mail_id`,`username`,`mail_to`,`mail_subject`,`mail_message`,`mail_attachment`,`mail_date`) values (1,'regay@mail.com','irfan@mail.com','serang','BTFWwYZBpwCX6ggiMxohw7i5pJnfL81BCQdJIKa1FRhABzEbU05Xz1hfvali/ckdV2EA7wPdjYCr+yZbGasm9VvTde2bO3GHH7PKbI1f2uuJxs1BIpiIA26v+uv9JlxH+6SvvusGSFjEKM3ogUz8pRH4YC8ZQDaeq1X0bpB4suE=','','2017-06-09 23:38:46'),(2,'irfan@mail.com','regay@mail.com','RE:','gRJl+CCpSwg4F7rl5vBVXNlyxAzvD/Z1nfBQbUvnWQQXfbwuiDv1mZwzCxOvSu//QaEJOOygjWIObnMBneil9lNTpNSq8R7tNG12NgcCK98Jw3I5WdggPQmgRCisvWxwNRTtNvYMyM8VlPAUmOUmRCne8kiuv0yqHaKt0XHlKpk=','','2017-06-09 23:40:01'),(3,'irfan@mail.com','regay@mail.com','','ZHtCnyNH6oBwmZhJJ2lk6+BrmVddGv1LGrWtGuNpMkq0qXwIKcN95u4ygnDjO58oh7zh4tFmI1K1hx4yujFcQMlrDasV+Nhr1DY4crynnHSV6lA6imIk5gaqjBuNdtuiLmYbNBN2z3jLMyk2HTIiYdIblzkTtHZh68Zqi9W/PYg=','','2017-06-09 23:44:52'),(4,'regay@mail.com','irfan@mail.com','','HMbwMR1WJc+TqKD+9SUT4EZ7AuZ99b70ufSU4JzdF4/rYPGdb7f6KPKVYfRB7Gr9NqVgcGrYULYMqEChxAtJZxT0410Dueq3kU/jhaxWpxwYyQTuQElHlq6qjHQnFOqFvThALGdObCQvUhv4PppCh93KD00ntMVjAeKMvcb9mRU=','','2017-06-09 23:45:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `publickey` text,
  `privatekey` text,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`email`,`password`,`publickey`,`privatekey`) values ('firman','firman@mail.com','81dc9bdb52d04dc20036dbd8313ed055','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC8Dvs05wZScylyKU9PtWDEDc1q\r\nha+6tD67hj3vVy0PumKQ8FGDwaLnAjyj3NB835LBd33i7s4cYp8M62poBa4vEVoD\r\nFtVM2f8/FOmzLdWhfT/5LkYp7pohFFFPodymNSeqofOmaEaK0CghVwVJQ6m9x+7e\r\nUK62l8D6knvnQoKtbwIDAQAB','MIICXQIBAAKBgQC8Dvs05wZScylyKU9PtWDEDc1qha+6tD67hj3vVy0PumKQ8FGD\r\nwaLnAjyj3NB835LBd33i7s4cYp8M62poBa4vEVoDFtVM2f8/FOmzLdWhfT/5LkYp\r\n7pohFFFPodymNSeqofOmaEaK0CghVwVJQ6m9x+7eUK62l8D6knvnQoKtbwIDAQAB\r\nAoGAC8PUK2cYmifiO+YhtBbgyuMiKrvaVo/YLNslHMgTZZx/dhnSv69phZI6QPYb\r\nhPRntfrHwV63PkddM+22ZnOUhfnXyAONQUClVPJVt/ztYU7debse8XengCHtJ+w3\r\nFTNxMsIgafSVaFAjSacmXena2wB/Jrl8v5G9GSrnA8hHB+ECQQDbcQZH//hP3qWN\r\nooytvnq/yTEjpeVmb8weAeuFVH1Ql/thY6tkM2Jd7Oa7dHvT3I0Kyn+t5eL3brVv\r\nN3bYyg/rAkEA22OAeJaXWwMHcSIKnLoaPKpxlrJ2khhc3YD6IRbuir/AByuSzirU\r\nLpKIIS8U2mY8xIAUKy8pIybhfCtLvjZ7jQJABVjqu0Rsi520URA991nl6diAPwsi\r\n3O0qfyyyzYvyhc0+TfA80/NAmWNVeAntnosIUNQAan9omXj0KOKkHcJGwwJBAJuj\r\nSjfCNZv2WSg0Sy0Ghah2DmEnOCDKsc7eOhSRbSb3g2ZSzjH+hkqH35UTDoslroSE\r\njEpaiaeLZLmvCWvmwN0CQQCSCpcTGHjl53p6JFr7Kgw0yziALYGQZpjDR9Gg8Ngv\r\nXdA2rydmQ3g9OSlzXYRPnUVkEwISTiarEum+HGhqfa+r'),('irfan','irfan@mail.com','81dc9bdb52d04dc20036dbd8313ed055','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCH/KoFbjlU1YQR574th61tU/DV\r\nE+M37ac9vl/wh8GHin/HQ4xRV8seqvv7BRifgnsKEsBW31LDJeJbsw9MMtKMEQhB\r\nZJxByhRXl9reFxfqdeX4KkTf7td4CtmpmpGOuzoBHihD8cyRA69S5k8zQkTheVxe\r\nrKR5qwFrCGhYl8CF/wIDAQAB','MIICXAIBAAKBgQCH/KoFbjlU1YQR574th61tU/DVE+M37ac9vl/wh8GHin/HQ4xR\r\nV8seqvv7BRifgnsKEsBW31LDJeJbsw9MMtKMEQhBZJxByhRXl9reFxfqdeX4KkTf\r\n7td4CtmpmpGOuzoBHihD8cyRA69S5k8zQkTheVxerKR5qwFrCGhYl8CF/wIDAQAB\r\nAoGAQM84MLJhfH7uHKJ3zrc0/j/dLY/24HbRF+odS0NIBtMJJuyYeUQAODOBOBcr\r\nrwm+ngRlyoFQrlTl1pI2HjiygvlXoqGX/JQ20XYS7YxU5oc0eo42ilvrM1x3L5iz\r\n0tUsadB95002SUMjE5o/9KRt3JSjyuxJ66HszFPFvVkbgpECQQCLqthSEUN+tY3h\r\nIiR9UBV+JmlOCHIcVXsBYfQ679TIgG8zAteZj7i5N2IvpRGt7TO94sFno227NN+r\r\nDjCeMFbFAkEA+UENQ9RuCiqQfzrqnro4G6wRx9nwVbMfUPNKTKNBMZAnm0CBUVsz\r\nIDj4lmAL8De87IjQTGPgg7htycEoIcAV8wJAY7rp3qgfJwJjPkhP//9IaZzqAuN7\r\nAAp13AXjDJamvUkgni9AXpHG2NLYVKctGaHQGZ4qdmO3fj8CG7X1N2/S9QJALXfL\r\nZqsyo5IeJ8dkky3fHFUoLS+5Yri5Jrgqvo4tT1A/mVeL/35GdkNOPYgpxVk1kmRm\r\nsvipNP4IsPwWSQnUNwJBAIZ1t4qLZlu1v2LKOJ6auo+wUkcTcFfm/fnp2RwTd4/Y\r\nxC8H4snYyLHAGQED9VSBpgZhVU4gnKGOT+SUVsqCJdI='),('regay','regay@mail.com','202cb962ac59075b964b07152d234b70','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCFZ90+z3Dz4XYoUH3D9DSogzP0\r\n19X4gp+hucKoKgewOUhfR06xw+4WyIu6FTvGcV+lrdE07lfsvqo2KTANk4C2pQmG\r\nlwknazUlGDfUzw93A2AYF1lBFMsKiE0D9OeOpIQRgcNSWJOWZzRgeXXScd1dlk6H\r\n8oMDdBv8Ufn31xeSTwIDAQAB','MIICXgIBAAKBgQCFZ90+z3Dz4XYoUH3D9DSogzP019X4gp+hucKoKgewOUhfR06x\r\nw+4WyIu6FTvGcV+lrdE07lfsvqo2KTANk4C2pQmGlwknazUlGDfUzw93A2AYF1lB\r\nFMsKiE0D9OeOpIQRgcNSWJOWZzRgeXXScd1dlk6H8oMDdBv8Ufn31xeSTwIDAQAB\r\nAoGAAN0JZWDXVM9r7IU02IH/SJXszf61n6b3cdxaF6zfTDMwC48nwbvIZzUDaSq+\r\nWSGeYlv2eNa6vUlbSwAc6QGVjtarypyOiugYtdpXtkcJWancNRuWv9zTgU9seA+j\r\n9yZT8wWS39q1AjlN5YzVIG/sfJmCj8+OEauYo/uxaqgzWXkCQQDCNqYKeFItxqYF\r\nVNfv4jjkNR1FgP/ipfgazTjtN7mY4hcdrVlFj+oDkQDO+4QDzmWMoufg6dpgeEpC\r\n1sERPcGHAkEAr9jXsC6URp2AjPaHvH8z75D/KtoYNdiKrM11D4RNk15fRKn7vbJW\r\nmUe5WpqIikT4pK6MySVYwcXy1qqyoNR6+QJBAIrjshLCwWJjMc+WQWcYDT+GjIxs\r\nGJLpxmjEYvWiaGRhK87ZbYJFzUEHreBYFqzyKcVNqy45jyZ2YAU0t5Ww6HkCQQCG\r\nYD1Km/2hDMDsd4P4bnggrPvhIjJ4C1bFgGfhCKhDYk2I6iC+sGZu0Zl5/Dc0+knL\r\nhrt9BnYR9ZOBqYXBUz35AkEAl98knlRMZchl2WjR6TUCDmIkafI7GWhDjb3x6grV\r\np8bkHceHXsUx0Lb+f5vo70Ijpw6tAdTpswI15EPfmdsVqQ==');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
