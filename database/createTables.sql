drop database if exists govalley;
create database govalley;
use govalley;



DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `salt` char(128) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE = InnoDB AUTO_INCREMENT=4;

DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems` (
	`id` int(4)  not null primary key auto_increment,
    `name` varchar(50) not null,
	`discription` varchar(1000) not null,
    `assumption`  varchar(1000),
    `example` varchar(1000),
	`tips` varchar(500),
    `annotation` varchar(500),
    `level` char not null,
    `category` char not null,
    `lesson` char,
    `plan` char not null
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `test_cases`;
CREATE TABLE `test_cases` (
	`id` int(10) not null primary key auto_increment,
    `problem_id` int(4) not null,
    `content` varchar(500) not null,
    foreign key(`problem_id`) references problems(`id`)
) ENGINE = InnoDB;


DROP TABLE IF EXISTS `submits`;
CREATE TABLE `submits` (
	`id` int(10) not null  primary key auto_increment,
    `problem_id` int(4) not null,
    `user_id` int(10) not null,
    `time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `result` varchar(20) not null,
    `runtime` varchar(20) not null,
    `flag` varchar(20) not null,
    foreign key(`problem_id`) references problems(`id`),
    foreign key(`user_id`) references users(`id`)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `submissions`;
CREATE TABLE `submissions` (
	`id` int(10) not null primary key auto_increment,
    `submit_id` int(10) not null,
    `content` varchar(1500) not null,
    foreign key(`submit_id`) references submits(`id`)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `last_result`;
CREATE TABLE `last_result` (
	`id` int(10) not null primary key auto_increment,
    `submit_id` int(10) not null,
    `user_id` int(10) not null,
    foreign key(`submit_id`) references submits(`id`),
    foreign key(`user_id`) references users(`id`)
)ENGINE = InnoDB;


DROP TABLE IF EXISTS `last_edit`;
CREATE TABLE `last_edit` (
    `id` int(10) not null primary key auto_increment,
    `user_id` int(10) not null,
    `problem_id` int(4) not null,
    `content` varchar(1500) not null,
    foreign key(`user_id`) references users(`id`),
    foreign key(`problem_id`) references problems(`id`)
)ENGINE = InnoDB;
