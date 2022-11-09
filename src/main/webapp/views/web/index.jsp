<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Fashion Sneakers</title>

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

    <!-- Hero Section Begin -->
    <section class="hero">
      <div class="hero__slider owl-carousel">
        <div class="hero__items set-bg" data-setbg="views/web/img/hero/Banner.png">
          <div class="container">
            <div class="row">
              <div class="col-xl-5 col-lg-7 col-md-8">
                <div class="hero__text">
                  <h2>PASTAS LIVING JOURNEY</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="hero__items set-bg" data-setbg="views/web/img/hero/Banner.png">
          <div class="container">
            <div class="row">
              <div class="col-xl-5 col-lg-7 col-md-8">
                <div class="hero__text">
                  <h2>Fall - Winter Collections 2030</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Hero Section End -->

    <!-- Product Section Begin -->
    <section class="product spad mt-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <ul class="filter__controls">
              <li class="active" data-filter="*">Best Sellers</li>
              <li data-filter=".new-arrivals">New Arrivals</li>
              <li data-filter=".hot-sales">Hot Sales</li>
            </ul>
          </div>
        </div>
        <div class="row product__filter">
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/nb.jpg"
              >
                <span class="label">New</span>
              </div>
              <div class="product__item__text">
                <h6>New Balance 550 White Green</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>1.500.000 VND</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/mlb4.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>MLB Chunky New York White</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>3.800.000 VND</h5>              
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item sale">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/conver.jpg"
              >
                <span class="label">Sale</span>
              </div>
              <div class="product__item__text">
                <h6>Converse Chuck Taylor All Star 1970s</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>2.000.000 VND</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/jordan4.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>Nike Air Jordan 4 Pure Money</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>10.000.000 VND</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/jd1.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>Nike Air Jordan 1 Mid ‘College Grey’</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>4.000.000 VND</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item sale">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/converdo.jpg"
              >
                <span class="label">Sale</span>
              </div>
              <div class="product__item__text">
                <h6>Converse All-Court VLTG</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>1.190.000 VND</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/nike2.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>Nike Air Force 1</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>2.500.000 VND</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="views/web/img/product/ultratrang.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>Adidas Ultra Boost Triple White</h6>
                <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>
                <h5>3.000.000 VND</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Product Section End -->

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
