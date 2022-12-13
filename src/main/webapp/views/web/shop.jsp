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

        <!-- Js Plugin -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
        <script src="views/web/js/jquery.twbsPagination.js" type="text/javascript"></script>


        <!-- Css Styles -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="views/web/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="views/web/css/style.css" type="text/css">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>

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
                    <form id="formSubmit" action="shop" method="get">
                        <div class="row">
                        <c:forEach var="item" items="${product.listResult}">
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
                    </div>
                    <div class="row">
                        <ul class="pagination-lg mx-auto my-0" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                        <input type="hidden" value="" id="sortName" name="sortName"/>
                        <input type="hidden" value="" id="sortBy" name="sortBy"/>
                        <input type="hidden" value="" id="type" name="type"/>
                    </div>
                </form>
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
                var totalPages = ${product.totalPage};
                var currentPage = ${product.page};
                var limit = 8;
                $(function () {
                    window.pagObj = $('#pagination').twbsPagination({
                        totalPages: totalPages,
                        visiblePages: totalPages,
                        startPage: currentPage,
                        onPageClick: function (event, page) {
                            if (currentPage != page) {
                                $('#maxPageItem').val(limit);
                                $('#page').val(page);
                                $('#sortName').val('product.id');
                                $('#sortBy').val('asc');
                                $('#type').val('list');
                                $('#formSubmit').submit();
                            }
                        }
                    });
                });
        </script>

        <!-- Js Plugins -->
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