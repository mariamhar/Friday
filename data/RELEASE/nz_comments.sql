CREATE TABLE `comments` (
  `id` int(11) NOT NULL COMMENT 'ID of post comment',
  `body` text COMMENT 'body of post comment',
  `posted_by` varchar(60) DEFAULT NULL COMMENT 'added by this user',
  `posted_to` varchar(60) DEFAULT NULL COMMENT 'posted to this specific user if any',
  `date_added` datetime DEFAULT NULL COMMENT 'date of post',
  `removed` varchar(3) DEFAULT NULL COMMENT 'user account active',
  `post_id` int(11) DEFAULT NULL COMMENT 'is post deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of post comment', AUTO_INCREMENT=42;

INSERT INTO `comments` (`id`, `body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
  (1, 'Rosie! You know you&#39;re the one for me.', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (2, 'Rosie! You know you&#39;re the one for me.', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (3, 'Rosie! You know you&#39;re the one for me.', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (4, '20170509130036', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (5, '2017-05-09 13:01:02', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (6, '2017-05-09 13:01:02', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (7, '2017-05-09 13:02:08', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
  (8, '2017-05-09 13:03:24', 'denny_crane', 'none', '2017-05-09 13:03:28', 'no', 101854),
  (9, '@post_body', '@userLoggedIn', '@posted_to', '2017-05-09 13:09:54', 'no', 101854),
  (10, '2017-05-09 13:10:49', 'denny_crane', 'none', '2017-05-09 13:10:52', 'no', 101854),
  (11, 'Load the posts.', 'al_nolan', 'al_nolan', '2017-05-09 13:40:01', 'no', 100110),
  (12, 'In the posts area, things are going to get funky!', 'al_nolan', 'al_nolan', '2017-05-09 13:40:57', 'no', 100855),
  (13, 'Wake up!', 'al_nolan', 'al_nolan', '2017-05-09 13:46:28', 'no', 100855),
  (14, 'Yes. this is definitely working.', 'al_nolan', 'al_nolan', '2017-05-09 13:46:41', 'no', 100854),
  (15, 'I think the issue is experience. Maybe yo don&#39;t know what you&#39;re doing.', 'al_nolan', 'al_nolan', '2017-05-09 13:47:00', 'no', 100110),
  (16, 'NO! I&#39;m not going to keep trying, dude! Get it right! Then I&#39;ll come back! Maybe.', 'al_nolan', 'al_nolan', '2017-05-09 13:47:24', 'no', 100109),
  (17, 'Let&#39;s see how this goes.', 'al_nolan', 'al_nolan', '2017-05-09 14:25:40', 'no', 100110),
  (18, 'By golly this shit is actually working.', 'al_nolan', 'al_nolan', '2017-05-09 14:28:24', 'no', 100110),
  (19, 'This is really coming together... like a couple of newlyweds...', 'al_nolan', 'al_nolan', '2017-05-09 14:59:29', 'no', 100855),
  (20, 'What the hell is going on?', 'al_nolan', 'al_nolan', '2017-05-09 15:06:22', 'no', 100855),
  (21, 'fr fr', 'denny_crane', 'denny_crane', '2017-05-09 15:32:46', 'no', 100856),
  (22, 'Who you tellin&#39;?!?!', 'al_nolan', 'denny_crane', '2017-05-09 15:34:18', 'no', 100856),
  (23, 'well, well, well...', 'denny_crane', 'denny_crane', '2017-05-09 17:16:50', 'no', 100856),
  (24, 'This is really starting to both me.', 'denny_crane', 'denny_crane', '2017-05-10 15:22:17', 'no', 100677),
  (25, 'This is really trying my nerves this morning.', 'al_nolan', 'al_nolan', '2017-05-17 11:27:19', 'no', 100857),
  (26, 'Love that jam.', 'al_nolan', 'al_nolan', '2017-05-18 15:51:19', 'no', 100882),
  (27, 'If there&#39;s a better song let me know.', 'al_nolan', 'al_nolan', '2017-05-18 15:51:29', 'no', 100881),
  (28, 'Man, I&#39;m tryna told ya...', 'denny_crane', 'al_nolan', '2017-05-18 16:19:03', 'no', 100882),
  (29, 'HA! I got you.', 'al_nolan', 'charlize_theron', '2017-05-18 17:20:35', 'no', 100885),
  (30, 'And I only found out about this thing a week ago.', 'al_nolan', 'al_nolan', '2017-05-18 17:21:37', 'no', 100886),
  (31, 'I see...', 'craig_mack', 'al_nolan', '2017-05-18 17:23:15', 'no', 100887),
  (32, 'HAAAAAA!', 'craig_mack', 'charlize_theron', '2017-05-18 17:23:25', 'no', 100885),
  (33, 'Girl, yes. You doin&#39; the side boob thing?', 'vicky_jeudy', 'charlize_theron', '2017-05-19 17:39:39', 'no', 100893),
  (34, 'You&#39;re supposed to just reply to the comment itself, jackass...', 'vicky_jeudy', 'sean_spicer', '2017-05-19 17:48:17', 'no', 100895),
  (35, '...and have a safe trip.', 'vicky_jeudy', 'sean_spicer', '2017-05-19 17:48:24', 'no', 100896),
  (36, 'lol', 'vicky_jeudy', 'sean_spicer', '2017-05-19 17:48:43', 'no', 100895),
  (37, 'Damn right!', 'sean_spicer', 'denny_crane', '2017-05-19 17:49:55', 'no', 100897),
  (38, 'I&#39;m there.', 'denny_crane', 'sean_spicer', '2017-05-19 17:50:35', 'no', 100898),
  (39, 'No, it&#39;s next month. Wait, you&#39;re there now?', 'sean_spicer', 'sean_spicer', '2017-05-19 17:50:56', 'no', 100898),
  (40, 'No, Sean. I&#39;m not there now. I&#39;m saying I&#39;ll... nevermind... smh', 'denny_crane', 'sean_spicer', '2017-05-19 17:51:29', 'no', 100898),
  (41, 'U-S-A!', 'sean_spicer', 'sean_spicer', '2017-05-19 17:51:44', 'no', 100898);
