-- likes --

CREATE TABLE likes (
	id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of like',
	username VARCHAR(60) COMMENT 'username of user posting',
	post_id INT COMMENT 'id of post'
);
