<%-- 
    Document   : SanPhamList
    Created on : 15 thg 12, 2023, 20:44:51
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
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
              <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
              <![endif]-->
    </head>
    <body id="default_theme" class="it_shop_list">
        <!-- loader -->
        <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
        <!-- end loader -->
        <!-- header -->
        <header id="default_header" class="header_style_1">
            <!-- header top -->
            <div class="header_top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="full">
                                <div class="topbar-left">
                                    <ul class="list-inline">
                                        <li> <span class="topbar-label"><i class="fa  fa-home"></i></span> <span class="topbar-hightlight">540 Lorem Ipsum New York, AB 90218</span> </li>
                                        <li> <span class="topbar-label"><i class="fa fa-envelope-o"></i></span> <span class="topbar-hightlight"><a href="mailto:info@yourdomain.com">info@yourdomain.com</a></span> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 right_section_header_top">
                            <div class="float-left">
                                <div class="social_icon">
                                    <ul class="list-inline">
                                        <li><a class="fa fa-facebook" href="https://www.facebook.com/" title="Facebook" target="_blank"></a></li>
                                        <li><a class="fa fa-google-plus" href="https://plus.google.com/" title="Google+" target="_blank"></a></li>
                                        <li><a class="fa fa-twitter" href="https://twitter.com" title="Twitter" target="_blank"></a></li>
                                        <li><a class="fa fa-linkedin" href="https://www.linkedin.com" title="LinkedIn" target="_blank"></a></li>
                                        <li><a class="fa fa-instagram" href="https://www.instagram.com" title="Instagram" target="_blank"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="float-right">
                                <div class="make_appo"> <a class="btn white_btn" href="make_appointment.html">Make Appointment</a> </div>
                            </div>
                        </div>
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
                                        <h1 class="page-title">Shop Page</h1>
                                        <ol class="breadcrumb">
                                            <li><a href="index.html">Home</a></li>
                                            <li class="active">Shop</li>
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
            <div class="section padding_layout_1 product_list_main">
                <div class="container">
                    <div class="row">



                        <div class="col-md-9">
                            <div class="row">
                            <c:forEach items="${listSP}" var="sp">
                                <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all">
                                    <div class="product_list">
                                        <div class="product_img">
                                            <c:forEach items="${sp.listimage}" var="img" varStatus="loop">
                                                <c:if test="${loop.index == 0}">
                                                    <img class="img-responsive" src="Image//Product//${sp.thuongHieu}//${img.URL}"/>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                        <div class="product_detail_btm">
                                            <div class="center">
                                                <h4><a href="">${sp.tenSanPham}</a></h4>
                                            </div>
                                            <div class="starratin">
                                                <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
                                            </div>
                                            <div class="product_price">
                                                <p><span class="new_price">$${sp.kho.giaBan}</span></p>
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
                                        <form>
                                        <input class="form-control" placeholder="Search Tên Sản Phẩm" type="text" name="keyword" value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : ""%>">
                                        </form>
                                    </div>
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

        <!-- section -->
        <div class="section padding_layout_1" style="padding: 50px 0;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <!--nút Previous-->
                                    <c:if test="${id ==null && empty gia && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${id != null && empty gia && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keyword=<%=request.getParameter("keyword")%>&page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${ not empty gia  && id == null && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGia=<%=request.getParameter("keywordGia")%>&page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${empty gia && id == null && not empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordMau=<%=request.getParameter("keywordMau")%>&page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${empty gia && id == null && empty mau && not empty giatrongkhoang && empty giaMin  && empty giaMax &&  page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaTrongKhoan=<%=request.getParameter("keywordGiaTrongKhoan")%>&page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${empty gia && id == null && empty mau && empty giatrongkhoang && not empty giaMin  && empty giaMax &&  page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMin=<%=request.getParameter("keywordGiaMin")%>&page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${gia == null && id == null && empty mau && empty giatrongkhoang && empty giaMin  && not empty giaMax &&  page != 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMax=<%=request.getParameter("keywordGiaMax")%>&page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                    </c:if>

                                    <!--Page--> 
                                    <c:if test="${id == null && empty gia && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax}">
                                        <c:forEach var="i" begin="1" end="${countPage}">
                                            <c:choose >
                                                <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${id != null && empty gia && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax}">
                                            <c:forEach var="i" begin="1" end="${countPage}">
                                                <c:choose >
                                                    <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keyword=<%=request.getParameter("keyword")%>&page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keyword=<%=request.getParameter("keyword")%>&page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if>  
                                        <c:if test="${not empty gia && id == null && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax}">
                                            <c:forEach var="i" begin="1" end="${countPage}">
                                                <c:choose >
                                                    <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGia=<%=request.getParameter("keywordGia")%>&page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGia=<%=request.getParameter("keywordGia")%>&page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if> 
                                        <c:if test="${empty gia && id == null && not empty mau && empty giatrongkhoang && empty giaMin && empty giaMax}">
                                            <c:forEach var="i" begin="1" end="${countPage}">
                                                <c:choose >
                                                    <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordMau=<%=request.getParameter("keywordMau")%>&page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordMau=<%=request.getParameter("keywordMau")%>&page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if> 
                                        <c:if test="${empty gia && id == null && empty mau && not empty giatrongkhoang && empty giaMin && empty giaMax}">
                                            <c:forEach var="i" begin="1" end="${countPage}">
                                                <c:choose >
                                                    <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaTrongKhoan=<%=request.getParameter("keywordGiaTrongKhoan")%>&page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaTrongKhoan=<%=request.getParameter("keywordGiaTrongKhoan")%>&page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if> 
                                        <c:if test="${empty gia && id == null && empty mau && empty giatrongkhoang && not empty giaMin && empty giaMax}">
                                            <c:forEach var="i" begin="1" end="${countPage}">
                                                <c:choose >
                                                    <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMin=<%=request.getParameter("keywordGiaMin")%>&page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMin=<%=request.getParameter("keywordGiaMin")%>&page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if> 
                                        <c:if test="${empty gia && id == null && empty mau && empty giatrongkhoang && empty giaMin && not empty giaMax}">
                                            <c:forEach var="i" begin="1" end="${countPage}">
                                                <c:choose >
                                                    <c:when test="${page == i}">
                                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMin=<%=request.getParameter("keywordGiaMin")%>&page=${i}">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMin=<%=request.getParameter("keywordGiaMin")%>&page=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if>

                                    <!--nút Next-->
                                    <c:if test="${id == null && empty gia && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?page=${page+1}">Next</a></li>
                                        </c:if>
                                        <c:if test="${id != null && empty gia && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keyword=<%=request.getParameter("keyword")%>&page=${page+1}">Next</a></li>
                                        </c:if>
                                        <c:if test="${not empty gia && id ==null && empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGia=<%=request.getParameter("keywordGia")%>&page=${page+1}">Next</a></li>
                                        </c:if>
                                        <c:if test="${empty gia && id ==null && not empty mau && empty giatrongkhoang && empty giaMin && empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordMau=<%=request.getParameter("keywordMau")%>&page=${page+1}">Next</a></li>
                                        </c:if>
                                        <c:if test="${empty gia && id ==null && empty mau && not empty giatrongkhoang && empty giaMin && empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaTrongKhoan=<%=request.getParameter("keywordGiaTrongKhoan")%>&page=${page+1}">Next</a></li>
                                        </c:if>
                                        <c:if test="${empty gia && id ==null && empty mau && empty giatrongkhoang && not empty giaMin && empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMin=<%=request.getParameter("keywordGiaMin")%>&page=${page+1}">Next</a></li>
                                        </c:if>
                                        <c:if test="${empty gia && id ==null && empty mau && empty giatrongkhoang && empty giaMin && not empty giaMax && page < countPage}">
                                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/SanPhamListServlet?keywordGiaMax=<%=request.getParameter("keywordGiaMax")%>&page=${page+1}">Next</a></li>
                                        </c:if>
                                </ul>
                            </nav>
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
    </body>
</html>
