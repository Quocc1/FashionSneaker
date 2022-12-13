<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Male_Fashion Template">
        <meta name="keywords" content="Male_Fashion, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Fashion Sneaker</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="views/web/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/style.css" type="text/css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <jsp:include page="./includes/header.jsp"></jsp:include>
            <!-- Header Section End -->

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-option">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumb__text">
                                <h4>Check Out</h4>
                                <div class="breadcrumb__links">
                                    <a href="home">Home</a>
                                    <a href="shop">Shop</a>
                                    <span>Check Out</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Checkout Section Begin -->
            <section class="checkout spad">
                <div class="container">
                    <div class="checkout__form">
                        <form id="formSubmit" action="checkout" method="post">
                            <div class="row">
                                <div class="col-lg-8 col-md-6">
                                    <h6 class="checkout__title">Chi Tiết Hoá Đơn
                                        <div class="">
                                            <div class="checkout__input">
                                                <p>Họ Và Tên<span>*</span></p>
                                                <input required type="text" value="${user.full_name}" class="text-dark">
                                        </div>
                                    </div>
                                </h6>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <p>Địa Chỉ<span>*</span></p>
                            <input required type="text" value="${user.address}" class="text-dark">
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Số Điện Thoại<span>*</span></p>
                                    <input required type="text" value="${user.phone_number}" class="text-dark">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input required type="text" value="${user.email}" class="text-dark">
                                </div>
                            </div>
                        </div>
                </div>
                <div class="col-lg-12">
                    <div class="checkout__order">
                        <h4 class="order__title text-center">Đơn hàng của bạn</h4>
                        <div class="checkout__order__products">Sản phẩm<span>Tổng Tiền</span></div>
                        <ul class="checkout__total__products">
                            <c:forEach var="item" items="${cart.listCartItem}">
                                <li>${item.item.product_name} - Size: ${item.item.size} (${item.item_quantity})
                                    <span class="cart__price">${item.item.price * item.item_quantity} VND</span>
                                </li>
                            </c:forEach>
                        </ul>
                        <ul class="checkout__total__all">
                            <li>Tổng tiền <span id="totalPayment"></span></li>
                        </ul>

                        <p>Hình thức thanh toán</p>
                        <div class="checkout__input__radio text-dark">
                            <input required type="radio" id="momo" name="payment">
                            <label class="p-0 m-0 d-inline-block" for="momo">Momo</label>
                            <br>
                            <input required type="radio" id="cod" name="payment">
                            <label class="p-0 m-0 d-inline-block" for="cod">Thanh toán khi nhận hàng</label>
                        </div>
                        <button type="submit" class="site-btn">ĐẶT HÀNG</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<jsp:include page="./includes/footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<script>
    $(document).ready(function () {
        countTotalMoney();
    });

    function countTotalMoney() {
        var totalMoney = 0;
        $('.cart__price').each(function (index, obj) {
            totalMoney += parseInt($(this).text());
        });
        $('#totalPayment').text(totalMoney + ' VND');
    }
</script>

<!-- Js Plugins -->
<script src="views/web/js/jquery-3.3.1.min.js"></script>
<script src="views/web/js/bootstrap.min.js"></script>
<script src="views/web/js/jquery.nice-select.min.js"></script>
<script src="views/web/js/jquery.nicescroll.min.js"></script>
<script src="views/web/js/jquery.magnific-popup.min.js"></script>
<script src="views/web/js/jquery.countdown.min.js"></script>
<script src="views/web/js/jquery.slicknav.js"></script>
<script src="views/web/js/mixitup.min.js"></script>
<script src="views/web/js/owl.carousel.min.js"></script>
<script src="views/web/js/main.js"></script>
</body>

</html>