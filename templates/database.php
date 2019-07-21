<?php
$link = mysqli_connect("localhost", "root", "", "project");

if (mysqli_connect_errno()){
    echo "error with db";
    exit();
}
?>