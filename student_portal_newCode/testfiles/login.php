<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
      <div class="row">
        <h2 class="text-center text-danger">Login Form</h2>
      </div>
  <form action="login.php" method="post">
      <?php include('errors.php'); ?>
    <div class="form-group">
      <label>Username*</label>
    
        <input type="text" class="form-control"autofocus="true"  required="true" placeholder="Enter Your Name" name="username">
    </div>
    <div class="form-group">
      <label>Password*</label>
                
        <input type="password" class="form-control" required="true"  placeholder="Enter Your Password" name="password">
    
    </div>
     </form>
   </div>
    <input type="submit" class="col-sm-4 col-sm-offset-4 btn btn-success" value="Login" name="login_user">
    <br><br>
    <p>
      Not yet a member? <a href="register.php">Sign up</a>
    </p>
        
</body>
</html>