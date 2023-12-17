<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
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
        <link rel="icon" href="${pageContext.request.contextPath}/images/fevicon/fevicon.png" type="image/gif" />
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
        <!-- revolution slider css -->
        <link rel="stylesheet" type="text/css" href="revolution/css/settings.css" />
        <link rel="stylesheet" type="text/css" href="revolution/css/layers.css" />
        <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css" />
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
              <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
              <![endif]-->
    </head>
    <body id="default_theme" class="it_service">
        <!-- loader -->
        <div class="bg_load"> <img class="loader_animation" src="${pageContext.request.contextPath}/images/loaders/loader_1.png" alt="#" /> </div>
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
                <!-- header bottom end -->
            </header>
            <!-- end header -->
        <jsp:include page="_SliderHome.jsp"></jsp:include>



            <!-- section -->
            <div class="section padding_layout_1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="full">
                                <div class="main_heading text_align_center">
                                    <h2>Our Products</h2>
                                    <p class="large">We package the products with best services to make you a happy customer.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach items="${list}" var="sp">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
                            <div class="product_list">
                                <div class="product_img">
                                    <c:forEach items="${sp.listimage}" var="img" varStatus="loop">
                                        <c:if test="${loop.index == 0}">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/Image/Product/${sp.thuongHieu}/${img.URL}"/>
                                        </c:if>
                                    </c:forEach> 
                                </div>
                                <div class="product_detail_btm">
                                    <div class="center">
                                        <h4><a href="${pageContext.request.contextPath}/SanPhamDetailServlet?idSanPham=<c:out value='${sp.idSanPham}'/>">${sp.tenSanPham}</a></h4>
                                    </div>
                                    <div class="starratin">
                                        <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
                                    </div>
                                    <div class="product_price">
                                        <p><span class="old_price"></span>  <span class="new_price">${sp.kho.giaBan}</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- end section -->
        <!-- section -->
        <div class="section padding_layout_1 light_silver gross_layout right_gross_layout">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <div class="main_heading text_align_right">
                                <h2>Our Feedback</h2>
                                <p class="large">Easy and effective way to get your device repaired.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row counter">
                    <div class="col-md-4"> </div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margin_bottom_50">
                                <div class="text_align_right"><i class="fa fa-smile-o"></i></div>
                                <div class="text_align_right">
                                    <p class="counter-heading text_align_right">Happy Customers</p>
                                </div>
                                <h5 class="counter-count">2150</h5>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margin_bottom_50">
                                <div class="text_align_right"><i class="fa fa-laptop"></i></div>
                                <div class="text_align_right">
                                    <p class="counter-heading text_align_right">Laptop Repaired</p>
                                </div>
                                <h5 class="counter-count">1280</h5>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margin_bottom_50">
                                <div class="text_align_right"><i class="fa fa-desktop"></i></div>
                                <div class="text_align_right">
                                    <p class="counter-heading">Computer Repaired</p>
                                </div>
                                <h5 class="counter-count">848</h5>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margin_bottom_50">
                                <div class="text_align_right"><i class="fa fa-windows"></i></div>
                                <div class="text_align_right">
                                    <p class="counter-heading">OS Installed</p>
                                </div>
                                <h5 class="counter-count">450</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->

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
        <script src="http://localhost:8080/${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <!-- menu js -->
        <script src="http://localhost:8080/${pageContext.request.contextPath}/js/menumaker.js"></script>
        <!-- wow animation -->
        <script src="http://localhost:8080/${pageContext.request.contextPath}/js/wow.js"></script>
        <!-- custom js -->
        <script src="http://localhost:8080/${pageContext.request.contextPath}/js/custom.js"></script>
        <!-- revolution js files -->
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="http://localhost:8080/${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <!-- map js -->
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
    </body>
</html>
