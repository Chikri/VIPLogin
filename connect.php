<?php
$connection = mysqli_connect("sql102.ezyro.com","ezyro_22563180","hackaa44","ezyro_22563180_user");
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'test');
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}
