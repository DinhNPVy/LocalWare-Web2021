<?php
include "./../classes/adminlogin.php";
?>

<?php
$class = new adminlogin();
// kiem tra
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $adminUser = $_POST['adminUser'];

    $adminPass = md5($_POST['adminPass']);

    $login_check = $class->login_admin($adminUser, $adminPass);
}
?>


<!-- <div class="container">
        <section id="content">
            <form action="login.php" method="post">
                <h1>Admin Login</h1>
                <div>
                    <input type="text" placeholder="Username" required="" name="adminUser" />
                </div>
                <div>
                    <input type="password" placeholder="Password" required="" name="adminPass" />
                </div>
                <div>
                    <input type="submit" value="Login" />
                </div>
            </form>
            <div class="button">
                <a href="#">Training with live project</a>
            </div>
        </section>
    </div> -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="js/bootstrap.js">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/stylelogin.css" media="screen">

    <script src="./js//jquery.js"></script>
    <title>Form</title>



</head>

<body>
    <div class="background">
        <img src="./../img/Blue, Pink and Orange Circle Games Influencer Facebook Cover.png" alt="">

        <div class="container">

            <form action="login.php" method="post">
                <h3>Sign in <i class="fa fa-sign-in"></i></h3>
                <span><?php

                        if (isset($login_check)) {
                            echo $login_check;
                        }
                        ?></span>
                <div class="form-group">
                    <div class="row m-1">
                        <div class="col-lg-7 ">
                            <div class="fa fa-user">

                                <input type="text" placeholder="Username" name="adminUser" />

                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row m-1">
                        <div class="col-lg-7 ">
                            <div class="fa fa-lock" aria-hidden="true">
                                <input type="password" placeholder="Password" name="adminPass" />
                                <span class="eye">
                                    <div class="fa fa-eye" onclick="showHidden()"></div>
                                </span>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group form-check">
                    <div class="row m-1">
                        <div class="col-lg-8">
                            <label class="form-check-label">
                                <input name="remember-m" type="checkbox" class="form-check-input" /> Remember me
                            </label>
                            <a onclick="checkForm()" href="#" data-hind="click: $root.ToggleResetForm" class="btn btn-link btn-sm btn-lg" style="padding-right: 0; padding-left: 0;">
                                Have you forgotten your password?
                            </a>
                        </div>
                    </div>
                </div>
                <div class="form-group form-check">
                    <div class="row m-1">
                        <div class="col-lg-7">

                            <input type="submit" class="btn btn-primary btn-rounded btn-block" style="padding-right: 18px; padding-left: 18px;" value="Login" />

                        </div>
                    </div>
                </div>
            </form>


        </div>

        <!-- <script>
            $(function(){
                $("#loginForm").validate({
                    rules:{
                        txtUser: {required: true, minlength: 5},
                        txtPass: {required: true, minlength: 5}
                    },
                    messages:{
                        txtUser :{
                            required :"*", minlength:"tối thiểu 5 ký tự"
                        },
                        txtPass :{
                            required :"*", minlength:"tối thiểu 5 ký tự"
                        }
                    }
                });
            });
        </script>
            <script>
                // js
                isBool = true;
                function showHidden(){
                if(isBool){
                document.getElementById("txtPass").setAttribute("type", "text")
                isBool = false;
                } else{
                document.getElementById("txtPass").setAttribute("type", "password")
                isBool = true;
                }
                }
            
                
                function getLogin()
                {
                let User = document.getElementById("txtUser").value;
                let passWord = document.getElementById("txtPass").value;
                if(User == ""){
                // window.alert("Bạn nhập chưa nhập đủ thông tin");
                document.getElementById("errorname").innerHTML = "Vui lòng nhập Username!";
                }else{
                document.getElementById("errorname").innerHTML = "";
                }
                if(passWord == "" ){
                // window.alert("Bạn nhập chưa nhập đủ thông tin");
                document.getElementById("errorpass").innerHTML = "Vui lòng nhập Password!";
                }else{
                document.getElementById("errorpass").innerHTML = "";
                }
            
                
            
                </script> -->
    </div>
</body>

</html>