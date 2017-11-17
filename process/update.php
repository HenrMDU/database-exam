<?php
  include('connect_database.php');

  // UPDATE PROFILE
  $name = $_POST['name'];
  $age = $_POST['age'];
  $superpower = $_POST['superpower'];
  $description = $_POST['description'];

  $update = $conn->prepare("UPDATE user SET name = :name, age = :age, superpower = :superpower, description = :description WHERE email = 'test@gmail.com'");
  $update->bindParam(':name', $name);
  $update->bindParam(':age', $age);
  $update->bindParam(':superpower', $superpower);
  $update->bindParam(':description', $description);

  $update->execute();
?>

<p>Your profile has been updated! Back to <a href="../profile.php">profile</a>
</p>
