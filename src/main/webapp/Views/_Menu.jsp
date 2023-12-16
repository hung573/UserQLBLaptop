<%-- 
    Document   : _Menu
    Created on : 15 thg 12, 2023, 20:39:14
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
    <!-- logo start -->
    <div class="logo"> <a href="${pageContext.request.contextPath}/"><img src="images/logos/it_logo.png" alt="logo" /></a> </div>
    <!-- logo end -->
</div>
<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
    <!-- menu start -->
    <div class="menu_side">
        <div id="navbar_menu">
            <ul class="first-ul">
                <li> <a class="active" href="${pageContext.request.contextPath}/">Home</a>
                    <ul>
                        <li><a href="it_home.html">It Home Page</a></li>
                        <li><a href="it_home_dark.html">It Dark Home Page</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/DangNhap">Đăng Nhập</a></li>
                <li> <a href="">Đăng Xuất</a></li>
                <li> <a href="it_blog.html">Blog</a>
                    <ul>
                        <li><a href="it_blog.html">Blog List</a></li>
                        <li><a href="it_blog_grid.html">Blog Grid</a></li>
                        <li><a href="it_blog_detail.html">Blog Detail</a></li>
                    </ul>
                </li>
                <li> <a href="#">Pages</a>
                    <ul>
                        <li><a href="it_career.html">Career</a></li>
                        <li><a href="it_price.html">Pricing</a></li>
                        <li><a href="it_faq.html">Faq</a></li>
                        <li><a href="it_privacy_policy.html">Privacy Policy</a></li>
                        <li><a href="it_error.html">Error 404</a></li>
                    </ul>
                </li>
                <li> <a href="it_shop.html">Shop</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/SanPhamListServlet">Shop List</a></li>
                        <li><a href="${pageContext.request.contextPath}/SanPhamDetailServlet">Shop Detail</a></li>
                        <li><a href="${pageContext.request.contextPath}/CartServlet">Shopping Cart</a></li>
                        <li><a href="${pageContext.request.contextPath}/CheckoutServlet">Checkout</a></li>
                        <li><a href="${pageContext.request.contextPath}/AccInforServlet">Account Information</a></li>
                    </ul>
                </li>
                <li> <a href="it_contact.html">Contact</a>
                    <ul>
                        <li><a href="it_contact.html">Contact Page 1</a></li>
                        <li><a href="it_contact_2.html">Contact Page 2</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="search_icon">
            <ul>
                <li><a href="#" data-toggle="modal" data-target="#search_bar"><i class="fa fa-search" aria-hidden="true"></i></a></li>
            </ul>
        </div>
    </div>
    <!-- menu end -->
</div>