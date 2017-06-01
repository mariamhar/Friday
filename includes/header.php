<?php
	require 'config/config.php';
	include("includes/classes/User.php");
	include("includes/classes/Post.php");
	include("includes/classes/Message.php");

if (isset($_SESSION['username'])) {
	$userLoggedIn = $_SESSION['username'];
	$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
	$user = mysqli_fetch_array($user_details_query);
}
else {
	header("Location: register.php");
}

?>

<html>
<head>
	<title>Friday!</title>

	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/friday.js"></script>
	<script src="assets/js/jquery.Jcrop.js"></script>
	<script src="assets/js/jcrop_bits.js"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="assets/css/jquery.Jcrop.css" type="text/css" />
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>
<body>

	<div class="top_bar">

		<div class="logo">
			<a href="index.php">Friday!</a>
		</div>

		<nav>

			<?php
				// unread messages
				$messages = new Message($con, $userLoggedIn);
				$num_messages = $messages->getUnreadNumber();
			 ?>

			<a href="<?php echo $userLoggedIn; ?>">
				<?php echo $user['first_name']; ?>
			</a>
			<a href="index.php">
				<i class="fa fa-home fa-lg"></i>
			</a>
			<a href="javascript:void(0);" onClick="getDropdownData('<?php echo $userLoggedIn; ?>', 'message')">
				<i class="fa fa-envelope fa-lg"></i>
				<?php

					//
					if ($num_messages > 0) {
						echo '<span class="notification_badge" id="unread_message">' . $num_messages . '</span>';
					}

				?>
			</a>
			<!--//
			<a href="#">
				<i class="fa fa-bell fa-lg"></i>
			</a>
			//-->
			<a href="requests.php">
				<i class="fa fa-users fa-lg"></i>
			</a>
			<a href="upload.php">
				<i class="fa fa-upload fa-lg"></i>
			</a>
			<!--//
			<a href="#">
				<i class="fa fa-cog fa-lg"></i>
			</a>
			//-->
			<a href="includes/handlers/logout.php">
				<i class="fa fa-sign-out fa-lg"></i>
			</a>



		</nav>

		<div class="dropdown_data_window" style="height:0px; border:none;"></div>
		<input type="hidden" id="dropdown_data_type" value="">

	</div>

	<script>

		var userLoggedIn = '<?php echo $userLoggedIn; ?>';

		$(document).ready(function() {

			$('.dropdown_data_window').scroll(function() {
				var inner_height = $('.dropdown_data_window').innerHeight(); //Div containing data
				var scroll_top = $('.dropdown_data_window').scrollTop();
				var page = $('.dropdown_data_window').find('.nextPageDropdownData').val();
				var noMoreData = $('.dropdown_data_window').find('.noMoreDropDownData').val();

				if ((scroll_top + innerHeight >= $('.dropdown_data_window')[0].scrollHeight) && noMoreData == 'false') {

					var pageName; // Holds name of page to send ajax request to
					var type = $('#dropdown_data_type').val();

					if(type == 'notification') {
						pageName = "ajax_load_notifications.php";
					}
					else if(type = 'message') {
						pageName = "ajax_load_messages.php";
					}

					var ajaxReq = $.ajax({
						url: "includes/handlers/" + pageName,
						type: "POST",
						data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
						cache:false,

						success: function(response) {
							$('.dropdown_data_window').find('.nextPageDropdownData').remove(); //Removes current .nextpage
							$('.dropdown_data_window').find('.noMoreDropDownData').remove(); //Removes current .nextpage

							$('.dropdown_data_window').append(response);
						}
					});
				} //End if
				return false;
			}); //End (window).scroll(function())
		});
	</script>

	<div class="wrapper">
