<!DOCTYPE html>
<html>
    <head>
        <title>DASHBOARD</title>
        <link href="ASSETS/RANDOM/LOGIN.png" rel="shortcut icon">
        <link href="CSS/style_header.css" rel="stylesheet">
        <link href="CSS/style_home.css" rel="stylesheet">
        <link href="CSS/style_table.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    </head>
    <body>
        <?php
            include "header.php";
        ?>
        <div class="sidebar">
            <center>
                <img name="foto" src="ASSETS/foto/<?=$_SESSION["foto"]?>" class="profile-img" alt="">
                <h2><?=$_SESSION["nama"]?></h2>
            </center>
            <div class="sidebar-menu">
                <ul>
                    <li>
                        <a href="home.php" class="active"><span class="las la-home"></span>
                        <span>Dashboard</span></a>
                    </li>
                    <li>
                        <a href="produk.php"><span class="las la-hamburger"></span>
                        <span>Product</span></a>
                    </li>
                    <li>
                        <a href="cart.php"><span class="las la-shopping-cart"></span>
                        <span>Cart</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content">
            <main>
                <div class="container">
                    <img class="img-header" src="ASSETS/RANDOM/HEADER.jpg" alt="">
                </div> <br>
                <div class="card">
                    <div>
                        <h1>Selamat Datang <?=$_SESSION["nama"]?></h1>
                        <span>Status : <?=$_SESSION["status"]?></span>
                    </div>
                    <div>
                        <span class="las la-hand-peace"></span>
                    </div>
                </div>
            </main>
        </div>
    </body>
</html>