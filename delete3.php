<?php
include 'config3.php';

$id = $_GET['Id'];

$sql = "DELETE FROM tblcard3 WHERE Id = $id";
mysqli_query($con, $sql);

header("Location: assets.php");
?>