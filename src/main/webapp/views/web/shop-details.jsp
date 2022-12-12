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


            <!-- Shop Details Section Begin -->
            <section class="shop-details">
                <div class="product__details__pic bg-white m-0 p-0">
                    <div class="container">
                        <div class="row w-50 m-auto">
                            <img src="ProductImage/${product.img_url}" alt="">
                    </div>
                </div>
            </div>
            <div class="product__details__content">
                <div class="container mb-5">
                    <form action="cart" id="formSignin" method="post">
                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                <div class="product__details__text">
                                    <h4>${product.product_name}</h4>                                  
                                    <h3>${product.price} VND</h3>                                   
                                    <div class="product__details__option">
                                        <div class="product__details__option__size">
                                            <h4>Size: <b>${product.size}</b></h4>
                                        </div>                                      
                                    </div>
                                    <div class="product__details__cart__option d-flex flex-column">
                                        <div class="quantity d-flex m-auto pb-5">
                                            <button onclick="increaseQuantity()" type="button" class="fa fa-angle-up dec qtybtn btn btn-light"></button>
                                            <h3 type="text" id="product-quantity" class="mx-2 my-0">1</h3>
                                            <button onclick="decreaseQuantity()" type="button" class="fa fa-angle-down inc qtybtn btn btn-light"></button>
                                        </div>
                                        <button type="submit" class="primary-btn text-light">Thêm Vào Giỏ Hàng</button>
                                        <input type="hidden" value="${product.id}" id="product_id" name="product_id"/>
                                        <input type="hidden" value="${cart.id}" id="cart_id" name="cart_id"/>
                                        <input type="hidden" value="" id="item_quantity" name="item_quantity"/>

                                    </div>                                   
                                    <div class="product__details__last__option">                                       
                                        <img src="views/web/img/shop-details/details-payment.png" alt="">                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product__details__tab">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active text-dark">Mô Tả Sản Phẩm</a>
                                        </li>                                      
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                            <div class="product__details__tab__content">                                          
                                                <div class="product__details__tab__content__item ">
                                                    <h5>Thông Tin Sản Phẩm</h5>
                                                    <p class="text-dark">${product.description}
                                                    </p>                                                  
                                                </div>                                             
                                            </div>
                                        </div>                                 
                                    </div>
                                </div>
                            </div>
                        </div>       
                    </form>
                </div>
            </div>
        </section>
        <!-- Shop Details Section End -->

        <!-- Footer Section Begin -->
        <jsp:include page="./includes/footer.jsp"></jsp:include>
        <!-- Footer Section End -->

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here....." />
                </form>
            </div>
        </div>
        <!-- Search End -->

        <script>
            $(document).ready(function () {
                $('#item_quantity').val(1);
            });

            function increaseQuantity() {
                var product_quantity = parseInt($('#product-quantity').text());
                $('#product-quantity').text(product_quantity + 1);
                $('#item_quantity').val(product_quantity + 1);
            }

            function decreaseQuantity() {
                var product_quantity = parseInt($('#product-quantity').text());
                if (product_quantity > 0) {
                    $('#product-quantity').text(product_quantity - 1);
                    $('#item_quantity').val(product_quantity + 1);
                }
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
