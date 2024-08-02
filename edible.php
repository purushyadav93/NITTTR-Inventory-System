<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edible List</title>
    <link rel="stylesheet" href="style3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .main {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 10px;
            padding: 20px;
            max-width: 1100px;
            animation: fadeIn 1s ease-in-out;
        }
        .form-horizontal .form-group {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 10px;
        }
        .form-horizontal .form-group > div {
            flex: 1;
        }
        .main1 {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 10px;
            padding: 20px;
            max-width: 800px;
            animation: fadeIn 1s ease-in-out;
        }
        .form-horizontal1 .form-group1 {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 10px;
        }
        .form-horizontal1 .form-group1 > div {
            flex: 1;
        }
        .filter-wrapper {
            width: auto; /* Adjust the width as needed */
            max-width: 200px; /* You can set a max-width or specific width */
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
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<header>
    <h2 class="logo"><br><img src="new.png" height="160" width="600"></h2>
    <nav class="navigation">
        <a href="home.php">Home</a>
        <a href="about.html">About</a>
        <a href="contactus.html">Contact</a>
        <button id="myButton" class="btnLogin-popup">Logout</button>
    </nav>
</header><br><br><br><br><br><br>
<center>
    <div class="main">
        <form id="uploadForm" action="insert.php" method="POST" enctype="multipart/form-data" class="form-horizontal">
            <div class="form-group">
                <div>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" class="form-control">
                </div>
                <div>
                    <label for="quantity">Quantity:</label>
                    <input type="text" id="quantity" name="quantity" class="form-control">
                </div>
                <div>
                    <label for="price">Price:</label>
                    <input type="text" id="price" name="price" class="form-control">
                </div>
                <div>
                    <label for="unit">Unit:</label>
                    <input type="text" id="unit" name="unit" class="form-control">
                </div>
                <div>
                    <label for="image">Image:</label>
                    <input type="file" id="image" name="image" class="form-control">
                </div>
                <div>
                    <label for="date">Date:</label>
                    <input type="date" id="date" name="date" class="form-control">
                </div>
                <div>
                    <button type="submit" name="upload" class="btn btn-primary mt-3">Add Item</button>
                </div>
            </div>
        </form>
    </div>
</center>
<br>
<center>
<div class="main1">
<form id="dateBillForm" action="edible.php" method="POST" class="form-horizontal1">
            <div class="form-group1">
                <div>
                    <label for="billno">Bill No:</label>
                    <input type="text" id="billno" name="billno" class="form-control">
                </div>
                <div>
                    <label for="billdate">Bill Date:</label>
                    <input type="date" id="billdate" name="billdate" class="form-control">
                </div>
                <div>
                    <button type="submit" name="submitBillDate" class="btn btn-primary mt-3">Submit</button>
                </div>
            </div>
</form>
</div>
</center>

<div class="container mt-3">
    <form action="edible.php" method="GET" class="form-horizontal">
        <div class="form-group">
            <div class="filter-wrapper">
                <label for="filter_date">Filter by Date:</label>
                <input type="date" id="filter_date" name="filter_date" class="form-control">
            </div>
            <div>
                <button type="submit" class="btn btn-secondary mt-3">Filter</button>
            </div>
        </div>
    </form>
</div>

<div class="container mt-3">
    <table class="table table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Name</th>
                <th scope="col">Image</th>
                <th scope="col">Price</th>
                <th scope="col">Unit</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
                <th scope="col">Delete</th>
                <th scope="col">Save</th>
            </tr>
        </thead>
        <tbody id="productTable">
            <?php
            include 'config.php';
            $query = "SELECT * FROM tblcard";
            if (isset($_GET['filter_date']) && !empty($_GET['filter_date'])) {
                $filter_date = $_GET['filter_date'];
                $query .= " WHERE Date = '$filter_date'";
            }
            $result = mysqli_query($con, $query);
            $counter = 1;
            while ($row = mysqli_fetch_array($result)) {
                echo "
                    <tr data-id='{$row['Id']}'>
                        <td>{$counter}</td>
                        <td>{$row['Name']}</td>
                        <td><img src='{$row['Image']}' width='150px' height='100px'></td>
                        <td contenteditable='true' onBlur='saveToDatabase(this, \"Price\", {$row['Id']})' class='price'>{$row['Price']}</td>
                        <td contenteditable='true' onBlur='saveToDatabase(this, \"Unit\", {$row['Id']})' class='unit'>{$row['Unit']}</td>
                        <td contenteditable='true' onBlur='saveToDatabase(this, \"Quantity\", {$row['Id']})' class='quantity'>{$row['Quantity']}</td>
                        <td class='total'></td>
                        <td><a href='delete.php?Id={$row['Id']}' class='btn btn-danger'>Delete</a></td>
                        <td><button class='btn btn-warning' onClick='saveAndRecalculate(this.parentElement.parentElement)'>Save</button></td>
                    </tr>
                ";
                $counter++;
            }
            ?>
        </tbody>
    </table>

    <div id="totalSum" class="alert alert-info">
        Total Sum: Rs.<span id="sumValue">0.00</span>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        calculateTotalAndSum();
    });

    function saveToDatabase(editableObj, column, id) {
        var value = editableObj.innerText;
        $.ajax({
            url: "saveedit.php",
            type: "POST",
            data: {
                Id: id,
                [column]: value
            },
            success: function(response) {
                console.log('Update successful');
            },
            error: function(xhr, status, error) {
                console.error('Update failed');
            }
        });
    }

    function saveAndRecalculate(row) {
        var id = row.dataset.id;
        var price = row.querySelector('.price').innerText;
        var unit = row.querySelector('.unit').innerText;
        var quantity = row.querySelector('.quantity').innerText;

        saveToDatabase({ innerText: price }, 'Price', id);
        saveToDatabase({ innerText: unit }, 'Unit', id);
        saveToDatabase({ innerText: quantity }, 'Quantity', id);

        setTimeout(calculateTotalAndSum, 1000); // Wait for the save operation to complete
    }

    function calculateTotalAndSum() {
        var rows = document.querySelectorAll("#productTable tr");
        var totalSum = 0;
        rows.forEach(function(row) {
            var price = parseFloat(row.querySelector(".price").innerText);
            var unit = parseFloat(row.querySelector(".unit").innerText);
            var quantity = parseFloat(row.querySelector(".quantity").innerText);
            var total = price * quantity;
            row.querySelector(".total").innerText = total.toFixed(2);
            totalSum += total;
        });
        document.getElementById("sumValue").innerText = totalSum.toFixed(2);
    }

    document.getElementById("myButton").onclick = function () {
        location.href = "index.php";
    };
</script>

</body>
</html>