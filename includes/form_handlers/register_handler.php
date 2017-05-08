<?php

// Declaring variables to prevent ErrorException
$fname = ""; // first name
$lname = ""; // last name
$em = ""; // email
$em2 = ""; // confirm email
$password = ""; // password
$password2 = ""; // confirm password
$date = ""; // Sign up here
$error_array = array(); // Holds error messages

if (isset($_POST['register_button'])){
  // Registration form

  // First name
  $fname = strip_tags($_POST['reg_fname']); // Remove HTML tags
  $fname = str_replace('', '', $fname); // Remove spaces
  // $fname = ucfirst(strtolower($fname)); // Uppercase first letter
  $_SESSION['reg_fname'] = $fname; // Stores first name into session variable

  // Last name
  $lname = strip_tags($_POST['reg_lname']); // Remove HTML tags
  $lname = str_replace('', '', $lname); // Remove spaces
  // $lname = ucfirst(strtolower($lname)); // Uppercase first letter
  $_SESSION['reg_lname'] = $lname; // Stores last name into session variable


  // Email
  $em = strip_tags($_POST['reg_email']); // Remove HTML tags
  $em = str_replace('', '', $em); // Remove spaces
  // $em = ucfirst(strtolower($em)); // Uppercase first letter
  $_SESSION['reg_email'] = $em; // Stores email into session variable


  // Email 2
  $em2 = strip_tags($_POST['reg_email2']); // Remove HTML tags
  $em2 = str_replace('', '', $em2); // Remove spaces
  // $em2 = ucfirst(strtolower($em2)); // Uppercase first letter
  $_SESSION['reg_email2'] = $em2; // Stores email2 into session variable


  // Password
  $password = strip_tags($_POST['reg_password']); // Remove HTML tags
  $password2 = strip_tags($_POST['reg_password2']); // Remove HTML tags

  $date = date("Y-m-d"); // Current date

  if($em == $em2) {
    // Check if email is in valid format
    if(filter_var($em, FILTER_VALIDATE_EMAIL)) {

      $em = filter_var($em, FILTER_VALIDATE_EMAIL);

      // Check if email is already exists
      $e_check = mysqli_query($con,"SELECT email FROM users WHERE email = '$em'");

      // Count the number of rows returned
      $num_rows = mysqli_num_rows($e_check);

      if($num_rows > 0) {
        array_push($error_array, "Email is already in use<br>");
        // echo $num_rows;
      }

    } else {
      array_push($error_array, "Invalid email format<br>");
    }
  } else {
    array_push($error_array, "Emails don't match<br>");
  }

  // First name check
  if(strlen($fname) > 25 || strlen($fname) < 2) {
    array_push($error_array, "Your first name must be between 2 and 25 characters<br>");
  }

  // Last name check
  if(strlen($lname) > 25 || strlen($lname) < 2) {
    array_push($error_array, "Your last name must be between 2 and 25 characters<br>");
  }

  // Password match
  if($password != $password2) {
    array_push($error_array, "Your passwords do not match<br>");
  } else {
    if(preg_match('/[^A-Za-z0-9]/', $password)) {
      array_push($error_array, "Your password can only contain English characters or numbers<br>");
    }
  }

  //
  if (strlen($password > 30 || strlen($password) < 5)) {
    array_push($error_array, "Your password must be between 5 and 30 characters<br>");
  }

  // SUCCESS, NOW YOU'RE READY TO SUBMIT!
  if(empty($error_array)) {
    $password = md5($password); // Encrypts password before sending to database

    //generate username by concatenating $fname and $lname
    $username = strtolower($fname . "_" . $lname);
    $check_username_query = mysqli_query($con,"SELECT username FROM users WHERE username = '$username'");
    // echo $password;

    $i = 0;
    // if username exists add number to username
    while(mysqli_num_rows($check_username_query) != 0) {
      $i++; // add 1 to i
      $username = $username . "_" . $i;
      $check_username_query = mysqli_query($con,"SELECT username FROM users WHERE username = '$username'");
    }

    // Profile picture assignment
    $rand = rand(1, 2);
    //echo $rand; // DELETE ME!!!


    if($rand == 1) {
      $profile_pic = "assets/images/profile_pics/defaults/head_deep_blue.png";
      //echo $rand;
      //echo $profile_pic;
    } else if($rand == 2) {
      $profile_pic = "assets/images/profile_pics/defaults/head_emerald.png";
      //echo $rand;
      //echo $profile_pic;
    }

    // Update database with new user record
    $query = mysqli_query($con, "INSERT INTO users VALUES (NULL, '$fname', '$lname', '$username', '$em', '$password', '$date', '$profile_pic', '0', '0', 'no', ',')");
    // echo $query;

    array_push($error_array,"<span style='color:#14c800;'>You're all set! Go ahead and <a href='login.php'>login</a>!</span><br>");

    // Clear session variables
    $_SESSION['reg_fname'] = "";
    $_SESSION['reg_lname'] = "";
    $_SESSION['reg_email'] = "";
    $_SESSION['reg_email2'] = "";

  }

}

?>
