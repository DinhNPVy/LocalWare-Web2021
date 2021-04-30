<?php
include "../lib/session.php";
Session::checkSession();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--CSS-->
    <title>Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/materialdesignicons.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style.min.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Doppio+One">
    <link rel="stylesheet" href="css/styleheader.css">
    <script src="js/jquery.js"></script>
    <script src="js/setup.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            setupLeftMenu();
            setSidebarHeight();
        });
    </script>
</head>

<body>
    <div class="container">
        <a class="navbar-brand logo fw-bolder fs-24 text-dark">
            <a href="index.php"><img src="./../img/Blue Calculator Icon Business Logo.png" alt="" style="height: 100px; border-radius: 100px" /></a>
        </a>
        <div class="navbar-header-admin">
            <div class="sayhi">
                <p>Hello <?php echo Session::get('adminName')
                            ?></p>
            </div>
            <?php
            if (isset($_GET["action"]) && $_GET["action"] === "logout") {
                Session::destroy();
            }

            ?>
            <div class="logout"><a href="?action=logout">Logout</a></div>
        </div>

    </div>

</body>

</html>