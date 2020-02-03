<?php
session_start();
$teacheremail=$_SESSION['teacher_email'];
include('db_connection.php');
if (isset($_POST['create'])) {
  $classname= mysqli_real_escape_string($conn,$_POST['classname']);
    $class_key= mysqli_real_escape_string($conn,$_POST['classkey']);
  // $random=(rand(100000,999999));

  // echo $random;
  // echo $classname;

  // echo $teacheremail;
 $query="INSERT INTO `classes`(`class_key`, `teacher_email`, `class_name`) VALUES ('$class_key','$teacheremail','$classname')";
 $result=mysqli_query($conn,$query);
 if ($result) {
header('location: teacherhome.php');
 }
 else {
   echo "unsuccess";
 }
  
}
mysqli_close($conn);
 ?>
<?php 



 ?>