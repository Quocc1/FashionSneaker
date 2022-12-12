<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin-home">
        <div class="sidebar-brand-text">Fashion Sneaker</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link" href="admin-home">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Trang chủ</span></a>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="admin-chart">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Biểu đồ</span></a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="admin-product?type=list&page=1&maxPageItem=5&sortName=product.id&sortBy=asc">
            <i class="fas fa-fw fa-table"></i>
            <span>Sản phẩm</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="admin-customer?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc">
            <i class="fas fa-fw fa-table"></i>
            <span>Khách hàng</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="admin-receipt">
            <i class="fas fa-fw fa-table"></i>
            <span>Hóa đơn</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="admin-brand?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc">
            <i class="fas fa-fw fa-table"></i>
            <span>Thương hiệu</span></a>
    </li>
</ul>

