<%-- 
    Document   : SanPhamDetail
    Created on : 15 thg 12, 2023, 20:49:16
    Author     : mac
--%>

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
        <link rel="stylesheet" href="http://localhost:8080/${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <!-- Site css -->
        <link rel="stylesheet" href="http://localhost:8080/${pageContext.request.contextPath}/css/style.css" />
        <!-- responsive css -->
        <link rel="stylesheet" href="http://localhost:8080/${pageContext.request.contextPath}/css/responsive.css" />
        <!-- colors css -->
        <link rel="stylesheet" href="http://localhost:8080/${pageContext.request.contextPath}/css/colors1.css" />
        <!-- custom css -->
        <link rel="stylesheet" href="http://localhost:8080/${pageContext.request.contextPath}/css/custom.css" />
        <!-- wow Animation css -->
        <link rel="stylesheet" href="http://localhost:8080/${pageContext.request.contextPath}/css/animate.css" />
        <!-- zoom effect -->
        <link rel='stylesheet' href='http://localhost:8080/${pageContext.request.contextPath}/css/hizoom.css'>
        <!-- end zoom effect -->
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
              <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
              <![endif]-->
    </head>
    <body id="default_theme" class="it_shop_detail">
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
            <!-- inner page banner -->
            <div id="inner_banner" class="section inner_banner_section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="full">
                                <div class="title-holder">
                                    <div class="title-holder-cell text-left">
                                        <h1 class="page-title">Shop Detail</h1>
                                        <ol class="breadcrumb">
                                            <li><a href="index.html">Home</a></li>
                                            <li class="active">Shop Detail</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end inner page banner -->
            <!-- section -->
            <div class="section padding_layout_1 product_detail">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="row">
                            <c:if test="${spdetail != null}">
                                <div class="col-xl-6 col-lg-12 col-md-12">
                                    <div class="product_detail_feature_img hizoom hi2">
                                        <div class='hizoom hi2'> 
                                            <c:forEach items="${spdetail.listimage}" var="img" varStatus="loop">
                                                <c:if test="${loop.index == 0}">
                                                    <img src="${pageContext.request.contextPath}/Image/Product/${spdetail.thuongHieu}/${img.URL}"/>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-12 col-md-12 product_detail_side detail_style1">
                                    <div class="product-heading">
                                        <h2>${spdetail.tenSanPham}</h2>
                                    </div>
                                    <div class="product-detail-side"> <span><del>$25.00</del></span><span class="new-price">$${spdetail.kho.giaBan}</span> <span class="rating"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span> <span class="review">(5 customer review)</span> </div>
                                    <div class="detail-contant">
                                        <p>

                                        <style>
                                            .product-thongtin {
                                                display: flex;
                                                align-items: center;
                                                margin-bottom: 10px;
                                            }

                                            .label {
                                                font-weight: bold;
                                                margin-right: 10px;
                                                flex-basis: 100px; /* Điều chỉnh kích thước cố định của label nếu cần */
                                            }

                                            .value {
                                                flex-grow: 1;
                                            }
                                        </style>
                                        <div class="product-thongtin">
                                            <div class="label">Thương Hiệu:</div>
                                            <div class="value">${spdetail.thuongHieu}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Màu:</div>
                                            <div class="value">${spdetail.mau}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Series LapTop:</div>
                                            <div class="value">${spdetail.seriesLapTop}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">CPU:</div>
                                            <div class="value">${spdetail.CPU}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Đồ họa:</div>
                                            <div class="value">${spdetail.doHoa}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Đồ họa rời:</div>
                                            <div class="value">${spdetail.doHoaRoi}</div>
                                        </div> 
                                        <div class="product-thongtin">
                                            <div class="label">Ram:</div>
                                            <div class="value">${spdetail.RAM}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Bộ nhớ:</div>
                                            <div class="value">${spdetail.boNho}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Kích thước màn hình:</div>
                                            <div class="value">${spdetail.KTManHinh}</div>
                                        </div>
                                        <div class="product-thongtin">
                                            <div class="label">Khối lượng:</div>
                                            <div class="value">${spdetail.khoiLuong}</div>
                                        </div>

                                        <div class="product-thongtin">
                                            <div class="label">Màn cảm ứng:</div>
                                            <div class="value">${spdetail.MHCamUng}</div>
                                        </div>
                                        </p>

                                        <br>
                                        <span class="stock">${spdetail.kho.soLuong} stock</span> </p>
                                        <form class="cart" method="post" action="it_cart.html">
                                            <div class="quantity">
                                                <input step="1" min="1" max="5" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" type="number">
                                            </div>
                                            <button type="submit" class="btn sqaure_bt">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="share-post"> <a href="#" class="share-text">Share</a>
                                        <ul class="social_icons">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </c:if>

                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="full">
                                    <div class="tab_bar_section">
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#description">Description</a> </li>
                                            <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#reviews">Reviews (2)</a> </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div id="description" class="tab-pane active">
                                                <div class="product_desc">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac elementum elit. Morbi eu arcu ipsum. Aliquam lobortis accumsan quam ac convallis. 
                                                        Fusce elit mauris, aliquet at odio vel, convallis vehicula nisi. Morbi vitae porttitor dolor. Integer eget metus sem. Nam venenatis mauris vel leo pulvinar, 
                                                        id rutrum dui varius. Nunc ac varius quam, non convallis magna. Donec suscipit commodo dapibus.<br>
                                                        <br>
                                                        Vestibulum et ullamcorper ligula. Morbi bibendum tempor rutrum. 
                                                        Pelle tesque auctor purus id molestie ornare.Donec eu lobortis risus. Pellentesque sed aliquam lorem. Praesent pulvinar lorem vel mauris ultrices posuere. 
                                                        Phasellus elit ex, gravida a semper ut, venenatis vitae diam. Nullam eget leo massa. Aenean eu consequat arcu, vitae scelerisque quam. Suspendisse risus turpis, 
                                                        pharetra a finibus vitae, lobortis et mi.</p>
                                                </div>
                                            </div>
                                            <div id="reviews" class="tab-pane fade">
                                                <div class="product_review">
                                                    <h3>Reviews (2)</h3>
                                                    <div class="commant-text row">
                                                        <div class="col-lg-2 col-md-2 col-sm-4">
                                                            <div class="profile"> <img class="img-responsive" src="${pageContext.request.contextPath}/images/it_service/client1.png" alt="#"> </div>
                                                        </div>
                                                        <div class="col-lg-10 col-md-10 col-sm-8">
                                                            <h5>David</h5>
                                                            <p><span class="c_date">March 2, 2018</span> | <span><a rel="nofollow" class="comment-reply-link" href="#">Reply</a></span></p>
                                                            <span class="rating"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
                                                            <p class="msg">ThisThis book is a treatise on the theory of ethics, very popular during the Renaissance. 
                                                                The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet.. </p>
                                                        </div>
                                                    </div>
                                                    <div class="commant-text row">
                                                        <div class="col-lg-2 col-md-2 col-sm-4">
                                                            <div class="profile"> <img class="img-responsive" src="${pageContext.request.contextPath}/images/it_service/client2.png" alt="#"> </div>
                                                        </div>
                                                        <div class="col-lg-10 col-md-10 col-sm-8">
                                                            <h5>Jack</h5>
                                                            <p><span class="c_date">March 2, 2018</span> | <span><a rel="nofollow" class="comment-reply-link" href="#">Reply</a></span></p>
                                                            <span class="rating"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
                                                            <p class="msg">Nunc augue purus, posuere in accumsan sodales ac, euismod at est. Nunc faccumsan ermentum consectetur metus placerat mattis. Praesent mollis justo felis, accumsan faucibus mi maximus et. Nam hendrerit mauris id scelerisque placerat. Nam vitae imperdiet turpis</p>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="full review_bt_section">
                                                                <div class="float-right"> <a class="btn sqaure_bt" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Leave a Review</a> </div>
                                                            </div>
                                                            <div class="full">
                                                                <div id="collapseExample" class="full collapse commant_box">
                                                                    <form accept-charset="UTF-8" action="index.html" method="post">
                                                                        <input id="ratings-hidden" name="rating" type="hidden">
                                                                        <textarea class="form-control animated" cols="50" id="new-review" name="comment" placeholder="Enter your review here..." required=""></textarea>
                                                                        <div class="full_bt center">
                                                                            <button class="btn sqaure_bt" type="submit">Save</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="full">
                                    <div class="main_heading text_align_left" style="margin-bottom: 35px;">
                                        <h3>Related products</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach items="${list}" var="sph">
                                <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all">
                                    <div class="product_list">
                                        <div class="product_img"> 
                                            <c:forEach items="${sph.listimage}" var="img" varStatus="loop">
                                                <c:if test="${loop.index == 0}">
                                                    <img class="img-responsive" src="${pageContext.request.contextPath}/Image/Product/${sph.thuongHieu}/${img.URL}"/>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                        <div class="product_detail_btm">
                                            <div class="center">
                                                <h4><a href="${pageContext.request.contextPath}/SanPhamDetailServlet?idSanPham=<c:out value='${sph.idSanPham}'/>">${sph.tenSanPham}</a></h4>
                                            </div>
                                            <div class="starratin">
                                                <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
                                            </div>
                                            <div class="product_price">
                                                <p><span class="new_price">${sph.kho.giaBan}</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="side_bar">
                            <div class="side_bar_blog">
                                <h4>SEARCH</h4>
                                <div class="side_bar_search">
                                    <div class="input-group stylish-input-group">
                                        <input class="form-control" placeholder="Search" type="text">
                                        <span class="input-group-addon">
                                            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                        </span> </div>
                                </div>
                            </div>
                            <div class="side_bar_blog">
                                <h4>GET A QUOTE</h4>
                                <p>An duo lorem altera gloriatur. No imperdiet adver sarium pro. No sit sumo lorem. Mei ea eius elitr consequ unturimperdiet.</p>
                                <a class="btn sqaure_bt" href="it_service.html">View Service</a> </div>
                            <div class="side_bar_blog">
                                <h4>OUR SERVICE</h4>
                                <div class="categary">
                                    <ul>
                                        <li><a href="it_data_recovery.html"><i class="fa fa-angle-right"></i> Data recovery</a></li>
                                        <li><a href="it_computer_repair.html"><i class="fa fa-angle-right"></i> Computer repair</a></li>
                                        <li><a href="it_mobile_service.html"><i class="fa fa-angle-right"></i> Mobile service</a></li>
                                        <li><a href="it_network_solution.html"><i class="fa fa-angle-right"></i> Network solutions</a></li>
                                        <li><a href="it_techn_support.html"><i class="fa fa-angle-right"></i> Technical support</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="side_bar_blog">
                                <h4>RECENT NEWS</h4>
                                <div class="categary">
                                    <ul>
                                        <li><a href="it_data_recovery.html"><i class="fa fa-angle-right"></i> Land lights let be divided</a></li>
                                        <li><a href="it_computer_repair.html"><i class="fa fa-angle-right"></i> Seasons over bearing air</a></li>
                                        <li><a href="it_mobile_service.html"><i class="fa fa-angle-right"></i> Greater open after grass</a></li>
                                        <li><a href="it_network_solution.html"><i class="fa fa-angle-right"></i> Gathered was divide second</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="side_bar_blog">
                                <h4>TAG</h4>
                                <div class="tags">
                                    <ul>
                                        <li><a href="#">Bootstrap</a></li>
                                        <li><a href="#">HTML5</a></li>
                                        <li><a href="#">Wordpress</a></li>
                                        <li><a href="#">Bootstrap</a></li>
                                        <li><a href="#">HTML5</a></li>
                                    </ul>
                                </div>
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
        <script src='http://localhost:8080/${pageContext.request.contextPath}/js/hizoom.js'></script>
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

