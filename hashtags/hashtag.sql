CREATE TABLE IF NOT EXISTS `php_auto_hashtag` (
  `term_text` varchar(255) NOT NULL,
  UNIQUE KEY `term_text` (`term_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `php_auto_hashtag` (`term_text`) VALUES
('adsense'),('amazon'),('android'),('aol'),('api'),('apple'),
('bing'),('canvas'),('cbs'),('chrome'),('cloud'),('comcast'),
('darpa'),('eff'),('facebook'),('firefox'),('google'),
('hacker'),('hackers'),('hacking'),('html'),('html5'),
('http'),('https'),('ie9'),('ietf'),('intel'),('internet'),
('ios'),('ipad'),('ipv6'),('javascript'),('kinect'),('malware'),
('microsoft'),('mozilla'),('mvc'),('nokia'),('pentagon'),('php'),
('ps3'),('rackspace'),('safari'),('silverlight'),('sony'),
('stuxnet'),('symbian'),('tablets'),('twitter'),('vb'),
('verizon'),('virus'),('windows'),('xml'),('youtube');
