<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Profile</title>
</head>

<body>
<h1>My Profiles</h1>
<p>Back to <a href="index.php">all profiles</a></p>

<?php
  include('process/connect_database.php');

  // USERS
  $users = $conn->query("SELECT name, age, superpower, description, COUNT(likes)
                          FROM user
                          LEFT JOIN likes ON user.email = likes.user_id
                          WHERE email = 'test@gmail.com'");

  // COMMENTS
  $comments = $conn->query("SELECT content, sender_user_id
                          FROM comment
                          LEFT JOIN user ON comment.user_id = user.email
                          WHERE email = 'test@gmail.com'");
  // MESSAGES
  $messages = $conn->query("SELECT content, sender_user_id
                          FROM message
                          LEFT JOIN user ON message.user_id = user.email
                          WHERE email = 'test@gmail.com'");

  // loops
  foreach ($users as $user) {
    ?>
    <h2><?php echo $user['name'];?></h2>
    <p>Age: <?php echo $user['age'];?></p>
    <p>Power: <?php echo $user['superpower'];?></p>
    <p><?php echo $user['description'];?></p>
    <p><?php echo $user['COUNT(likes)'];?></p><br>

    <a href="update_profile.php">Edit profile</a>
    <hr>

    <h2>Comments</h2>
      <?php
      foreach ($comments as $comment) {
      ?>
        <p><strong><?php echo $comment['sender_user_id'];?></strong></p>
        <p><?php echo $comment['content'];?></p><br>
      <?php
      }
      ?>
    <hr>

    <h2>Private Messages</h2>
      <?php
      foreach ($messages as $message) {
      ?>
        <p><strong><?php echo $message['sender_user_id'];?></strong></p>
        <p><?php echo $message['content'];?></p><br>
      <?php
    }
  }
?>
</body>
</html>
