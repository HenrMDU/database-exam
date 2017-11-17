<?php
  include('connect_database.php');

  $gift_type_name = $_POST['gift_type_name'];
  $content = $_POST['content'];

  $send_gift = $conn->prepare("INSERT INTO gift (gift_type_name, content, user_id, sender_user_id) VALUES (:gift_type_name, :content, :user_id, :sender_user_id)");

  $send_gift->execute(array(
    ":gift_type_name" => $gift_type_name,
    ":content" => $content,
    ":user_id" => 'wolverine@gmail.com',
    ":sender_user_id" => 'test@gmail.com'));
    ?>

<p>Gift has been sent <a href="../index.php">All profiles</a></p>
