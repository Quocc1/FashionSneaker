<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Fashion Sneaker - Admin</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
        <script src="views/admin/js/jquery.twbsPagination.js" type="text/javascript"></script>

        <!-- Custom fonts for this template -->
        <link href="views/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="views/admin/css/sb-admin-2.min.css" rel="stylesheet">
        <link href="views/admin/css/table.css" rel="stylesheet">


        <!-- Custom styles for this page -->
        <link href="views/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <jsp:include page="./includes/sidebar.jsp"></jsp:include>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                    <jsp:include page="./includes/header.jsp"></jsp:include>
                        <!-- End of Topbar -->


                        <!-- Start of Table -->
                        <form action="admin-product" id="formSubmit" method="get">
                            <div class="container-xl">
                                <div class="table-responsive">
                                    <div class="table-wrapper">
                                        <div class="table-title">
                                        <c:if test="${not empty messageResponse}">
                                            <div class="alert alert-${alert}">
                                                ${messageResponse}
                                            </div>
                                        </c:if>
                                        <div class="row">
                                            <div class="col-sm-8"><h2><b>Thông Tin Sản Phẩm</b></h2></div>
                                            <div class="col-sm-4 d-flex">
                                                <a href="admin-product?type=edit" class="btn btn-primary" id="btnInsert" title="Thêm" data-toggle="tooltip">Thêm Sản Phẩm</a>
                                                <div class="search-box ml-3">
                                                    <i class="material-icons">&#xE8B6;</i>
                                                    <input type="text" class="form-control" placeholder="Tìm Theo Tên&hellip;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="table table-striped table-hover table-bordered">
                                        <thead>
                                            <tr>
                                                <!--<i class="fa fa-sort"></i>-->
                                                <th>Id</th>
                                                <th class="col-1">Category</th>
                                                <th class="col-1">Brand</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Price</th>                                           
                                                <th>Size</th>
                                                <th class="col-1">Quantity</th>
                                                <th>Image</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="item" items="${product.listResult}">
                                                <tr>
                                                    <td>${item.id}</td>
                                                    <td>${item.category_name}</td>
                                                    <td>${item.brand_name}</td>
                                                    <td>${item.product_name}</td>
                                                    <td>${item.description}</td>
                                                    <td>${item.price}</td>
                                                    <td>${item.size}</td>
                                                    <td>${item.quantity}</td>
                                                    <td><image src="ProductImage/${item.img_url}" alt="${item.img_url}" style="max-width: 100px;"></td>
                                                    <td>
                                                        <a href="admin-product?type=edit&id=${item.id}" class="btn" id="btnEdit" title="Sửa" data-toggle="tooltip"><i class="material-icons edit">&#xE254;</i></a>
                                                        <button type="button" class="btn" id="btnDelete" value="${item.id}" title="Xóa" data-toggle="tooltip"><i class="material-icons delete">&#xE872;</i></button>
                                                    </td>
                                                </tr>    
                                            </c:forEach>


                                        </tbody>
                                    </table>
                                    <div class="clearfix d-flex">
                                        <div class="hint-text">Hiển thị <b>${product.maxPageItem}</b> trên tổng <b>${product.totalItem}</b> sản phẩm</div>
                                        <ul class="pagination ml-auto" id="pagination"></ul>
                                        <input type="hidden" value="" id="page" name="page"/>
                                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                                        <input type="hidden" value="" id="sortName" name="sortName"/>
                                        <input type="hidden" value="" id="sortBy" name="sortBy"/>
                                        <input type="hidden" value="" id="type" name="type"/>
                                        <input type="hidden" value="" id="id" name="id"/>
                                        <input type="hidden" name="method" value="DELETE">
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </form>
                    <!-- End of Table -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <jsp:include page="./includes/footer.jsp"></jsp:include>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <script>
                var totalPages = ${product.totalPage};
                var currentPage = ${product.page};
                var limit = 5;
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

                $("#btnDelete").click(function () {
                    $('#id').val($(this).attr("value"));
                    $('#formSubmit').attr('method', 'post');
                    $('#formSubmit').attr('action', 'api-admin-product');
                    $('#formSubmit').submit();
                });
        </script>

        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

        <!-- Bootstrap core JavaScript-->
        <script src="/views/admin/vendor/jquery/jquery.min.js"></script>
        <script src="/views/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="/views/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="/views/admin/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="/views/admin/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="/views/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="/views/admin/js/demo/datatables-demo.js"></script>

    </body>

</html>