<?php

    //
    include("includes/header.php");

    //
    // include("includes/settings.php");

?>

<div class="main_column column">

  <h4>Account Settings</h4>

  <?php
    echo "<img src='" . $user['profile_pic'] . "' id='small_profile_pics'>";
  ?>

  <br/>

  <a href='upload.php'>Upload a new profile picture</a><br/><br/><br/>


</div>
