<?php

	//
	include('includes/header.php');


?>

<div class='main_column column'>

	<h4>Close Account</h4>

	Are you sure you want to close your account?<br/><br/>
	Closing you account will hide your profile and all your activity from other users.<br/><br/>
	You can re-open your account at any time by simply logging in.<br/><br/>

	<form class="" action="close_account.php" method="POST">
			<input type="submit" name="close_account" value="Yes! Close it!">
			<input type="submit" name="cancel" value="No way!">
	</form>

</div>
