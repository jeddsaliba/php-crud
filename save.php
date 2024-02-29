<?php
require './db.php';

$name = $_POST['name'];
$description = $_POST['description'];
$created_by = 1;

if ($name && $description) {
    $query = "INSERT INTO projects (name, description, created_by) VALUES ('$name', '$description', $created_by);";
    $mysql->query($query);
    if ($mysql->insert_id) {
        $id = $mysql->insert_id;
        $query = "SELECT * FROM projects WHERE id = $id";
        $exec = $mysql->query($query);
        header('Content-type: application/json');
        echo json_encode($exec->fetch_assoc());
    } 
} else {
    die("failed");
}
?>