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

UPDATE messages SET body = 'Hey, you...' WHERE user_to = 'al_nolan' AND user_from = 'vicky_jeudy';

SELECT * FROM messages;
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'Hey, stranger...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'Well, well, well...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'Want to try (us) again?',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'You don#&39; have to answer now... just... answer.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'You know where my head is.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'I do.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'Then...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'denny_crane', 'vicky_jeudy', 'Mmm mmm mmm',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'denny_crane', '...ick...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'denny_crane', 'vicky_jeudy', 'Ick is right... I#&39;m quite nasty.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'charlize_theron', 'You know who just hit my up, right??',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'vicky_jeudy', 'No...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'vicky_jeudy', 'Wait, NO!?!?',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'charlize_theron', '*sad face*',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'charlize_theron', 'This can&#39;t go well.',NOW(), 'no', 'no', 'no');


UPDATE messages SET opened = 'yes' WHERE user_to = 'al_nolan' AND user_from = 'vicky_jeudy';
UPDATE messages SET opened = 'no' WHERE user_to = 'al_nolan' AND user_from = 'vicky_jeudy';
SELECT * FROM messages WHERE (user_to = 'al_nolan' AND user_from = 'vicky_jeudy') OR (user_from = 'vicky_jeudy' AND user_to = 'denny_crane');


SELECT user_to, user_from FROM messages WHERE user_to = 'al_nolan' OR user_from = 'al_nolan' ORDER BY id DESC LIMIT 1;