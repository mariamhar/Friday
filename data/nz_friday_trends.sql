CREATE TABLE `trends` (
  `id` INT NOT NULL,
  `title` VARCHAR(50) DEFAULT NULL,
  `hits` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

SET @term = 'cnn';
SELECT @term;
SELECT * FROM trends;
SELECT * FROM trends WHERE title = '@term';
INSERT INTO trends (id,title,hits) VALUES (NULL, @term, '1');
UPDATE trends SET hits = hits + 1 WHERE title = '@term';
UPDATE trends SET hits = hits + 1 WHERE title = 'covfefe';
SELECT * FROM trends ORDER BY hits DESC LIMIT 10;

INSERT INTO `trends` (`id`, `title`, `hits`) VALUES
(28, 'covfefe', 1),
(29, 'cosby', 1),
(30, 'heard', 1),
(31, 'trinidad', 1),
(32, 'Frankly', 2),
(33, 'Insulting', 1),
(34, 'Considering', 1),
(35, 'President', 4),
(36, 'Liar', 2),
(37, 'Shame', 1),
(38, 'Americans', 2),
(39, 'American', 1),
(40, 'People', 1),
(41, 'Themselves', 1),
(42, 'Fellow', 1),
(43, 'Sound', 1),
(44, 'Acumen', 1),
(45, 'Past', 1);