CREATE DATABASE user;
USE user;


CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

insert into
  `user`(`id`, `name`, `email`)
values
  (1, `Victoria Prandi PING`, `vicprandi@gmail.com`),
  (2, `Vitoria Cardoso PING`, `vic@gmail.com`);
