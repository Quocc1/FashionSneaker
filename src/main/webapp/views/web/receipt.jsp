<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Fashion Sneaker</title>

        <!-- Google Font -->
        <link
            href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
            rel="stylesheet"
            />

        <!-- Css Styles -->
        <link rel="stylesheet" href="views/web/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/elegant-icons.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/magnific-popup.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/nice-select.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/owl.carousel.min.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/slicknav.min.css" type="text/css" />
        <link rel="stylesheet" href="views/web/css/style.css" type="text/css" />

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
    </head>
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <jsp:include page="./includes/header.jsp"></jsp:include>
            <!-- Header Section End -->

            <!-- Body -->
            <section style="background-color: #eee;">
                <div class="container py-5">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card mb-4">
                                <div class="card-body text-center">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                                         class="rounded-circle img-fluid" style="width: 150px;">
                                    <h5 class="my-3 text-dark">${user.full_name}</h5>
                            </div>
                        </div>
                        <div class="card mb-4 mb-lg-0">
                            <div class="card-body p-0">
                                <ul class="list-group list-group-flush rounded-3">
                                    <c:if test="${!user.isAdmin}">
                                        <li class="list-group-item d-flex align-items-center p-3">
                                            <a href="profile?type=receipt">
                                                <div class="d-flex">
                                                    <img src="views/web/img/icon/receipt-solid.svg" alt="" class="mr-2" style="width: 18px">
                                                    <p class="mb-0 text-dark">Hóa Đơn</p>    
                                                </div>
                                            </a>
                                        </li>    
                                    </c:if>
                                    <li class="list-group-item d-flex align-items-center p-3">
                                        <a href="profile?type=password">
                                            <div class="d-flex">
                                                <img src="views/web/img/icon/key-solid.svg" alt="" class="mr-2" style="width: 18px">
                                                <p class="mb-0 text-dark">Đổi Mật Khẩu</p>
                                            </div>
                                        </a>
                                    </li>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="receipt-item">
                                    <div class="d-flex align-items-center">
                                        <div class="product__cart__item__pic d-flex align-items-center  mr-auto">
                                            <div class="product__cart__item__pic">
                                                <img style="max-width: 130px;" src="views/web/img/product/nb.jpg" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h5><b>New Balance 550 White Green</b></h5>
                                                <p class="m-0">x1</p>
                                            </div>
                                        </div>
                                        <div class="cart__price">
                                            <h5 tex><b>1.500.000 VND</b></h5>
                                        </div>
                                    </div>
                                    <div>
                                        <p>Ngày Mua: 12/12/2022</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <!-- End of Body -->


        <!-- Footer Section Begin -->
        <jsp:include page="./includes/footer.jsp"></jsp:include>
        <!-- Footer Section End -->
    </body>
</html>
