<?php

session_start();

if (isset($_SESSION["user_id"])) {
    $mysqli = require __DIR__ . "/database.php";

    $sql = "SELECT * FROM user
           WHERE id = {$_SESSION["user_id"]}";

    $result = $mysqli->query($sql);

    $user = $result->fetch_assoc();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
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
}.wrapper {
    position: absolute;
    top: 30%;
    width: 1000px;
    height: 400px;
    bottom: 40%;
    background-color: white;
    border: 2px solid rgba(255,255,255, .5);
    border-radius: 20px;
    backdrop-filter: blur(60px);
    box-shadow: 0 0 30px rgba(0,0,0, .5);
    display: flex;
}
    </style>
</head>
<body>
     <header>
        <h2 class="logo"><br><img src="new.png" height="160" width="600"></h2>
        <nav class="navigation">
            <a href="about.html">About</a>
            <a href="contactus.html">Contact</a>
            <button id="myButton" class="btnLogin-popup">Logout</button>

        </nav>
     </header>

     <div class="wrapper">
        <div class="form-box login">
            <a href="index.php" style="position: relative; top: -100px; left: 50px; text-decoration: none">Back</a>

            <?php if (isset($user)): ?>
                <a href="edible.php"><img src="edible.jpg" alt="edible" height="150px" width="210px" style="position: relative;top: 80px;left: 110px"></a>
                <a href="fluids.php"><img src="oil packet.webp" alt="fluids" height="160px" width="170px" style="position: relative;top: 85px;left: 200px"></a>
                <a href="assets.php"><img src="pc.jpg" alt="assets" height="190px" width="200px" style="position: relative;top: 110px;left: 300px"></a>
                <p style="position: relative;top: 100px;left: 170px">Edibles List</p>
                <p style="position: relative;top: 85px;left: 460px">Fluids List</p>
                <p style="position: relative;top: 70px;left: 760px">Assets List</p>
                <?php endif; ?>

        </div>
    </div>
    <script type="text/javascript">
        document.getElementById("myButton").onclick = function () {
            location.href = "index.php";
        };
     </script>
</body>
</html>