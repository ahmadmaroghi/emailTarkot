-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jun 2017 pada 01.25
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `email`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mail`
--

CREATE TABLE `mail` (
  `mail_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `mail_to` varchar(100) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_message` text,
  `mail_attachment` varchar(255) DEFAULT NULL,
  `mail_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mail`
--

INSERT INTO `mail` (`mail_id`, `username`, `mail_to`, `mail_subject`, `mail_message`, `mail_attachment`, `mail_date`, `flag`) VALUES
(1, 'regay@mail.com', 'irfan@mail.com', 'serangan', 'TGcBagYcPvxJjQpCzTvn/Xf74d9eY+FUpLpUOz0YqjyEyUB+7ID0VFz7D5TMWVJ4n1/l2os61IermRcuz9WmWuk93DpMCUbtNXlQfXBUhPn+yQ+jxm9kOJEqdA42oQH4vhfv3orKfr3jZR1eBQEGIDuuik+k6F6dbtAbHq1EwJI=', '', '2017-06-09 18:18:45', 0),
(2, 'irfan@mail.com', 'regay@mail.com', '', 'RWQEl2R61clWoM/Qwxm4UjlK/6JiTccLgvlY/jWYZsTw2zjzdUJsps82ntc3HUGVcfdOvIkfhrxDQQZkC2jefE0xU3fKf5NHFAYO91eUQhnBKgQfAJnt+dvUufIShc4RfwmlMqbnLn6xNeo2V6gpSGMowSdVFomVZjlh+GdwFJM=', '', '2017-06-09 18:19:38', 1),
(3, 'irfan@mail.com', 'regay@mail.com', 'test', 'CsURoLQ2DbpjrRv26uNkf4K2fcZBsnPfL+N6dmd6llgWVyA0A3lJqJe+Pxwcg32tE8Ji9AwPYy/6vPD0jdAcSorhfxv0glsGOlQztE3EdZeUQp0TnJOvnWzrXwQ8pr8P4Hwe7mvHyShWWhPX6Lskn1vdKcw3BZxxi6nA8tV+Lyk=', '', '2017-06-09 18:20:37', 0),
(4, 'regay@mail.com', 'irfan@mail.com', '', 'ZF7MEK76AJXcqFnBHeH/2hKY4gCoHmMsuWiF8HmFDc67MTZCv+mP3MWhXoibx7/cTU3NX0Sx3ah31D0MXKDgQgJ0jE3gFiqBn6aFaAZbpaHtlv0hzWJUxhx/W7zvo44F1SUzE2KJa/GU9W0SDmEOTBI6/wowVq6wWlxP05Szdkw=', 'Desain (1).docx', '2017-06-09 18:28:59', 1),
(5, 'regay@mail.com', 'irfan@mail.com', '', 'P3nOwktoJFub8yPU6sPHHdExkgHmld/eZVRXOBFgFKysi0SAOE9Q31pP6Qvn57zjvdjJBeu5DycScAbFPHHcS2lHGpbsgjTm/URwJ9DGLiCeitd/1QI6I5fYef2xyZMJYz1MntZ7LUnygnKJvLoJI0tv+BB6i1z8FoV4afPnIQc=', '', '2017-06-09 18:29:48', 1),
(6, 'regay@mail.com', 'irfa', '', '', '', '2017-06-09 19:04:19', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `publickey` text,
  `privatekey` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `publickey`, `privatekey`) VALUES
('firman', 'firman@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC8Dvs05wZScylyKU9PtWDEDc1q\r\nha+6tD67hj3vVy0PumKQ8FGDwaLnAjyj3NB835LBd33i7s4cYp8M62poBa4vEVoD\r\nFtVM2f8/FOmzLdWhfT/5LkYp7pohFFFPodymNSeqofOmaEaK0CghVwVJQ6m9x+7e\r\nUK62l8D6knvnQoKtbwIDAQAB', 'MIICXQIBAAKBgQC8Dvs05wZScylyKU9PtWDEDc1qha+6tD67hj3vVy0PumKQ8FGD\r\nwaLnAjyj3NB835LBd33i7s4cYp8M62poBa4vEVoDFtVM2f8/FOmzLdWhfT/5LkYp\r\n7pohFFFPodymNSeqofOmaEaK0CghVwVJQ6m9x+7eUK62l8D6knvnQoKtbwIDAQAB\r\nAoGAC8PUK2cYmifiO+YhtBbgyuMiKrvaVo/YLNslHMgTZZx/dhnSv69phZI6QPYb\r\nhPRntfrHwV63PkddM+22ZnOUhfnXyAONQUClVPJVt/ztYU7debse8XengCHtJ+w3\r\nFTNxMsIgafSVaFAjSacmXena2wB/Jrl8v5G9GSrnA8hHB+ECQQDbcQZH//hP3qWN\r\nooytvnq/yTEjpeVmb8weAeuFVH1Ql/thY6tkM2Jd7Oa7dHvT3I0Kyn+t5eL3brVv\r\nN3bYyg/rAkEA22OAeJaXWwMHcSIKnLoaPKpxlrJ2khhc3YD6IRbuir/AByuSzirU\r\nLpKIIS8U2mY8xIAUKy8pIybhfCtLvjZ7jQJABVjqu0Rsi520URA991nl6diAPwsi\r\n3O0qfyyyzYvyhc0+TfA80/NAmWNVeAntnosIUNQAan9omXj0KOKkHcJGwwJBAJuj\r\nSjfCNZv2WSg0Sy0Ghah2DmEnOCDKsc7eOhSRbSb3g2ZSzjH+hkqH35UTDoslroSE\r\njEpaiaeLZLmvCWvmwN0CQQCSCpcTGHjl53p6JFr7Kgw0yziALYGQZpjDR9Gg8Ngv\r\nXdA2rydmQ3g9OSlzXYRPnUVkEwISTiarEum+HGhqfa+r'),
('irfan', 'irfan@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCH/KoFbjlU1YQR574th61tU/DV\r\nE+M37ac9vl/wh8GHin/HQ4xRV8seqvv7BRifgnsKEsBW31LDJeJbsw9MMtKMEQhB\r\nZJxByhRXl9reFxfqdeX4KkTf7td4CtmpmpGOuzoBHihD8cyRA69S5k8zQkTheVxe\r\nrKR5qwFrCGhYl8CF/wIDAQAB', 'MIICXAIBAAKBgQCH/KoFbjlU1YQR574th61tU/DVE+M37ac9vl/wh8GHin/HQ4xR\r\nV8seqvv7BRifgnsKEsBW31LDJeJbsw9MMtKMEQhBZJxByhRXl9reFxfqdeX4KkTf\r\n7td4CtmpmpGOuzoBHihD8cyRA69S5k8zQkTheVxerKR5qwFrCGhYl8CF/wIDAQAB\r\nAoGAQM84MLJhfH7uHKJ3zrc0/j/dLY/24HbRF+odS0NIBtMJJuyYeUQAODOBOBcr\r\nrwm+ngRlyoFQrlTl1pI2HjiygvlXoqGX/JQ20XYS7YxU5oc0eo42ilvrM1x3L5iz\r\n0tUsadB95002SUMjE5o/9KRt3JSjyuxJ66HszFPFvVkbgpECQQCLqthSEUN+tY3h\r\nIiR9UBV+JmlOCHIcVXsBYfQ679TIgG8zAteZj7i5N2IvpRGt7TO94sFno227NN+r\r\nDjCeMFbFAkEA+UENQ9RuCiqQfzrqnro4G6wRx9nwVbMfUPNKTKNBMZAnm0CBUVsz\r\nIDj4lmAL8De87IjQTGPgg7htycEoIcAV8wJAY7rp3qgfJwJjPkhP//9IaZzqAuN7\r\nAAp13AXjDJamvUkgni9AXpHG2NLYVKctGaHQGZ4qdmO3fj8CG7X1N2/S9QJALXfL\r\nZqsyo5IeJ8dkky3fHFUoLS+5Yri5Jrgqvo4tT1A/mVeL/35GdkNOPYgpxVk1kmRm\r\nsvipNP4IsPwWSQnUNwJBAIZ1t4qLZlu1v2LKOJ6auo+wUkcTcFfm/fnp2RwTd4/Y\r\nxC8H4snYyLHAGQED9VSBpgZhVU4gnKGOT+SUVsqCJdI='),
('regay', 'regay@mail.com', '202cb962ac59075b964b07152d234b70', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCFZ90+z3Dz4XYoUH3D9DSogzP0\r\n19X4gp+hucKoKgewOUhfR06xw+4WyIu6FTvGcV+lrdE07lfsvqo2KTANk4C2pQmG\r\nlwknazUlGDfUzw93A2AYF1lBFMsKiE0D9OeOpIQRgcNSWJOWZzRgeXXScd1dlk6H\r\n8oMDdBv8Ufn31xeSTwIDAQAB', 'MIICXgIBAAKBgQCFZ90+z3Dz4XYoUH3D9DSogzP019X4gp+hucKoKgewOUhfR06x\r\nw+4WyIu6FTvGcV+lrdE07lfsvqo2KTANk4C2pQmGlwknazUlGDfUzw93A2AYF1lB\r\nFMsKiE0D9OeOpIQRgcNSWJOWZzRgeXXScd1dlk6H8oMDdBv8Ufn31xeSTwIDAQAB\r\nAoGAAN0JZWDXVM9r7IU02IH/SJXszf61n6b3cdxaF6zfTDMwC48nwbvIZzUDaSq+\r\nWSGeYlv2eNa6vUlbSwAc6QGVjtarypyOiugYtdpXtkcJWancNRuWv9zTgU9seA+j\r\n9yZT8wWS39q1AjlN5YzVIG/sfJmCj8+OEauYo/uxaqgzWXkCQQDCNqYKeFItxqYF\r\nVNfv4jjkNR1FgP/ipfgazTjtN7mY4hcdrVlFj+oDkQDO+4QDzmWMoufg6dpgeEpC\r\n1sERPcGHAkEAr9jXsC6URp2AjPaHvH8z75D/KtoYNdiKrM11D4RNk15fRKn7vbJW\r\nmUe5WpqIikT4pK6MySVYwcXy1qqyoNR6+QJBAIrjshLCwWJjMc+WQWcYDT+GjIxs\r\nGJLpxmjEYvWiaGRhK87ZbYJFzUEHreBYFqzyKcVNqy45jyZ2YAU0t5Ww6HkCQQCG\r\nYD1Km/2hDMDsd4P4bnggrPvhIjJ4C1bFgGfhCKhDYk2I6iC+sGZu0Zl5/Dc0+knL\r\nhrt9BnYR9ZOBqYXBUz35AkEAl98knlRMZchl2WjR6TUCDmIkafI7GWhDjb3x6grV\r\np8bkHceHXsUx0Lb+f5vo70Ijpw6tAdTpswI15EPfmdsVqQ==');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
