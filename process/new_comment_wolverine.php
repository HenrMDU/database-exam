<?php
  include('connect_database.php');

  $new_comment = $_POST['new_comment'];

  $add_comment = $conn->prepare("INSERT INTO comment (content, user_id, sender_user_id) VALUES (:new_comment, :user_id, :sender_user_id)");

  $add_comment->execute(array(
    ":new_comment" => $new_comment,
    ":user_id" => 'wolverine@gmail.com',
    ":sender_user_id" => 'test@gmail.com'));
    ?>

<p>Comment has been added. Back to <a href="../index.php">profile</a>
</p>
