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
                                <h4>Giỏ Hàng</h4>
                                <div class="breadcrumb__links">
                                    <a href="home">Trang Chủ</a>
                                    <a href="shop">Cửa Hàng</a>
                                    <span>Giỏ Hàng</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Shopping Cart Section Begin -->
            <section class="shopping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="shopping__cart__table">
                            <c:if test="${!empty messageResponse}">
                                <div class="alert alert-${alert}">
                                    ${messageResponse}
                                </div>
                            </c:if>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Sản Phẩm</th>
                                        <th>Số Lượng</th>
                                        <th>Thành Tiền</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="item" items="${cart.listCartItem}">
                                        <tr>
                                            <td class="product-cart-item-${item.id} d-flex">
                                                <div class="product__cart__item__pic">
                                                    <img style="max-width: 130px;" src="ProductImage/${item.item.img_url}" alt="">
                                                </div>
                                                <div class="product__cart__item__text d-flex flex-column justify-content-around">
                                                    <h6 class="font-weight-bold">${item.item.product_name}</h6>
                                                    <h5 class="product-price" id="product-price-${item.id}">${item.item.price} VND</h5>
                                                    <p>Size: ${item.item.size}</p>
                                                </div>
                                            </td>

                                            <td class="quantity__item">
                                                <div class="quantity d-flex justify-content-center">\
                                                    <button onclick="decreaseQuantity(this.value)" value="${item.id}" class="fa fa-angle-left dec qtybtn btn btn-light"></button>
                                                    <p class="mx-2 my-0" id="product-quantity-${item.id}">${item.item_quantity}</p>
                                                    <button onclick="increaseQuantity(this.value)" value="${item.id}" class="fa fa-angle-right inc qtybtn btn btn-light"></button>
                                                </div>
                                            </td>
                                            <td id="total-product-money-${item.id}" class="cart__price">${item.item.price} VND</td>
                                            <td class="cart__close" style="cursor: pointer"><i class="fa fa-close"></i></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">                      
                            <div class="ml-auto">
                                <div class="continue__btn update__btn">
                                    <a href="shop?page=1&maxPageItem=8&sortName=product.id&sortBy=asc">Tiếp Tục Mua Hàng </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart__discount">
                            <h6>Mã Giảm Giá</h6>
                            <form action="#">
                                <input type="text" placeholder="Nhập Mã Giảm Giá">
                                <button type="submit">Áp Dụng</button>
                            </form>
                        </div>
                        <div class="cart__total">
                            <h6>Tổng Hóa Đơn</h6>
                            <ul>
                                <li>Tổng Thu <span id="totalMoney"></span></li>
                                <li>Thành Tiền <span id="totalPayment"></span></li>
                            </ul>
                            <a href="checkout" class="primary-btn text-light">Thanh Toán</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shopping Cart Section End -->

        <!-- Footer Section Begin -->
        <jsp:include page="./includes/footer.jsp"></jsp:include>
        <!-- Footer Section End -->

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Tìm Kiếm Tại Đây.....">
                </form>
            </div>
        </div>
        <!-- Search End -->

        <script>
            $(document).ready(function () {
                countTotalMoney();
            });

            function increaseQuantity(value) {
                var product_quantity = parseInt($('#product-quantity-' + value).text());
                var price = parseInt($('#product-price-' + value).text());
                $('#product-quantity-' + value).text(product_quantity + 1);
                $('#total-product-money-' + value).text(price * (product_quantity + 1) + " VND");
                countTotalMoney();
            }

            function decreaseQuantity(value) {
                var product_quantity = parseInt($('#product-quantity-' + value).text());
                if (product_quantity > 0) {
                    var price = parseInt($('#product-price-' + value).text());
                    $('#product-quantity-' + value).text(product_quantity - 1);
                    $('#total-product-money-' + value).text(price * (product_quantity - 1) + " VND");
                    countTotalMoney();
                }
            }

            function countTotalMoney() {
                var totalMoney = 0;
                $('.cart__price').each(function (index, obj) {
                    totalMoney += parseInt($(this).text());
                });
                $('#totalMoney').text(totalMoney + ' VND');
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