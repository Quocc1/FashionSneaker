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
                                <h4>Gi??? H??ng</h4>
                                <div class="breadcrumb__links">
                                    <a href="home">Trang Ch???</a>
                                    <a href="shop">C???a H??ng</a>
                                    <span>Gi??? H??ng</span>
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
                                        <th>S???n Ph???m</th>
                                        <th>S??? L?????ng</th>
                                        <th>Th??nh Ti???n</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="item" items="${cart.listCartItem}">
                                        <tr class="product_item">
                                            <td class="product-cart-item d-flex">
                                                <div class="product__cart__item__pic">
                                                    <img style="max-width: 130px;" src="ProductImage/${item.item.img_url}" alt="">
                                                </div>
                                                <div class="product__cart__item__text d-flex flex-column justify-content-around">
                                                    <h6 class="font-weight-bold">${item.item.product_name}</h6>
                                                    <h5 class="product-price" id="product-price">${item.item.price} VND</h5>
                                                    <p>Size: ${item.item.size}</p>
                                                </div>
                                            </td>

                                            <td class="quantity__item">
                                                <div class="quantity d-flex justify-content-center">
                                                    <p class="mx-2 my-0 product-quantity" id="product-quantity">${item.item_quantity}</p>
                                                </div>
                                            </td>
                                            <td id="total-product-money" class="cart__price">${item.item.price * item.item_quantity}  VND</td>
                                            <td class="cart__close" style="cursor: pointer"><i class="fa fa-close"></i></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">                      
                            <div class="ml-auto">
                                <div class="continue__btn update__btn">
                                    <a href="shop?page=1&maxPageItem=8&sortName=product.id&sortBy=asc">Ti???p T???c Mua H??ng </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart__discount">
                            <h6>M?? Gi???m Gi??</h6>
                            <form action="#">
                                <input type="text" placeholder="Nh???p M?? Gi???m Gi??">
                                <button type="submit">??p D???ng</button>
                            </form>
                        </div>
                        <div class="cart__total">
                            <h6>T???ng H??a ????n</h6>
                            <ul>
                                <li>T???ng Thu <span id="totalMoney"></span></li>
                                <li>Th??nh Ti???n <span id="totalPayment"></span></li>
                            </ul>
                            <a href="checkout" class="primary-btn text-light">Thanh To??n</a>
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
                    <input type="text" id="search-input" placeholder="T??m Ki???m T???i ????y.....">
                </form>
            </div>
        </div>
        <!-- Search End -->

        <script>
            $(document).ready(function () {
                countTotalMoney();
            });

            function countTotalMoney() {
                var totalPayment = 0;
                $('.cart__price').each(function (index, obj) {
                    totalPayment += parseInt($(this).text());
                });
                $('#totalMoney').text(totalPayment + ' VND');
                $('#totalPayment').text(totalPayment + ' VND');
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