<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Products - E commerce website</title>
    <link rel="stylesheet" href="style.css">
    
</head>

<body>
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="images/project-logo.jpeg" alt="Logo" width="125px">
            </div>
            <nav>
                <ul id="menu-items">
                    <li><a href="homepage">Home</a></li>
                    <li><a href="products">Products</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="/">Account</a></li>
                </ul>
            </nav>

            <a href="cart?quantity=3"><img src="images/cart.png" alt="Cart" width="30px"></a>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
    </div>
    
    <div class="small-container">
    	<h1>Enter Product Details</h1>
    	<form:form id="newElemAdd" method="post" modelAttribute="page">
		    Image Path : <form:input type="text" id="input1" path="imagePath"/>
		    Product Name :<form:input type="text" id="input2" path="productName"/>
		    Price : <form:input type="text" id="input3" path="price"/>
		    <input type="submit" id="submitElement" value="Add Element">
		</form:form>
 
    </div>

    <!-- ==============FOOTER============ -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Download Our App</h3>
                    <p>Download App for Android and ios mobile phone. </p>
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
    
    <script>
		function searchProduct() {
		    var searchInput = document.getElementById("searchInput").value;
		    var url = "searched-product?inputString=" + encodeURIComponent(searchInput);
		    window.location.href = url;
		}
	</script>

</body>

</html>