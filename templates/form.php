<?php
  $host = 'localhost';
  $database = 'project';
  $user = 'root';
  $pass = '';
$name = addslashes(trim ( $_POST['name'] ));
$email = addslashes(trim ( $_POST['email'] ));
$comment = addslashes(trim ( $_POST['comment'] ));
if (!$name || !$email || !$comment )
{ 
echo "Вы не ввели все необходимые данные. Вернитесь и повторите попытку."; 
exit; 
} 

$link = mysqli_connect("$host","$user","$pass","$database") or die ("MySQL is not available");

$query = "INSERT INTO form VALUES ('$name', '$email', '$comment')";
$result = mysqli_query ($link, $query);
echo '<meta http-equiv="refresh" content="0; url=http://localhost/project-master/index.html" />';
mysqli_close ( $link );
?>