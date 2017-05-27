CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL COMMENT 'ID of request',
  `user_to` varchar(50) DEFAULT NULL COMMENT 'request recipient',
  `user_from` varchar(50) DEFAULT NULL COMMENT 'request sender'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `friend_requests`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of request', AUTO_INCREMENT=5;


INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(3, 'clark_kent', 'denny_crane'),
(4, 'corey_booker', 'denny_crane');
