<?php
    include('../utils.php');

    if (!isset($_SESSION['user_logged_in'])) {
        redirect("../../index.php");
        exit;
    }
 ?>