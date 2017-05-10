-- Friend Requests

-- drop
DROP TABLE IF EXISTS friend_requests;

-- create
CREATE TABLE friend_requests (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of request',
  user_to VARCHAR(50) COMMENT 'request recipient',
  user_from VARCHAR(50) COMMENT 'request sender'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


SELECT * FROM friend_requests WHERE user_to = '$user_to' AND user_from = '$user_from';
SELECT * FROM friend_requests;
TRUNCATE friend_requests;