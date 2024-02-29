<?php
    $server = 'localhost';
    $username = "root";
    $password = 'wordpass';
    $database = 'crud';

    $mysql = new mysqli($server, $username, $password, $database);

    if ($mysql->connect_error) {
        die;
    }
?>

