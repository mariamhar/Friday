<?php

  class Notification {

    private $user_obj;
    private $con;

    public function __construct($con, $user) {
      $this->con = $con;
      $this->user_obj = new User($con, $user);
    }

    public function getUnreadNumber() {
      $userLoggedIn = $this->user_obj->getUsername();
      $query = mysqli_query($this->con, "SELECT * FROM notifications WHERE viewed = 'no' AND user_to='$userLoggedIn'");
      return mysqli_num_rows($query);
    }

    public function getNotifications($data, $limit) {

      $page = $data['page'];
      $userLoggedIn = $this->user_obj->getUsername();
      $return_string = "";

      if($page == 1) {
        $start = 0;
      }
      else {
        $start = ($page - 1) * $limit;
      }

      $set_viewed_query = mysqli_query($this->con, "UPDATE notifications SET viewed = 'yes' WHERE user_to = '$userLoggedIn'");

      $query = mysqli_query($this->con, "SELECT * FROM notifications WHERE user_to = '$userLoggedIn' ORDER BY id DESC");

      if(mysqli_num_rows($query) == 0) {
        echo "You have no notifications!";
        return;
      }

      $num_iterations = 0; // Number of notifications checked
      $count = 1; // Number of notifications posted

      while($row = mysqli_fetch_array($query)) {

        if($num_iterations++ < $start) {
          continue;
        }

        if($count > $limit) {
          break;
        }
        else {
          $count++;
        }

        $user_from = $row['user_from'];

        $query = mysqli_query($this->con, "SELECT * FROM users WHERE username = '$user_from'");

        $user_data = mysqli_fetch_array($query);

        $is_unread_query = mysqli_query($this->con, "SELECT opened from messages WHERE user_to = '$userLoggedIn' AND user_from = '$username' ORDER BY id DESC");
        $row = mysqli_fetch_array($is_unread_query);

        $style = ($row['opened'] == 'no') ? "background-color:#ddedff;" : "";

        $user_found_obj = new User($this->con, $username);
        $latest_message_details = $this->getLatestMessage($userLoggedIn, $username);

        $dots = (strlen($latest_message_details[1]) >= 12) ? "..." : "";
        $split = str_split($latest_message_details[1], 12);
        $split = $split[0] . $dots;

        $return_string .= "<a href='messages.php?u=$username'>";
        $return_string .= "<div class='user_found_messages' style='" . $style . "'>";
        $return_string .= "<img src='". $user_found_obj->getProfilePic() . "'>";
        $return_string .= $user_found_obj->getFirstAndLastName();
        $return_string .= "<span class='timestamp_smaller' id='grey'> ";
        $return_string .= $latest_message_details[2];
        $return_string .= "</span>";
        $return_string .= "<p id='grey'>" . $latest_message_details[0] . $split . "</p>";
        $return_string .= "</div>";
        $return_string .= "</a>";
      }

      // If posts were loaded
      if($count > $limit) {
        $return_string .= "<input type='hidden' class='nextPageDropdownData' value='" . ($page + 1) . "'>";
        $return_string .= "<input type='hidden' class='noMoreDropdownData' value='false'>";
      }
      else {
        $return_string .= "<input type='hidden' class='noMoreDropdownData' value='true'>";
        $return_string .= "<p style='text-align: center'>No more messages to load!</p>";
      }

      return $return_string;

    }

    public function insertNotification($post_id, $user_to, $type) {
      $userLoggedIn = $this->user_obj->getUsername();
      $userLoggedInName = $this->user_obj->getFirstAndLastName();

      $date_time = date("Y-m-d H:i:s");

      switch ($type) {
        case 'comment':
          $message = $userLoggedInName . " commented on your post";
          break;

        case 'like':
          $message = $userLoggedInName . " liked your post";
          break;

        case 'profile_post':
          $message = $userLoggedInName . " posted on your profile";
          break;

        case 'comment_non_owner':
          $message = $userLoggedInName . " commented on a post you commented on";
          break;

        case 'profile_comment':
          $message = $userLoggedInName . " commented on your profile post";
          break;

      }

      $link = "post.php?id=" . $post_id;

      $insert_query = mysqli_query($this->con, "INSERT INTO notifications VALUES (NULL,'$user_to','$userLoggedIn', '$message', '$link', '$date_time', 'no' ,'no')");

    }

  }

?>
