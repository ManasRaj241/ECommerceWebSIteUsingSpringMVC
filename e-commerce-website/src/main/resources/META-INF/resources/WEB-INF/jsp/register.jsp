<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product Details - E commerce website</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    
    <!-- ==========account page=============== -->
    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="images/image1.png" alt="Image" width="100%">
                </div>
                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            <span>Register</span>
                            <hr id="Indicator">
                        </div>
                        <form:form id="LoginForm" method="post" modelAttribute="user">
                            <form:input type="text" placeholder="Username" id="logName" path="username"/>
                            <form:input type="password" placeholder="Password" id="logpwd" path="password"/>
                            <input type="submit" class="btn" id="logSub" value="Register">
                            <a href="">Forgot password</a><br>
                            <br>
                            <a href="loginUser" style="font-size : 20px">Already Registered? Go to Login</a>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- ==============FOOTER============ -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Download Our App</h3>
                    <p>Download App for Android and ios mobile phone.</p>
                    <div class="app-logo">
                        <img src="images/play-store.png" alt="Play Store">
                        <img src="images/app-store.png" alt="App Store">
                    </div>
                </div>
                <div class="footer-col-2">
                    <img src="images/project-logo.jpeg" alt="Image">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda, maiores exercitationem fugit nemo placeat</p>
                </div>
                <div class="footer-col-3">
                    <h3>Useful Links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-4">
                    <h3>Follow Us</h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Instagram</li>
                        <li>Youtube</li>
                    </ul>
                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2023 - Manas Ranjan Satapathy</p>
        </div>
    </div>


    <!-- ==========js for toggle menu======================= -->
    <script>
        var menuItems = document.getElementById("menu-items");
        menuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (menuItems.style.maxHeight == "0px") {
                menuItems.style.maxHeight = "200px";
            } else {
                menuItems.style.maxHeight = "0px";
            }
        }
    </script>


    <!-- ====== js for toggle form=========== -->
    
</body>

</html>