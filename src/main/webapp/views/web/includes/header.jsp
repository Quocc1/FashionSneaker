<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Header Section Begin -->
<header class="header text-white">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="header__top__right ml-auto">
                    <c:choose>
                        <c:when test="${empty user}">
                            <div class="header__top__links">
                                <a href="signin">Đăng Nhập</a>
                                <a href="signup">Đăng Kí</a>
                            </div>
                        </c:when>    
                        <c:otherwise>
                            <div class="header__top__links">
                                <a href="profile?type=show">Xin chào ${user.full_name}</a>
                                <a href="signout" class="text-danger">Đăng Xuất</a>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid"  style="background-color: #FFFFFF">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="Logo Web ml-4">
                        <a href="home"><img src="views/web/img/Logo Web.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="home" class="text-black">Trang Chủ</a></li>
                            <li><a href="shop?page=1&maxPageItem=8&sortName=product.id&sortBy=asc" class="text-black">Cửa Hàng</a></li>
                            <li><a href="shop?page=1&maxPageItem=8&sortName=product.id&sortBy=asc&category_id=1" class="text-black">Nam</a></li>
                            <li><a href="shop?page=1&maxPageItem=8&sortName=product.id&sortBy=asc&category_id=2" class="text-black">Nữ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="views/web/img/icon/search.png" alt="" style="width: 18px"></a>
                        <a href="cart"><img src="views/web/img/icon/cart.png" alt="" style="width: 18px"></a>   
                    </div>
                </div>

            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </div>
