<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<section class="table-components">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title mb-30">
                        <h2>Danh sách sản phẩm</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/backend/product/list">Sản Phẩm</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Chi Tiết nhà sản xuất
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- ========== title-wrapper end ========== -->

        <!-- ========== tables-wrapper start ========== -->
        <div class="tables-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card-style mb-30">
                        <a class="form-label text-black" onclick="history.back()"><--- Go Back</a>
                        <p class="text-sm text-danger mb-20">
                            ${message}
                        </p>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th><h6>Mã Nhà Sản Xuất</h6></th>
                                    <th><h6>Tên Nhà Sản Xuất</h6></th>
                                    <th><h6>Địa Chỉ</h6></th>
                                    <th><h6>Email</h6></th>
                                    <th><h6>Số Điện Thoại</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="producer" items="${detail_producer}">
                                    <tr>
                                        <td><p>${producer.mansx}</p></td>
                                        <td><p>${producer.tennsx}</p></td>
                                        <td><p>${producer.diachi}</p></td>
                                        <td><p>${producer.email}</p></td>
                                        <td><p>${producer.sdt}</p></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <!-- end table -->
                        </div>
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

        </div>
        <!-- ========== tables-wrapper end ========== -->
    </div>
    <!-- end container -->
</section>


<%@include file="/WEB-INF/views/layout/footer.jsp"%>