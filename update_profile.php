<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Update Profile</title>
</head>

<body>
<h1>Update Profiles</h1>
<p>Back to <a href="profile.php">profile</a></p>

<form action="process/update.php" method="post">
  <label for="name">Name: </label>
  <input type="text" name="name" placeholder="new name"><br>

  <label for="age">Age: </label>
  <input type="text" name="age" placeholder="age"><br>

  <label for="superpower">Super Power: </label>
  <input type="text" name="superpower" placeholder="superpower"><br>

  <label for="description">Description</label>
  <textarea type="text" name="description" placeholder="new description"></textarea><br>

  <input type="submit" name="submit" value="Update">
  <a href="profile.php">Cancel</a>
</form>

</body>
</html>
