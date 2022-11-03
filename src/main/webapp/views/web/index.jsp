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
        <div class="hero__items set-bg" data-setbg="views/web/img/hero/hero-1.jpg">
          <div class="container">
            <div class="row">
              <div class="col-xl-5 col-lg-7 col-md-8">
                <div class="hero__text">
                  <h6>Summer Collection</h6>
                  <h2>Fall - Winter Collections 2030</h2>
                  <a href="#" class="primary-btn"
                    >Shop now <span class="arrow_right"></span
                  ></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="hero__items set-bg" data-setbg="views/web/img/hero/hero-2.jpg">
          <div class="container">
            <div class="row">
              <div class="col-xl-5 col-lg-7 col-md-8">
                <div class="hero__text">
                  <h6>Summer Collection</h6>
                  <h2>Fall - Winter Collections 2030</h2>
                  <a href="#" class="primary-btn"
                    >Shop now <span class="arrow_right"></span
                  ></a>
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
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$1.500.000</h5>
                <div class="product__color__select">
                  <label for="pc-1">
                    <input type="radio" id="pc-1" />
                  </label>
                  <label class="active black" for="pc-2">
                    <input type="radio" id="pc-2" />
                  </label>
                  <label class="grey" for="pc-3">
                    <input type="radio" id="pc-3" />
                  </label>
                </div>
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
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$3.800.000</h5>
                <div class="product__color__select">
                  <label for="pc-4">
                    <input type="radio" id="pc-4" />
                  </label>
                  <label class="active black" for="pc-5">
                    <input type="radio" id="pc-5" />
                  </label>
                  <label class="grey" for="pc-6">
                    <input type="radio" id="pc-6" />
                  </label>
                </div>
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
                <h6>Chuck Taylor All Star 1970s</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$2.000.000</h5>
                <div class="product__color__select">
                  <label for="pc-7">
                    <input type="radio" id="pc-7" />
                  </label>
                  <label class="active black" for="pc-8">
                    <input type="radio" id="pc-8" />
                  </label>
                  <label class="grey" for="pc-9">
                    <input type="radio" id="pc-9" />
                  </label>
                </div>
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
                <h6>Air Jordan 4 Pure Money</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$10.000.000</h5>
                <div class="product__color__select">
                  <label for="pc-10">
                    <input type="radio" id="pc-10" />
                  </label>
                  <label class="active black" for="pc-11">
                    <input type="radio" id="pc-11" />
                  </label>
                  <label class="grey" for="pc-12">
                    <input type="radio" id="pc-12" />
                  </label>
                </div>
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
                <h6>Air Jordan 1 Mid ‘College Grey’</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$4.000.000</h5>
                <div class="product__color__select">
                  <label for="pc-13">
                    <input type="radio" id="pc-13" />
                  </label>
                  <label class="active black" for="pc-14">
                    <input type="radio" id="pc-14" />
                  </label>
                  <label class="grey" for="pc-15">
                    <input type="radio" id="pc-15" />
                  </label>
                </div>
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
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$1.190.000</h5>
                <div class="product__color__select">
                  <label for="pc-16">
                    <input type="radio" id="pc-16" />
                  </label>
                  <label class="active black" for="pc-17">
                    <input type="radio" id="pc-17" />
                  </label>
                  <label class="grey" for="pc-18">
                    <input type="radio" id="pc-18" />
                  </label>
                </div>
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
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$2.500.000</h5>
                <div class="product__color__select">
                  <label for="pc-19">
                    <input type="radio" id="pc-19" />
                  </label>
                  <label class="active black" for="pc-20">
                    <input type="radio" id="pc-20" />
                  </label>
                  <label class="grey" for="pc-21">
                    <input type="radio" id="pc-21" />
                  </label>
                </div>
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
                <h6>Ultra Boost Triple White</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$3.000.000</h5>
                <div class="product__color__select">
                  <label for="pc-22">
                    <input type="radio" id="pc-22" />
                  </label>
                  <label class="active black" for="pc-23">
                    <input type="radio" id="pc-23" />
                  </label>
                  <label class="grey" for="pc-24">
                    <input type="radio" id="pc-24" />
                  </label>
                </div>
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
