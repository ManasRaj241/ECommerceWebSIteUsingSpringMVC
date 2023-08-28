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

    <!-- --------cart item details--------- -->

    <div class="small-container cart-page">
        <div id="cartCoupons">
            <div class="small-container cart-page">
                <h2>Have Coupons?</h2>
                <div class="input-group"> 
                    <form id="cpnForm">
                        <input id="txtCpn" type="text" class="form-control coupon" placeholder="Coupon code" style="height: 30px; width: 300px; outline: none; margin-bottom: 5px;"> <br>
                        <span class="input-group-append"> 
                            <input class="btn" type="submit" id="cpnSubmit" value="Apply" style="width: 100px;">
                        </span> 
                    </form>
                </div>
            </div>
        </div>
        <div class="small-container cart-page" id="CartTable">
			<table>
				<tr>
					<th>Product</th>
					<th>Quantity</th>
					<th>Sub Total</th>
				</tr>
				<tr>
				<td>
					<div class= "cart-info">
						<img src="${cartProduct.imagePath}">
						<div>
							<p>${cartProduct.productName}</p>
							<small>${cartProduct.price}</small>
						</div> 
					</div>
				</td>
				<td>
					<input type="number" value="${productQuantity}">
				</td>
				<td>
				<span id="subtotalCell" onload="updateSubtotal()">7,500.00</span></td>				
				</tr>
			</table>
        </div>
        <div class="total-price" id="cart-footer">
            <table>
	            <tr>
	            	<td>Sub Total</td>
	            	<td>7,500.00</td>
	            </tr>
	            <tr>
	            	<td>Tax</td>
	            	<td>500.00</td>
	            </tr>
	            <tr>
	            	<td>Total</td>
	            	<td>8,000.00</td>
	            </tr>          
            </table>
        </div>
    </div>
    <div>
        <div>
            <form id="checkOutForm">
                <input type="submit" name="" class="checkout" value="Check Out">
            </form>
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

    
</body>

</html>