<?php

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $mysqli = require __DIR__ . "/database.php";

    $sql = sprintf("SELECT * FROM user
                    WHERE email = '%s'",
                    $mysqli->real_escape_string($_POST["email"]));
    
    $result = $mysqli->query($sql);

    $user = $result->fetch_assoc();

    if ($user && $user["account_activation_hash"] === null) {

        if (password_verify($_POST["password"], $user["password_hash"])) {
            
            session_start();

            session_regenerate_id();

            $_SESSION["user_id"] = $user["id"];

            header("Location: home.php");
            exit;
        }
    }

    $is_invalid = true;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NITTTR</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
     <header>
        <h2 class="logo"><br><img src="new.png" height="160" width="600"></h2>
        <nav class="navigation">
            <a href="about.html">About</a>
            <a href="contactus.html">Contact</a>
            <button id="myButton" class="btnLogin-popup">Signup</button>
        </nav>
     </header>

     <div class="wrapper">
        <div class="form-box login">
            <h2>Login</h2>

            <?php if ($is_invalid): ?>
                <em>Invalid login</em>
            <?php endif; ?>        

            <form method="post" novalidate>
                <div class="input-box">
                    <span class="icon"><ion-icon name="mail"></ion-icon></span>
                    <input type="email" id="email" name="email"
                        value="<?= htmlspecialchars($_POST["email"] ?? "") ?>">

                    <label for="email">Email</label>
                </div>
                <div class="input-box">
                    <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                    <input type="password" id="password" name="password">
                    <label for="password">Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox">Remember me</label>
                    <a href="forgot-password.php">Forgot Password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="login-register"><p>Don't have an account? <a href="register.html" class="register-link">Register</a></p></div>

                </form>
            </div>
     </div>
     <script type="text/javascript">
        document.getElementById("myButton").onclick = function () {
            location.href = "register.html";
        };
     </script>
</body>
</html>