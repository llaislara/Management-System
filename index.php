<?php
    session_start(); 
    include "src/utils.php";

    if(isset($_POST['register'])){
        Register($_POST['username'], $_POST['password'], $_POST['email']);
    }
    if(isset($_POST['login'])) {
        if(Login($_POST['username'], $_POST['password']) == "logedin"){
            $_SESSION['success'] = "Logged IN";
            $_SESSION['user_logged_in'] = "True";
            redirect('src/dashboard.php');
        } else {
            $_SESSION['failure'] = "Wrong Credential";
        }
    }

    $register = isset($_GET['register']);
?>

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
    <link rel="stylesheet" href="./src/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./src/assets/css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="./src/assets/css/sb-admin-2.css" />

    <!-- MetisMenu CSS -->
    <link href="./src/assets/js/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="./src/assets/css/sb-admin-2.css" rel="stylesheet">
    <link href="./src/assets/css/login.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="./src/assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <script src="./src/assets/js/index.js" type="text/javascript"></script>
</head>

<body id="particles-js">
    <div class="animated bounceInDown">
        <div class="container">
            <?php include 'includes/flash_messages.php'?>
            <span class="error animated tada" id="msg"></span>
            <form name="form1" class="box" method="POST" action="index.php">

                <img src="./src/assets/images/logoletter.svg" alt=""/>

                <h4>Admin<span>Dashboard</span></h4>

                <?php if($register) { ?>
                    <h5>Register a new account.</h5>
                    <input type="email" name="email" placeholder="Email" class="form-control" autocomplete="off" paste="off" required>
                    <input type="text" name="username" placeholder="Username" class="form-control" autocomplete="off" required>
                    <input type="password" name="password" placeholder="Password" class="form-control" autocomplete="off" required>
                    <input type="submit" name="register" value="Register" class="btn1">

                    <a href="index.php" class="dnthave">Already have an account? Sign in</a>

                    
                <?php } else { ?>
                    <h5>Sign in to your account.</h5>
                    <input type="text" name="username" placeholder="Username: admin" autocomplete="off" required>
                    <input type="password" name="password" placeholder="Password: admin" id="pwd" autocomplete="off" required>
                    <input type="submit" name="login" value="Sign in" class="btn1">
                    <a href="index.php?register=true" class="dnthave">Don’t have an account? Sign up</a>
                <?php } ?>

            </form>
        </div>
    </div>
</body>

</html>
