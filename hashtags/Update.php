if(isset($_POST['msg']) && $_POST['msg'] != '')
  {
    require_once 'config.php';
    require_once 'functions.php';
    $message = strip_tags(trim($_POST['msg']));
    //get hashtag from message
    $hashtag = gethashtags($message);

    //insert into messages table
  	 $query = mysql_query("INSERT INTO `messages` (`message`, `hashtag`) VALUES ('$message', '$hashtag')") or die(mysql_error());
  	 $ins_id = mysql_insert_id();
?>

<div class="msg_body" id="<?php echo $ins_id;?>">
  <div class="msg_img">
    <img src="http://0.gravatar.com/avatar/82620dd66b22b34a915303b93b92929b" />
  </div>
<div class="msg_text">
<?php echo convert_links($message); ?>
  <div class="time">5 seconds ago</div>
  </div>
</div>

<?php
  mysql_close();
}
