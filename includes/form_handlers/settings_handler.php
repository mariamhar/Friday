<?php

  // update_details
  if(isset($_POST['update_details'])) {

    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];

    $email_check = mysqli_query($con, "SELECT * FROM users WHERE email = '$email'");

    $row = mysqli_fetch_array($email_check);

    $matched_user = $row['username'];

    if($matched_user == "" || $matched_user == $userLoggedIn) {

      $message = "Details updated!<br/><br/>";

      $query = mysqli_query($con, "UPDATE users SET first_name = '$first_name', last_name = '$last_name', email = '$email' WHERE username = '$userLoggedIn'");

    }

    else {
      $message = "That email is already in use!<br/>";
    }

  }

  else {
    $message = "";
  }

  // update_password
  if(isset($_POST['update_password'])) {

    $old_password = strip_tags($_POST['old_password']);
    $new_password_1 = strip_tags($_POST['new_password_1']);
    $new_password_2 = strip_tags($_POST['new_password_2']);

    $password_query = mysqli_query($con, "SELECT password FROM users WHERE username = '$userLoggedIn'");
    $row = mysqli_fetch_array($password_query);
    $db_password = $row['password'];

    if(md5($old_password) == $db_password) {

      if($new_password_1 == $new_password_2) {

        if(strlen($new_password_1) <= 4) {

          $password_message = "Sorry, your password must be greater than 4 characters.<br/><br/>";
        }

        else {

          $new_password_md5 = md5($new_password_1);
          $password_query = mysqli_query($con, "UPDATE users SET password = '$new_password_md5' WHERE username = '$userLoggedIn'");
          $password_message = "Password has been changed.<br/><br/>";

        }

      }

      else {

        $password_message = "Your two new passwords need to match.<br/><br/>";

      }

    }

    else {

      $password_message = "The old password is incorrect.<br/><br/>";

    }

    //d41e98d1eafa6d6011d3a70f1a5b92f0
    //47b7bfb65fa83ac9a71dcb0f6296bb6e

  }

  else {
    $password_message = "";
  }

  // Close Account
  if(isset($_POST['close_account'])) {
    header('Location: close_account.php');
  }

?>
