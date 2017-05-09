-- Like & Unlike --

-- $get_likes = mysqli_query($con, "SELECT likes,added_by FROM posts WHERE id='$post_id'");
SELECT likes,added_by FROM posts WHERE id = '100110';
SELECT * FROM posts WHERE id = '100110';
SELECT * FROM posts WHERE id = '100856';
SELECT * FROM likes WHERE post_id = '100856';
SELECT * FROM likes;
SELECT * FROM posts;
UPDATE posts SET likes = 0;
TRUNCATE likes;

-- $user_details_array = mysqli_query($con,"SELECT * FROM users WHERE username = '$user_liked'");
SELECT * FROM users WHERE username = 'al_nolan';

-- $total_likes++;
-- $query = mysqli_query($con, "UPDATE posts SET likes = '$total_likes' WHERE post_id = '$id'");
SELECT * FROM posts WHERE id = '100856';
UPDATE posts SET likes = '12' WHERE id = '100856';

-- $user_likes = mysqli_query($con, "UPDATE users SET num_likes = '$total_user_likes' WHERE username = '$user_liked'");
UPDATE users SET num_likes = '$total_user_likes' WHERE username = '$user_liked'
