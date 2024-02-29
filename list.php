<?php
require './db.php';

$query = "SELECT * FROM projects;";

$exec = $mysql->query($query);
if ($mysql->affected_rows) {
    header('Content-type: application/json');
    echo json_encode($exec->fetch_all(MYSQLI_ASSOC));
} else {
    die("no projects found");
}
?>