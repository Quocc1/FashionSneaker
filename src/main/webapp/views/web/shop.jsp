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
        <title>Fashion Sneakers</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Js Plugin -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
        <script src="views/web/js/jquery.twbsPagination.js" type="text/javascript"></script>


        <!-- Css Styles -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
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

            <!-- Shop Section Begin -->
            <section class="shop spad">
                <div class="container">
                    <div class="row">
                        <div class="col d-flex justify-content-end">
                            <img src="views/web/img/icon/filter.png" style="width: 28px">
                            <span style="color: #000">Bộ Lọc</span>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach var="item" items="${model.listResult}">
                        <a href="product?id=${item.id}" class="col-lg-3 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="ProductImage/${item.img_url}">
                                </div>
                                <div class="product__item__text">
                                    <h6>${item.product_name}</h6>                                  
                                    <h5>${item.price} VND</h5>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <!--                    <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item sale">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/nb.jpg">
                                                    <span class="label">Sale</span>
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>New Balance 550 White Green</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                            
                                                    <h5>1.500.000 VND</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/mlb4.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>MLB Chunky New York White</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                   
                                                    <h5>3.800.000 VND</h5>                                 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item sale">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/jordan4.jpg">
                                                    <span class="label">Sale</span>
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Nike Air Jordan 4 Pure Money</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>10.000.000 VND</h5>                              
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/jd1.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Nike Air Jordan 1 Mid ‘College Grey’</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                   
                                                    <h5>4.000.000 VND</h5>                               
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/converdo.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Converse All-Court VLTG</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                   
                                                    <h5>1.190.000 VND</h5>                                  
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/nike2.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Nike Air Force 1</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                    
                                                    <h5>2.500.000 VND</h5>                                  
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item sale">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/ultratrang.jpg">
                                                    <span class="label">Sale</span>
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Adidas Ultra Boost Triple White</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                   
                                                    <h5>3.000.000 VND</h5>                                   
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/OIP.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>PUMA SMASH</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                    
                                                    <h5>1.800.000 VND</h5>                             
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item sale">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/vans2.jpg">
                                                    <span class="label">Sale</span>
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Vans Old Skool White</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                   
                                                    <h5>1.900.000 VND</h5>                                  
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/stan2.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Adidas Stan Smith</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>1.500.000 VND</h5>                              
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/nb2.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>New Balance 574 'White Blue'</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>3.500.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/mlbgreen.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>MLB Chunky Liner New York Green</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>3.800.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/vansden.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Vans Old Skool Classic Black</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>1.700.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/puma3.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Puma Slipstream Lo Reprise</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>2.800.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/nike77.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Nike Sportwear Blazer 77</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>4.500.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/cv3.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Converse Run Star Hike</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>2.500.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/pro.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Adidas Prophere Xanh Navy</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>1.500.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/jordan10.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Nike Air Jordan 1 High Panda Twist</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>5.500.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="views/web/img/product/slip.jpg">
                                                </div>
                                                <div class="product__item__text">
                                                    <h6>Vans Classic Slip-On</h6>
                                                    <a href="#" class="add-cart">+ Thêm Vào Giỏ Hàng</a>                                  
                                                    <h5>2.500.000 VND</h5>                                
                                                </div>
                                            </div>
                                        </div>-->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="pagination ml-auto" id="pagination"></ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shop Section End -->

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
                var totalPages = ${model.totalPage};
                var currentPage = ${model.page};
                var limit = 2;
                $(function () {
                    window.pagObj = $('#pagination').twbsPagination({
                        totalPages: totalPages,
                        visiblePages: totalPages,
                        startPage: currentPage,
                        onPageClick: function (event, page) {
                            if (currentPage != page) {
                                $('#maxPageItem').val(limit);
                                $('#page').val(page);
                                $('#sortName').val('id');
                                $('#sortBy').val('asc');
                                $('#type').val('list');
                                $('#formSubmit').submit();
                            }
                        }
                    });
                });
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