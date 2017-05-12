<?php

$con = mysqli_connect("localhost","friday","B1@thering!","friday"); // Connection variable

if(mysqli_connect_errno()) {
  echo "Failed to connect: " . mysqli_connect_errno();
}

	define('MYSQL_QUERY', 'SELECT term_text FROM php_auto_hashtag');

	function at_get_terms() {
		//retrieve terms from database
		//returns Boolean false on failure, array of terms on success

		$out = array();

		while($row = mysqli_fetch_array($rs)) {
			$out[] = $row[0];
		}
		return $out;
	}

	function autotag($input, $terms) {
		//tags $input with $terms
		//returns false on error, tagged string on success

		if(strlen(trim($input)) < 1) {
			trigger_error('function autotag: string to be tagged is empty', E_USER_WARNING);
			return false;
		}
		if(!is_array($terms)) {
			trigger_error('function autotag: terms is not an array', E_USER_WARNING);
			return false;
		}
		$tmp = array();
		foreach($terms as $term){
			//matches will be terms exactly as in database,
			//followed by space or newline
			$tmp[] = "/($term)(\s|$)/i";
		}
		$out = preg_replace($tmp, '#$0', $input);
		return $out;
	}
	$terms = at_get_terms();
	$content = "Enter text in the textarea below, then click Submit. The text will be automatically tagged with terms contained in the database. ";
	if(isset($_POST['submit'])) {
		$content = "<strong>Hashtagged string:</strong> " . autotag(htmlspecialchars($_POST['term_text']), $terms);
	}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Automatically Hash Tagging Text Via PHP And MySQL</title>
		<link rel="stylesheet" type="text/css" href="../demo.css">
	</head>
	<body>
		<h1>
			Automatically Hash Tagging Text Via PHP And MySQL<br />
		</h1>
		<p class="notice"><?php echo $content; ?></p>
		<form id="tform" name="tform" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
			<?php echo $_POST['term_text']; ?><textarea id="term_text" name="term_text" cols="50" rows="3"></textarea>
			<br />
			<input type="submit" name="submit" id="submit" value="Submit" />
		</form>

		<h3>Terms in the database</h3>
		<table cellspacing="0">
		<?php
			for($i = 0; $i < count($terms); $i++) {
				if($i % 6 == 0) {
					echo "\t<tr>\n";
				}
				echo "\t\t<td>$terms[$i]</td>\n";
				if($i % 3 == 5) {
					echo "\t</tr>\n";
				}
			}
		?>
		</table>
		<p><a href="http://www.dougv.com/2011/04/11/automatically-hash-tagging-text-with-php-and-mysql/">Automatically Hash Tagging Text Via PHP And MySQL</a></p>
	</body>
</html>
