<?php
require './../lib/session.php';
Session::checkSession();
?>



<head>
    <meta http-equiv="content-type" content="text/hmtl" charset="utf-8" />
    <!--CSS-->
    <title>Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/materialdesignicons.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style.min.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Doppio+One">
    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript">
        $(document).ready(function($) {
            //code
        });
    </script>
</head>

<body>
    <div class="container">
        <div class="header-top">
            <a href="index.php"><img src="./../img/Blue Calculator Icon Business Logo.png" alt="" style="height: 100px; border-radius: 100px" /></a>
        </div>
        <div class="header-top-right">
            <div class="sayhi">
                <p>Hello <?php echo Session::get('adminName') ?></p>
            </div>
            <?php
            if (isset($_GET['action']) && $_GET['action'] == 'logout') {
                Session::destroy();
            }

            ?>
            <div class="logout"><a href="?action=logout">Logout</a></div>
        </div>

    </div>

</body>