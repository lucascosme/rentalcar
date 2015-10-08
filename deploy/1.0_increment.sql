CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `version` int(11) DEFAULT NULL,
  `firstLogin` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userStatus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mmns67o5v4bfippoqitu4v3t6` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `userroles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `version` int(11) DEFAULT NULL,
  `userRoleType` varchar(255) NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9fpaj94x8d921ed2n2a68nsql` (`userid`),
  CONSTRAINT `FK_9fpaj94x8d921ed2n2a68nsql` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* -------------- WEBUSER -------------- */
INSERT INTO users(id, createdAt, updatedAt, version, firstLogin, name, password, userName, userStatus) 
VALUES(id, current_timestamp, current_timestamp, 0, 0, 'Lucas Cosme', '$2a$10$gDtixemBCnDeEhQoUtM06eYnObpOULpuKyWh8.qdtYEwuqOQVw67q', 'lucas', 'ACTIVE');
-- Password: 123

SELECT id FROM users where userName = 'lucas' into @userid;

INSERT INTO userroles(id, createdAt, updatedAt, version, userRoleType, userid)
VALUES(id, current_timestamp, current_timestamp, 0, 'ADMIN', @userid);

INSERT INTO userroles(id, createdAt, updatedAt, version, userRoleType, userid)
VALUES(id, current_timestamp, current_timestamp, 0, 'USER', @userid);

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
