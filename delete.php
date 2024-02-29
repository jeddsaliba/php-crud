<?php
require './db.php';

$formData = [];
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $formData = file_get_contents("php://input");
    $formData = json_decode($formData);
    $query = "SELECT * FROM projects WHERE id = $formData->id";
    $mysql->query($query);
    if ($mysql->affected_rows) {
        $query = "DELETE FROM projects WHERE id = $formData->id;";
        $mysql->query($query);
        if (!$mysql->error) {
            die("deleted");
        }
        die("error deleting");
    } else {
        die("could not find project");
    }
}
?>