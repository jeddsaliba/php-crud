<?php
require './db.php';

$formData = [];
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    $formData = file_get_contents("php://input");
    $formData = json_decode($formData);
    if ($formData->id && $formData->name && $formData->description) {
        $query = "SELECT * FROM projects where id = $formData->id;";
        $exec = $mysql->query($query);
        if (!$mysql->affected_rows) {
            die("no project found");
        }
        $query = "UPDATE projects SET name = '$formData->name', description = '$formData->description' WHERE id = $formData->id;";
        $mysql->query($query);
        if (!$mysql->error) {
            $query = "SELECT * FROM projects WHERE id = $formData->id";
            $exec = $mysql->query($query);
            header('Content-type: application/json');
            echo json_encode($exec->fetch_assoc());
        } else {
            die("error updating");
        }
    } else {
        die("failed");
    }
}
?>