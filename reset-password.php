<?php

$token = $_GET["token"];

$token_hash = hash("sha256", $token);

$mysqli = require __DIR__ . "/database.php";

$sql = "SELECT * FROM user
        WHERE reset_token_hash = ?";

$stmt = $mysqli->prepare($sql);

$stmt->bind_param("s", $token_hash);

$stmt->execute();

$result = $stmt->get_result();

$user = $result->fetch_assoc();

if ($user === null) {
    die("token not found");
}

if (strtotime($user["reset_token_expires_at"]) <= time()) {
    die("token has expired");
}

echo "token is valid and hasn't expired"; 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'poppins', sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url(bg.jpeg) no-repeat;
    background-position: center;
    background-size: cover;
}

header {
    position: fixed;
    top: -1%;
    left: 0%;
    height: 18%;
    width: 100%;
    padding: 0px 50px;
    background: #EEEEEE;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 99;
}

.logo {
    font-size: 2em;
    color: #fff;
    user-select: none;
}

.navigation a {
    position: relative;
    font-size: 1.2em;
    color: #151B54;
    text-decoration: none;
    font-weight: 550;
    margin-left: 40px;
}

.navigation a::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: 3px;
    background: #151B54;
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform .5s;
}

.navigation a:hover::after {
    transform-origin: left;
    transform: scaleX(1);
}

.navigation .btnLogin-popup {
    width: 130px;
    height: 50px;
    background: transparent;
    border: 2px solid #151B54;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color:#151B54;
    font-weight: 550;
    margin-left: 40px;
    transition: .5s;
}

.navigation .btnLogin-popup:hover {
    background: #728FCE;
    color: #162938;
}

.wrapper {
    position: absolute;
    top: 38%;
    width: 400px;
    height: 320px;
    bottom: 40%;
    background-color: white;
    border: 2px solid rgba(255,255,255, .5);
    border-radius: 20px;
    backdrop-filter: blur(60px);
    box-shadow: 0 0 30px rgba(0,0,0, .5);
    display: flex;
    justify-content: center;
    align-items: center;
}

.wrapper .form-box {
    width: 100%;
    padding: 40px;
}
.wrapper .icon-close{
    position: absolute;
    top: 0;
    right: 0;
    width: 45px;
    height: 45px;
    background:grey;
    font-size: 2em;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #fff;
    border-bottom-left-radius: 20px;
    cursor: pointer;
    z-index: 1;
    display: flex;
}

.form-box h2 {
    font-size: 2em;
    color:black;
    text-align: center;
}

.input-box {
    position: relative;
    width: 300px;
    height: 50px;
    border-bottom: 2px solid black;
    margin: 30px 0;
}

.input-box label {
    position: absolute;
    top: 30px;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color:black;
    font-weight: 500;
    pointer-events: none;
    transition: .5s;
}
.input-box input:focus~label,
.input-box input:valid~label{
    top: -5px;

}



.input-box input {
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    color:black;
    font-weight: 600;
    padding: 0 35px 0 5px;

}

.input-box .icon {
    position: absolute;
    right: 8px;
    font-size: 1.2em;
    color: black;
    line-height: 57px;
}
.remember-forgot{
    font-size: .9em;
    color: black;
    font-weight: 550;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;
}
.remember-forgot label input{
accent-color: #938162;
margin-right: 3px;
}
.remember-forgot a{
    color: rgb(226, 85, 85);
    text-decoration: none;
}
.remember-forgot align-self: hover{
    text-decoration:underline;

}
.btn{
    width:100%;
    height: 45px;
    background: #162938;
    border: none;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    color:#fff;
    font-weight: 500;



}
.login-register{
    font-size: .9em;
    color: black;
    text-align: center;
    font-weight: 500;
    margin: 25px 0 10px;


}
.login-register p a {
    color:  rgb(226, 85, 85);
    text-decoration: none;
    font-weight:600;

}
.login-register p a:hover{
    text-decoration: underline;
}
    </style>
</head>
<body>
     <header>
        <h2 class="logo"><br><img src="new.png" height="160" width="600"></h2>
        <nav class="navigation">
            <a href="about.html">About</a>
            <a href="contactus.html">Contact</a>
            <button id="myButton" class="btnLogin-popup">Login</button>

        </nav>
     </header>

     <div class="wrapper">
        <div class="form-box login">
            <h2>Reset Password</h2>
            <form method="post" action="process-reset-password.php">
                <div>
                    <input type="hidden" name="token" value="<?= htmlspecialchars($token) ?>">
                </div>
                <div class="input-box">
                    <span class="icon"><ion-icon name="password"></ion-icon></span>
                    <input type="password" name="password" id="password" required>
                    <label for="password">New Password</label>
                </div>
                <div class="input-box">
                    <span class="icon"><ion-icon name="password"></ion-icon></span>
                    <input type="password" name="confirm_password" id="confirm_password" required>
                    <label for="password">Confirm Password</label>
                </div>
                <button class="btn">Send</button>
                </div>
            </form>
    <script type="text/javascript">
        document.getElementById("myButton").onclick = function () {
            location.href = "index.php";
        };
    </script>
</body>
</html>