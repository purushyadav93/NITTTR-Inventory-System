<?php
include 'config.php';

if(isset($_POST['Id'])) {
    $ID = $_POST['Id'];
    $column = key(array_slice($_POST, 1, 1, true)); // Get the column name
    $value = $_POST[$column]; // Get the value
    
    // Validate column and value before executing the query
    $columns = ['Price', 'Unit', 'Quantity']; // List of allowed columns
    if (in_array($column, $columns)) {
        $stmt = $con->prepare("UPDATE tblcard SET $column=? WHERE Id=?");
        $stmt->bind_param('si', $value, $ID);
        $stmt->execute();
    }
}
?>
