<%-- 
    Document   : AccInformation
    Created on : Dec 16, 2023, 2:48:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>It.Next - IT Service Responsive Html Theme</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- site icons -->
        <link rel="icon" href="images/fevicon/fevicon.png" type="image/gif" />
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- Site css -->
        <link rel="stylesheet" href="css/style.css" />
        <!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css" />
        <!-- colors css -->
        <link rel="stylesheet" href="css/colors1.css" />
        <!-- custom css -->
        <link rel="stylesheet" href="css/custom.css" />
        <!-- wow Animation css -->
        <link rel="stylesheet" href="css/animate.css" />
        <!-- zoom effect -->
        <link rel='stylesheet' href='css/hizoom.css'>
        <!-- end zoom effect -->
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
              <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
              <![endif]-->
    </head>
    <body id="default_theme" class="it_serv_shopping_cart it_checkout checkout_page">
        <!-- loader -->
        <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
        <!-- end loader -->
        <!-- header -->
        <header id="default_header" class="header_style_1">
            <!-- header top -->
            <div class="header_top">
                <div class="container">
                    <div class="row">
                        <jsp:include page="_Topbar.jsp"></jsp:include>
                    </div>
                </div>
            </div>
            <!-- end header top -->
            <!-- header bottom -->
            <div class="header_bottom">
                <div class="container">
                    <div class="row">
                        <jsp:include page="_Menu.jsp"></jsp:include>
                    </div>
                </div>
            </div>
        </div>
        <!-- header bottom end -->
    </header>
    <!-- end header -->
    <!-- inner page banner -->
    <div id="inner_banner" class="section inner_banner_section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="title-holder">
                            <div class="title-holder-cell text-left">
                                <h1 class="page-title">Checkout</h1>
                                <ol class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active">Checkout</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end inner page banner -->
    <div class="section padding_layout_1 checkout_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="full">
                        <div id="login" class="collapse">
                            <div class="login-form-checkout">
                                <p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing &amp; Shipping section.</p>
                                <form action="#">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label for="username">Username or email <span class="required">*</span></label>
                                                <input class="input-text" name="username" id="username" required="" type="text">
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label for="password">Password <span class="required">*</span></label>
                                                <input class="input-text" name="password" id="password" required="" type="password">
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 btn-login">
                                                <button class="bt_main">Login</button>
                                                <span class="remeber">
                                                    <input type="checkbox">
                                                    Remember me</span> </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                        <div id="cupon" class="collapse">
                            <div class="coupen-form">
                                <form action="#">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                <input class="input-text" name="coupon" placeholder="Coupon code" id="coupon" required="" type="text">
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-xs-12">
                                                <button class="bt_main">Login</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="checkout-form">
                        <form action="#">
                            <fieldset>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-field">
                                            <label>Full Name <span class="red">*</span></label>
                                            <input name="fn" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-field">
                                            <label>Address <span class="red">*</span></label>
                                            <textarea name="ad"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-field">
                                            <label>Phone <span class="red">*</span></label>
                                            <input name="ph" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-field">
                                            <label>Email address <span class="red">*</span></label>
                                            <input name="em" type="email">
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="shopping-cart-cart">
                        <img src="images\it_service\1.jpg" width="220px">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 payment-bt">
                        <div class="center">
                            <button class="bt_main">Update</button>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <!-- CREDIT CARD FORM ENDS HERE -->
    </div>
</div>
</div>
</div>
</div>
</div>

<!-- footer -->
<footer class="footer_style_2">
    <div class="container-fuild">
        <div class="row">
            <div class="map_section">
                <div id="map"></div>
            </div>
            <div class="footer_blog">
                <div class="row">
                    <div class="col-md-6">
                        <div class="main-heading left_text">
                            <h2>It Next Theme</h2>
                        </div>
                        <p>Tincidunt elit magnis nulla facilisis. Dolor sagittis maecenas. Sapien nunc amet ultrices, dolores sit ipsum velit purus aliquet, massa fringilla leo orci.</p>
                        <ul class="social_icons">
                            <li class="social-icon fb"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li class="social-icon tw"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li class="social-icon gp"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <div class="main-heading left_text">
                            <h2>Additional links</h2>
                        </div>
                        <ul class="footer-menu">
                            <li><a href="it_about.html"><i class="fa fa-angle-right"></i> About us</a></li>
                            <li><a href="it_term_condition.html"><i class="fa fa-angle-right"></i> Terms and conditions</a></li>
                            <li><a href="it_privacy_policy.html"><i class="fa fa-angle-right"></i> Privacy policy</a></li>
                            <li><a href="it_news.html"><i class="fa fa-angle-right"></i> News</a></li>
                            <li><a href="it_contact.html"><i class="fa fa-angle-right"></i> Contact us</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <div class="main-heading left_text">
                            <h2>Services</h2>
                        </div>
                        <ul class="footer-menu">
                            <li><a href="it_data_recovery.html"><i class="fa fa-angle-right"></i> Data recovery</a></li>
                            <li><a href="it_computer_repair.html"><i class="fa fa-angle-right"></i> Computer repair</a></li>
                            <li><a href="it_mobile_service.html"><i class="fa fa-angle-right"></i> Mobile service</a></li>
                            <li><a href="it_network_solution.html"><i class="fa fa-angle-right"></i> Network solutions</a></li>
                            <li><a href="it_techn_support.html"><i class="fa fa-angle-right"></i> Technical support</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <div class="main-heading left_text">
                            <h2>Contact us</h2>
                        </div>
                        <p>123 Second Street Fifth Avenue,<br>
                            Manhattan, New York<br>
                            <span style="font-size:18px;"><a href="tel:+9876543210">+987 654 3210</a></span></p>
                        <div class="footer_mail-section">
                            <form>
                                <fieldset>
                                    <div class="field">
                                        <input placeholder="Email" type="text">
                                        <button class="button_custom"><i class="fa fa-envelope" aria-hidden="true"></i></button>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cprt">
                <p>ItNext © Copyrights 2019 Design by html.design</p>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- js section -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- menu js -->
<script src="js/menumaker.js"></script>
<!-- wow animation -->
<script src="js/wow.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<script>

    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 11,
            center: {lat: 40.645037, lng: -73.880224},
            styles: [
                {
                    elementType: 'geometry',
                    stylers: [{color: '#fefefe'}]
                },
                {
                    elementType: 'labels.icon',
                    stylers: [{visibility: 'off'}]
                },
                {
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#616161'}]
                },
                {
                    elementType: 'labels.text.stroke',
                    stylers: [{color: '#f5f5f5'}]
                },
                {
                    featureType: 'administrative.land_parcel',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#bdbdbd'}]
                },
                {
                    featureType: 'poi',
                    elementType: 'geometry',
                    stylers: [{color: '#eeeeee'}]
                },
                {
                    featureType: 'poi',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#757575'}]
                },
                {
                    featureType: 'poi.park',
                    elementType: 'geometry',
                    stylers: [{color: '#e5e5e5'}]
                },
                {
                    featureType: 'poi.park',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#9e9e9e'}]
                },
                {
                    featureType: 'road',
                    elementType: 'geometry',
                    stylers: [{color: '#eee'}]
                },
                {
                    featureType: 'road.arterial',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#3d3523'}]
                },
                {
                    featureType: 'road.highway',
                    elementType: 'geometry',
                    stylers: [{color: '#eee'}]
                },
                {
                    featureType: 'road.highway',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#616161'}]
                },
                {
                    featureType: 'road.local',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#9e9e9e'}]
                },
                {
                    featureType: 'transit.line',
                    elementType: 'geometry',
                    stylers: [{color: '#e5e5e5'}]
                },
                {
                    featureType: 'transit.station',
                    elementType: 'geometry',
                    stylers: [{color: '#000'}]
                },
                {
                    featureType: 'water',
                    elementType: 'geometry',
                    stylers: [{color: '#c8d7d4'}]
                },
                {
                    featureType: 'water',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#b1a481'}]
                }
            ]
        });

        var image = 'images/it_service/location_icon_map_cont.png';
        var beachMarker = new google.maps.Marker({
            position: {lat: 40.645037, lng: -73.880224},
            map: map,
            icon: image
        });
    }
</script>
<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
<!-- end google map js -->
<!-- zoom effect -->
<script src='js/hizoom.js'></script>
<script>
    $('.hi1').hiZoom({
        width: 300,
        position: 'right'
    });
    $('.hi2').hiZoom({
        width: 400,
        position: 'right'
    });
</script>
</body>
</html>
