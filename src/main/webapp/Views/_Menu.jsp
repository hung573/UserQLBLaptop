<%-- 
    Document   : _Menu
    Created on : 15 thg 12, 2023, 20:39:14
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
    <!-- logo start -->
    <div class="logo"> <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/images/logos/it_logo.png" alt="logo" /></a> </div>
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
                <c:if test="${session == null}">
                    <li><a href="${pageContext.request.contextPath}/DangNhap">Đăng Nhập</a></li>
                    <li><a href="${pageContext.request.contextPath}/DangKyForm">Đăng Ký</a></li>
                </c:if>
                <c:if test="${session != null}">
                    <li> <a href="${pageContext.request.contextPath}/DangXuat">Đăng Xuất</a></li>
                    <li> <a href="${pageContext.request.contextPath}/AccInforServlet">Thông tin tài khoản</a></li>
                </c:if>
                
                <li> <a href="it_shop.html">Shop</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/SanPhamListServlet">Shop List</a></li>
                        <li><a href="${pageContext.request.contextPath}/SanPhamDetailServlet">Shop Detail</a></li>
                        <li><a href="${pageContext.request.contextPath}/CartServlet">Shopping Cart</a></li>
                        <li><a href="${pageContext.request.contextPath}/CheckoutServlet">Checkout</a></li>
                        <li><a href="${pageContext.request.contextPath}/AccInforServlet">Account Information</a></li>
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