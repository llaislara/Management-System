<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Administrator</title>

    <!-- Bootstrap Core CSS -->
    <!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css" /> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
        integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- <link rel="icon" href="https://img.icons8.com/doodle/50/000000/home--v1.png" type="image/x-icon"> -->
    <!-- MetisMenu CSS -->
    <link href="assets/js/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="assets/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

    <script src="assets/js/jquery.min.js" type="text/javascript"></script>

</head>

<body>

    <div id="wrapper">

        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="../src/dashboard.php"><img  class="navbar-brand" src="./assets/images/logo.svg" alt=""/></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">

            <li class="dropdown">
                <li class="logout" ><a href="./logout.php" ><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
            </li>

            </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li><a class="nav-link" href="dashboard.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
                        <li><a class="nav-link" href="vendors.php"><i class="fa fa-user fa-fw"></i> Vendors</a></li>
                        <li><a class="nav-link"  href="customer.php"><i class="fa fa-group fa-fw"></i> Customer</a></li>
                        <li><a class="nav-link"  href="product.php"><i class="fa fa-group fa-fw"></i> Products</a></li>
                        <li><a class="nav-link"  href="orders.php"><i class="fa fa-group fa-fw"></i> Orders</a></li>


                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <?php
        //  endif;
          ?>