<?php

if (empty($_POST["username"])) {
    die("Username is required");
}

if ( ! filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    die("Valid email is required");
}

if (strlen($_POST["password"]) < 8) {
    die("Password must be at least 8 characters");
}

if ( ! preg_match("/[a-z]/i", $_POST["password"])) {
    die("Password must contain at least one letter");
}

if ( ! preg_match("/[0-9]/", $_POST["password"])) {
    die("Password must contain at least one letter");
}

if ($_POST["password"] !== $_POST["confirm_password"]) {
    die("Password must match");
}

$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$activation_token = bin2hex(random_bytes(16));

$activation_token_hash = hash("sha256" , $activation_token);

$mysqli = require __DIR__ . "/database.php";

$sql = "INSERT INTO user (username, email, password_hash, account_activation_hash)
       VALUES (?,?,?,?)";

$stmt = $mysqli->stmt_init();

if ( ! $stmt->prepare($sql)) {
    die("SQL error:" . $mysqli->error);
}

$stmt->bind_param("ssss",
                   $_POST["username"],
                   $_POST["email"],
                   $password_hash,
                   $activation_token_hash);

if ($stmt->execute()) {
    
    $mail = require __DIR__ . "/mailer.php";

    $mail->setFrom('nitttrchennai7@gmail.com', 'noreply');
    $mail->addAddress($_POST["email"]); 
    $mail->Subject = "Account Activation";
    $mail->Body = <<<END

    Click <a href="http://localhost/NITTTR/activate-account.php?token=$activation_token">here</a> to activate your account.

    END;

    try {

        $mail->send();

    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        exit;
    }
    
    
    header("Location: register-success.html");
    exit;

} else {

    if ($mysqli->errno === 1062) {
        die("Email already taken");   
    } else {
        die($mysqli->error . " " . $mysqli->errno);
    }
}