<?php
  include('connect_database.php');

  $sql = "INSERT INTO likes (likes, user_id, sender_user_id) VALUES ('0', 'spiderman@gmail.com', 'test@gmail.com')";
  $conn->query($sql);
?>

<p>You have liked this person! Back to <a href="../index.php">All profiles</a></p>
<p>Do you want to send a gift too?</p>

<?php
$gifts = $conn->query("SELECT * FROM gift_type");
?>

<form action="gift_spiderman.php" method="post">
    <?php
    foreach ($gifts as $gift) {
    ?>
      <input type="radio" name="gift_type_name" value="<?php echo $gift['name'];?>"><?php echo $gift['name'];
    }
    ?>
    <br>

  <label for="content">Card with the gift</label>
  <input type="text" name="content" placeholder="Write a small card that goes with the gift">

  <input type="submit" name="send_gift" value="Send Gift">
</form>
