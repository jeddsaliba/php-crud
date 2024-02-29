<?php
require './db.php';

$id = $_GET['id'];
if ($id) {
    $query = "SELECT * FROM projects where id = $id;";
    $exec = $mysql->query($query);
    if ($mysql->affected_rows) {
        header('Content-type: application/json');
        echo json_encode($exec->fetch_assoc());
    } else {
        die("no project found");
    }
} else {
    die("no data found");
}
?>