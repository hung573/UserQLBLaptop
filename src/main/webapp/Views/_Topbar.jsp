<%-- 
    Document   : _Topbar
    Created on : 16 thg 12, 2023, 14:18:03
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<c:if test="${session != null}">

    <div class="col-md-8">
        <div class="full">
            <div class="topbar-left">
                <ul class="list-inline">
                    <li> <span class="topbar-label"><i class="fa  fa-home"></i></span> <span class="topbar-hightlight">${psNhanVien.diaChi}</span> </li>
                    <li> <span class="topbar-label"><i class="fa fa-envelope-o"></i></span> <span class="topbar-hightlight"><a href="mailto:info@yourdomain.com">${psNhanVien.email}</a></span> </li>
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

            <div class="make_appo">
                <a class="btn white_btn" href="make_appointment.html">Account ${psNhanVien.ten}</a> 
            </div>

        </div>

    </div>
</c:if>
<c:if test="${session == null}">
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
</c:if>
