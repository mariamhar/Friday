CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `hashtag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

SELECT * FROM messages;
TRUNCATE messages;
DROP TABLE IF EXISTS messages;

CREATE TABLE IF NOT EXISTS `messages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_to` VARCHAR(50),
  `user_from` VARCHAR(50),
  `body` TEXT,
  `date` DATETIME,
  `opened` VARCHAR(3),
  `viewed` VARCHAR(3),
  `delete` VARCHAR(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;


SELECT * FROM messages;
INSERT INTO messages VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'Hey, stranger...','2017-05-19', 'no', 'no', 'no');
INSERT INTO messages VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'Hey, yourself!','2017-05-19', 'no', 'no', 'no');
INSERT INTO messages VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'Hey, yourself!','2017-05-19', 'no', 'no', 'no');

SELECT user_to, user_from FROM messages WHERE user_to = 'al_nolan' OR user_from = 'al_nolan' ORDER BY id DESC LIMIT 1;