<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

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
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img style="max-width: 130px;" src="views/web/img/product/nb.jpg" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>New Balance 550 White Green</h6>
                                            <h5>1.500.000 VND</h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">1.500.000 VND</td>
                                    <td class="cart__close"><i class="fa fa-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img style="max-width: 130px;" src="views/web/img/product/mlb4.jpg" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>MLB Chunky New York White</h6>
                                            <h5>3.800.000 VND</h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">3.800.000 VND</td>
                                    <td class="cart__close"><i class="fa fa-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img style="max-width: 130px;" src="views/web/img/product/conver.jpg" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>Converse Chuck Taylor All Star 1970s</h6>
                                            <h5>2.000.000 VND</h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">2.000.000 VND</td>
                                    <td class="cart__close"><i class="fa fa-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img style="max-width: 130px;" src="views/web/img/product/jordan4.jpg" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>Nike Air Jordan 4 Pure Money</h6>
                                            <h5>10.000.000 VND</h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">10.000.000 VND</td>
                                    <td class="cart__close"><i class="fa fa-close"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">                      
                        <div class="ml-auto">
                            <div class="continue__btn update__btn">
                                <a href="#">Tiếp Tục Mua Hàng </a>
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
                            <li>Tổng Thu <span>17.300.000 VND</span></li>
                            <li>Thành Tiền <span>17.300.000 VND</span></li>
                        </ul>
                        <a href="checkout" class="primary-btn">Kiểm Tra</a>
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