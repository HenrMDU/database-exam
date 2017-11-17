<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Profile</title>
</head>

<body>
<h1>A Profile</h1>
<p>Back to <a href="../index.php">all profiles</a></p>

<?php
  include('../process/connect_database.php');

  // USERS
  $users = $conn->query("SELECT name, age, superpower, description, COUNT(likes)
                          FROM user
                          LEFT JOIN likes ON user.email = likes.user_id
                          WHERE email = 'spiderman@gmail.com'");

  // COMMENTS
  $comments = $conn->query("SELECT content, sender_user_id
                          FROM comment
                          LEFT JOIN user ON comment.user_id = user.email
                          WHERE email = 'spiderman@gmail.com'");

  // loops
  foreach ($users as $user) {
    ?>
    <h2><?php echo $user['name'];?></h2>
    <p>Age: <?php echo $user['age'];?></p>
    <p>Power: <?php echo $user['superpower'];?></p>
    <p><?php echo $user['description'];?></p>
    <p>Likes: <?php echo $user['COUNT(likes)'];?></p>

    <form action="../process/like_spiderman.php" method="post">
      <input type="submit" name="like" value="LIKE">
    </form>

    <form action="../process/new_message_spiderman.php" method="post">
      <label for="new_message">New Message</label>
      <textarea type="text" name="new_message" placeholder="Write a new private message"></textarea><br>

      <input type="submit" name="submit" value="Post Message">
    </form>

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

      <form action="../process/new_comment_spiderman.php" method="post">
        <label for="new_comment">New Comment</label>
        <textarea type="text" name="new_comment" placeholder="Write a new comment"></textarea><br>

        <input type="submit" name="submit" value="Post Comment">
      </form>
      <?php
  }
?>
</body>
</html>
