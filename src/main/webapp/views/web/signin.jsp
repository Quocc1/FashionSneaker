<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.0/mdb.min.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="views/web/css/bootstrap.min.css" type="text/css" />
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
        <title>Fashion Sneaker</title>
    </head>
    <body>
        <!-- Header Section Begin -->
        <jsp:include page="./includes/header.jsp"></jsp:include>
            <!-- Header Section End -->
            <!-- Section: Design Block -->
            <section class="text-center">
                <!-- Background image -->
                <div class="p-5 bg-image" style="
                     background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg');
                     height: 300px;
                     "></div>
                <!-- Background image -->

                <div class="card mx-4 mx-md-5 shadow-5-strong" style="
                     margin-top: -100px;
                     background: hsla(0, 0%, 100%, 0.8);
                     backdrop-filter: blur(30px);
                     ">
                    <div class="card-body py-5 px-md-5">

                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                <c:if test="${not empty message}">
                                <div class="alert alert-${alert}">
                                    ${message}
                                </div>
                            </c:if>
                            <h2 class="fw-bold mb-5 text-black">Đăng Nhập</h2>
                            <form action="signin" id="formSignin" method="post">

                                <!-- Email input -->
                                <input type="email" id="email" name="email" placeholder="Email" class="form-control mb-4" />
                                
                                <!-- Password input -->
                                <input type="password" id="password" name="password" placeholder="Mật khẩu" class="form-control mb-5" />

                                <!-- Submit button -->
                                <button type="submit" class="btn btn-primary btn-block mb-4">
                                    Đăng Nhập
                                </button>

                                <!-- Register buttons -->
                                <div class="text-center">
                                    <p class="text-black">Nếu Bạn Chưa Có Tài Khoản?<a href="signup" class="text-primary">Đăng Kí.</a> </p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Design Block -->
    </body>
</html>
