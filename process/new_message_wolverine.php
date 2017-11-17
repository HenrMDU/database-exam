<?php
  include('connect_database.php');

  $new_message = $_POST['new_message'];

  $add_message = $conn->prepare("INSERT INTO message (content, user_id, sender_user_id) VALUES (:new_message, :user_id, :sender_user_id)");

  $add_message->execute(array(
    ":new_message" => $new_message,
    ":user_id" => 'wolverine@gmail.com',
    ":sender_user_id" => 'test@gmail.com'));
    ?>

<p>The message has been sent! Back to <a href="../index.php">profile</a>
</p>
