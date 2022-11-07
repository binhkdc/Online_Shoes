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
                        <h2>Hóa Đơn Xuất</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Hóa Đơn Xuất</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Danh sách
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

                        <p class="text-sm text-danger mb-20">
                            ${message}
                        </p>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th><h6>Mã HD Xuất</h6></th>
                                    <th><h6>Ngày Xuất</h6></th>
                                    <th><h6>Tên Người Dùng</h6></th>
                                    <th><h6>Tổng Tiền</h6></th>
                                    <th><h6>Chức Năng</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="hoadonxuat" items="${list}">
                                    <tr>
                                        <td><p>${hoadonxuat.mahdxuat}</p></td>
                                        <td><p>${hoadonxuat.ngayxuat}</p></td>
                                        <td><p>${hoadonxuat.fullname}</p></td>
                                        <td><p>${hoadonxuat.tongtien}$</p></td>
                                        <td class="min-width"> <a
                                                class="text-primary btn-lg"
                                                href="/backend/detail_export_invoice/details/${hoadonxuat.mahdxuat}"><i class="lni lni-eye"></i></a></td>

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