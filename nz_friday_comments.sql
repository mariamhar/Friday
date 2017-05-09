SELECT * FROM comments;

SELECT * FROM comments;
CREATE TABLE post_comments (
	id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of post comment',
	body TEXT COMMENT 'body of post comment',
	posted_by VARCHAR(60) COMMENT 'added by this user',
	posted_to VARCHAR(60) COMMENT 'posted to this specific user if any',
	date_added DATETIME COMMENT 'date of post',
	removed VARCHAR(3) COMMENT 'user account active',
	post_id INT COMMENT 'is post deleted'
);

SELECT * FROM comments;
SELECT * FROM comments WHERE post_id = 100110;
SELECT * FROM comments WHERE post_id = @post_id ORDER BY date_added DESC;

SELECT @start := 1, @finish := 10;


SET @post_body := NOW();
SET @userLoggedIn := 'al_nolan';
SET @posted_to := 'al_nolan';
SET @date_time_now := NOW();
SET @post_id := 100110;
INSERT INTO comments VALUES (NULL, @post_body, @userLoggedIn, @posted_to, @date_time_now, 'no', @post_id);
INSERT INTO comments VALUES (NULL, @post_body, @userLoggedIn, @posted_to, @date_time_now, 'no', @post_id);
