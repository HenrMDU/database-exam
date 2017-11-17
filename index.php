<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>All Profiles</title>
</head>

<body>
<h1>All Profiles</h1>
<p>View <a href="profile.php">PROFILE</a></p>

<hr>

<?php
  include('process/connect_database.php');

  // USERS
  $users = $conn->query("SELECT name, age, superpower, description, COUNT(likes)
                          FROM user
                          LEFT JOIN likes ON user.email = likes.user_id
                          WHERE NOT email = 'test@gmail.com'
                          GROUP BY name");

  // Loops
  foreach ($users as $user) {
		?>
			<h2><?php echo $user['name'];?></h2>
      <p>Age: <?php echo $user['age'];?></p>
      <p>Power: <?php echo $user['superpower'];?></p>
      <p><?php echo $user['description'];?></p>
      <p>Likes: <?php echo $user['COUNT(likes)'];?></p>
      <a href="users/<?php echo $user['name'];?>">View <?php echo $user['name'];?></a>
      <hr>
		<?php
	}
?>
</body>
</html>
