<?php

  //
  require_once 'config/config.php';

  //
  if (isset($_SESSION['username'])) {
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con,"SELECT * FROM users WHERE username='$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
  } else {
    header("Location: register.php");
    session_destroy();
  }

?>

<html>
  <head>
    <title>Welcome - Friday by Notearise</title>

    <!--// Javascript //-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>

    <!--// Styles //-->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  </head>

  <!--// Begin header (<?php echo date(DATE_RFC2822) . " on " . basename($_SERVER['PHP_SELF']); ?>) //-->
  <body>

    <div class="top_bar">

      <!--//  //-->
      <div class="logo">
        <a href="index.php">Friday</a>
      </div>

      <!--//  //-->
      <nav>

        <!--//  //-->
        <a href="<?php echo $userLoggedIn; ?>">
          <?php echo $user['first_name']; ?>
        </a>

        <!--//  //-->
        <a href="#">
          <i class="fa fa-envelope fa-lg"></i>
        </a>

        <!--//  //-->
        <a href="#">
          <i class="fa fa-bell-o fa-lg"></i>
        </a>

        <!--//  //-->
        <a href="#">
          <i class="fa fa-users fa-lg"></i>
        </a>

        <!--//  //-->
        <a href="#">
          <i class="fa fa-cog fa-lg"></i>
        </a>

        <!--// Logout //-->
        <a href="includes/handlers/logout.php">
          <i class="fa fa-sign-out fa-lg"></i>
        </a>

      </nav>

    </div>

  <!--// Begin page wrapper (<?php echo date(DATE_RFC2822) . " on " . basename($_SERVER['PHP_SELF']); ?>) //-->
  <div class="wrapper">

  <!--// End Header //-->
