<?php
include 'config.php';

$id = $_GET['Id'];

$sql = "DELETE FROM tblcard WHERE Id = $id";
mysqli_query($con, $sql);

header("Location: edible.php");
?>