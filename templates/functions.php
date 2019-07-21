<?php

function get_reserves (){
    $link = mysqli_connect("localhost", "root", "", "project");
    
    $sql = "SELECT * FROM `reserves`";
    $result = mysqli_query($link, $sql);
    $reserves = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $reserves;
}



function get_solutions ($category){     
    $link = mysqli_connect("localhost", "root", "", "project");
    if (($category) == 0){
        $sql = "SELECT * FROM `solutions` ";
    }else $sql = "SELECT * FROM `solutions` WHERE ((category)=$category)";
    $result = mysqli_query($link, $sql);
    $solutions = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $solutions;
}
function get_solve ($solve){     
    $link = mysqli_connect("localhost", "root", "", "project");
    $sql = "SELECT * FROM `solutions` WHERE ((id)=$solve)";
    $result = mysqli_query($link, $sql);
    $solves = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $solves;
}


?>