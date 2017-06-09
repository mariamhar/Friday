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

SET @term = 'cosby';
SELECT @term;
SELECT * FROM trends;
SELECT * FROM trends WHERE title = @term;
INSERT INTO trends (id,title,hits) VALUES (NULL, @term, '1');
UPDATE trends SET hits = hits + 1 WHERE title = '@term';
UPDATE trends SET hits = hits + 1 WHERE title = 'covfefe';