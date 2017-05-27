SELECT * FROM users;

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'ID for user',
  `first_name` varchar(25) DEFAULT NULL COMMENT 'first name of user',
  `last_name` varchar(25) DEFAULT NULL COMMENT 'last name of user',
  `username` varchar(100) DEFAULT NULL COMMENT 'username of user',
  `email` varchar(100) DEFAULT NULL COMMENT 'email of user',
  `password` varchar(255) DEFAULT NULL COMMENT 'password of user',
  `signup_date` date DEFAULT NULL COMMENT 'date user signed up',
  `profile_pic` varchar(255) DEFAULT NULL COMMENT 'URL of the pic user has for their profile',
  `num_posts` int(11) DEFAULT NULL COMMENT 'cool # of posts stat for users',
  `num_likes` int(11) DEFAULT NULL COMMENT 'cool # of likes stat far users',
  `user_closed` varchar(3) DEFAULT NULL COMMENT 'literally a yes or a no on if the account is active',
  `friend_array` text COMMENT 'friends user has',
  `location` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for user', AUTO_INCREMENT=88;COMMIT;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`, `location`) VALUES
  (1, 'Al', 'Nolan', 'al_nolan', 'thisisal@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-04-30', 'assets/images/profile_pics/al_nolan.jpg', 36, 1, 'no', ',denny_crane,craig_mack,charlize_theron,sean_spicer,vicky_jeudy,', NULL),
  (2, 'Adolphus', 'Nolan', 'adolphus_nolan', 'adolphusnolan@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-04-30', 'assets/images/profile_pics/adolphus_nolan.jpg', 0, 0, 'no', ',adolphus_nolan,', NULL),
  (6, 'Alfonzo', 'Logan', 'alfonzo_logan', 'alfonzologan@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',adolphus_nolan,', NULL),
  (7, 'Craig', 'Mack', 'craig_mack', 'newflavor@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/craig_mack59ae1a38bde58107c825631016fab999n.jpeg', 13, 1, 'no', ',adolphus_nolan,denny_crane,al_nolan,charlize_theron,charlize_theron,', NULL),
  (8, 'Clark', 'Kent', 'clark_kent', 'djkalel@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 0, 'no', ',alfonzo_logan,adolphus_nolan,al_nolan,', NULL),
  (9, 'John', 'Legend', 'john_legend', 'ordinary@people.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',adolphus_nolan,', NULL),
  (10, 'Corey', 'Booker', 'corey_booker', 'cbook@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
  (11, 'Reggie', 'Bush', 'reggie_bush', 'rbush@kimk.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
  (12, 'Charlize', 'Theron', 'charlize_theron', 'ctheron@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/charlize_theron.png', 5, 1, 'no', ',adolphus_nolan,al_nolan,craig_mack,craig_mack,vicky_jeudy,', NULL),
  (13, 'Buck', 'Rodgers', 'buck_rodgers', 'brodgers@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
  (14, 'Tucam', 'Sam', 'tucan_sam', 'tsam@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
  (15, 'Denny', 'Crane', 'denny_crane', 'dc@cpslaw.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-05', 'assets/images/profile_pics/denny_crane8f459d9d1c5e3d5d25141d0baa0fa1d6n.jpeg', 311, 1, 'no', ',al_nolan,craig_mack,sean_spicer,sean_spicer,', NULL),
  (83, 'Vicky', 'Jeudy', 'vicky_jeudy', 'vajayjay@yahoo.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/vicky_jeudy05370512421c0503db638c2bda3bb47an.jpeg', 4, 1, 'no', ',charlize_theron,al_nolan,', 'Brooklyn, NY'),
  (84, 'Sean', 'Spicer', 'sean_spicer', 'spicy@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-19', 'assets/images/profile_pics/sean_spicer7de291596f68bfe0540dc6c4fbb764f1n.jpeg', 3, 1, 'no', ',al_nolan,denny_crane,denny_crane,', 'DC'),
  (85, 'Marty', 'McFly', 'slacker', 'mf@hillside.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '1985-12-15', 'assets/images/profile_pics/McFLY.jpg', 0, 0, 'no', ',', 'Hillside, California'),
  (86, 'Geoff', 'Cooke', 'geoff_cooke', 'gcooke@resumeedge.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-19', 'assets/images/profile_pics/cookey.jpg', 0, 0, 'no', ',', NULL),
  (87, 'Jazz', 'Greene', 'jazz_greene', 'greeneyes@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',', '');
