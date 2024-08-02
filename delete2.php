<?php
include 'config2.php';

$id = $_GET['Id'];

$sql = "DELETE FROM tblcard2 WHERE Id = $id";
mysqli_query($con, $sql);

header("Location: fluids.php");
?>