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

    <!-- ===================Single product details===================== -->
    <div class="small-container single-product">
        <div class="row">
            <div class="col-2">
                <img src="images/gallery-1.jpg" alt="Image" width="100%" id="productImg">
                <div class="small-img-row">
                    <div class="small-img-col">
                        <img src="images/gallery-1.jpg" alt="Image" width="100%" class="small-img">
                    </div>
                    <div class="small-img-col">
                        <img src="images/gallery-2.jpg" alt="Image" width="100%" class="small-img">
                    </div>
                    <div class="small-img-col">
                        <img src="images/gallery-3.jpg" alt="Image" width="100%" class="small-img">
                    </div>
                    <div class="small-img-col">
                        <img src="images/gallery-4.jpg" alt="Image" width="100%" class="small-img">
                    </div>
                </div>
            </div>
            <div class="col-2" id="details">
                <p>Home / T-Shirt</p>
                <h1>Red Printed T-Shirt by HRX</h1>
                <h4>2,500.00</h4>
                <select>
                    <option>Select Size</option>
                    <option>XXL</option>
                    <option>XL</option>
                    <option>Large</option>
                    <option>Medium</option>
                    <option>Small</option>
                </select>
                <br>
                <input type="number" value="1" id="quantityChange">
                <button class="btn" id="AddToCart" onclick="changeText()">Add To Cart</button>
                <h3>Product Details</h3><br>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quas voluptates alias voluptatem unde dolores tempora quisquam, excepturi rerum commodi vitae ratione, suscipit, nemo sunt quasi natus assumenda distinctio eligendi dignissimos?</p>
            </div>
        </div>
    </div>


    <!-- ------------------titel-------------------- -->
    <div class="small-container">
        <div class="row row-2">
            <h2>Related Products</h2>
            <p>View More</p>
        </div>
    </div>

    <!-- =========featured Products========== -->
    <div class="small-container">
        <div class="row">
            <div class="col-4">
                <img src="images/product-1.jpg" alt="Image">
                <h4>Red Printed T-Shirt</h4>
                <p>2,500.00</p>
            </div>
            <div class="col-4">
                <img src="images/product-4.jpg" alt="Image">
                <h4>Casual Shirt</h4>
                <p>2,500.00</p>
            </div>
            <div class="col-4">
                <img src="images/product-2.jpg" alt="Image">
                <h4>Casual Shoes</h4>
                <p>2,500.00</p>
            </div>
            <div class="col-4">
                <img src="images/product-3.jpg" alt="Image">
                <h4>Track Pant</h4>
                <p>2,500.00</p>
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



    <!-- ============ js for product gallery =================== -->
    <script>
        var productImg = document.getElementById("productImg");
        var smallImg = document.getElementsByClassName("small-img");
        smallImg[0].onclick = function() {
            productImg.src = smallImg[0].src;
        }
        smallImg[1].onclick = function() {
            productImg.src = smallImg[1].src;
        }
        smallImg[2].onclick = function() {
            productImg.src = smallImg[2].src;
        }
        smallImg[3].onclick = function() {
            productImg.src = smallImg[3].src;
        }
    </script>
    
    <script>
	    const addCart = document.getElementById('AddToCart');
	    function changeText() {
	        if (addCart.innerHTML == 'Added') {
	            return;
	        }
	        addCart.innerHTML = '';
	        addCart.appendChild(document.createTextNode('Added'));
	    }
	</script>
	
	


</body>

</html>