<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="assets/img/kit/pro/apple-icon.png">
    <link rel="icon" href="assets/img/kit/pro/favicon.png">
    <title>
		GameAstray
    </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/material-kit.css?v=2.0.2">
    <link rel="stylesheet" href="assets/css/auto-complete.css">
    <!-- Documentation extras -->
    <style>
        input {
            width: 10%;
        }
        #continue_shopping, #checkout {width: 200px;}
        
        .dropdown-menu {height: auto;
                        max-height: 200px;
                        overflow-x: hidden;}
    </style>
</head>

<body class="product-page">
	<nav class="navbar navbar-color-on-scroll navbar-transparent bg-dark fixed-top  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
        <div class="container">
            <div class="navbar-translate">
                <a class="navbar-brand" href="index.html">Fablix</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    
                </button>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <a href="index.html" class="nav-link">
                        <i class="material-icons">home</i> Home
                    </a>
                    </li>
                    
                    <li class="nav-item">
                    <a href="login.html" class="nav-link">
                        <i class="material-icons">person_add</i> Sign In 
                    </a> 
                    </li>
                    <li class="nav-item">
						<div class="has-white">
                          <input style = "width:300px" type="text" id = "ac" class="form-control" pattern="[A-Za-z0-1\s]*" title="no special charaters." required="required"  name = "q" placeholder="Search by movie name">
                        </div>
                    </li>
                    <li class="nav-item">
                        <button type="submit" id="sb_sub" class="btn btn-white btn-raised btn-fab btn-fab-mini btn-round">
                            <i class="material-icons">search</i>
                        </button>
                    </li>
                    <li class="nav-item">
                    <a href="advanced-search.html" class="btn btn-primary btn-round btn-sm">

                        Advanced Search
                    </a> 
                    <a href="browse.html" class="btn btn-info btn-round btn-sm">

                        Browse
                    </a> 
                    
                </ul>
            </div>
        </div>
    </nav>

    <div class="page-header header-filter" data-parallax="true" filter-color="blue" style="background-image: url('assets/img/kit/pro/main_background.jpg');">
    </div>

    <div class="section section-gray">
        <div class="container">
            <div class="main main-raised main-product">
                <div class="table-responsive">
                    <table class="table table-shopping" id="empty-table">
                        <thead id="cart-title">
                            <tr>
                                <th class="text-center">
                                    <th>Movie Title</th>
                                    <th class="th-description">Movie ID</th>
                                    <th class="text-right">Price</th>
                                    <th class="text-right">Quantity</th>
                                    <th class="text-right">Amount</th>
                                    <th></th>
                            </tr>
                        </thead>
                        <tbody id="shopping-list">
                           
                        </tbody>
                    </table>
                    
                </div>
                <div class="row pull-left" id="empty-cart">
                    <a href="javascript:window.location = document.referrer;" class="btn btn-blue btn-round btn-raised" id="continue_shopping">
                        <button>Continue Shopping &#xA0;<i class="material-icons">view_list</i></button>
                    </a>
                </div>
                <div class="row pull-right">
                    <a href="checkout.html" class="btn btn-rose btn-round" id="checkout">Checkout &#xA0;<i class="material-icons">check_circle</i></a>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
            <div class="container">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#creative">
                                Team 4: Bolin Ryan
                            </a>
                        </li>
                        <li>
                            <a href="#creative">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="#creative">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>. All rights reserved
                </div>
            </div>
        </footer>
	    <!--   Core JS Files   -->
		<script src="assets/js/core/jquery.min.js"></script>
		<script src="assets/js/core/popper.min.js"></script>
		<script src="assets/js/bootstrap-material-design.js"></script>
		<!--  Google Maps Plugin  -->
		<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
		<!--  Plugin for Date Time Picker and Full Calendar Plugin  -->
		<script src="assets/js/plugins/moment.min.js"></script>
		<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
		<script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
		<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
		<script src="assets/js/plugins/nouislider.min.js"></script>
		<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
		<script src="assets/js/plugins/bootstrap-selectpicker.js"></script>
		<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
		<script src="assets/js/plugins/bootstrap-tagsinput.js"></script>
		<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
		<script src="assets/js/plugins/jasny-bootstrap.min.js"></script>
		<!--	Plugin for Small Gallery in Product Page -->
		<script src="assets/js/plugins/jquery.flexisel.js"></script>
		
		<!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
        <script src="assets/js/material-kit.js?v=2.0.2"></script>
        <script src="shoppingCart.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.devbridge-autocomplete/1.4.7/jquery.autocomplete.min.js"></script>
		<script src="searchbox.js"></script>

</body>


</html>



