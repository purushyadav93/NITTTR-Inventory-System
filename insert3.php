<?php
include 'config3.php';

if (isset($_POST['upload'])) {
    $name = $_POST['name'];
    $price = $_POST['price'];
    $unit = $_POST['unit'];
    $quantity = $_POST['quantity'];
    $date = $_POST['date'];
    
    $img_name = $_FILES['image']['name'];
    $img_des = "uploadImage/" . $img_name;
    move_uploaded_file($_FILES['image']['tmp_name'], $img_des);

    // Adjust bind_param to match the data types and number of placeholders
    $stmt = $con->prepare("INSERT INTO tblcard3 (Name, Price, Unit, Quantity, Image, Date) VALUES (?, ?, ?, ?, ?, ?)");
    
    // 'sdfs' reflects string, double, float, string, string respectively
    $stmt->bind_param('sdsdss', $name, $price, $unit, $quantity, $img_des, $date);
    
    // Execute the statement
    $stmt->execute();
    $stmt->close();
    
    header("Location: assets.php");
    exit;
}
?>
