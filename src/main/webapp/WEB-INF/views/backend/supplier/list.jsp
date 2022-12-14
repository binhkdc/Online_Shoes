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
                        <h2>Danh sách nhà cung cấp</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Nhà Cung Cấp</a>
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
                        <a class="" href="/backend/supplier/create"><h6 class="mb-10">Thêm nhà cung cấp</h6></a>
                        <p class="text-sm text-danger mb-20">
                            ${message}
                        </p>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th><h6>Mã Nhà Cung Cấp</h6></th>
                                    <th><h6>Tên Nhà Cung Cấp</h6></th>
                                    <th><h6>Địa Chỉ</h6></th>
                                    <th><h6>Email</h6></th>
                                    <th><h6>Số Điện Thoại</h6></th>
                                    <th><h6>Chức Năng</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="supplier" items="${list}">
                                    <tr>
                                        <td class="min-width"><p>${supplier.mancc}</p></td>
                                        <td class="min-width"><p>${supplier.tenncc}</p></td>
                                        <td class="min-width"><p>${supplier.diachi}</p></td>
                                        <td class="min-width"><p>${supplier.email}</p></td>
                                        <td class="min-width"><p>${supplier.sdt}</p></td>
                                        <td class="min-width"><a class="text-success btn-lg"
                                                                 href="/backend/supplier/edit/${supplier.mncc}"><i class="lni lni-pencil"></i></a> <a
                                                class="text-danger btn-lg"
                                                href="/backend/supplier/delete/${supplier.mncc}"><i class="lni lni-trash-can"></i></a> <a
                                                class="text-secondary btn-lg"
                                                href="/backend/supplier/details/${supplier.mncc}"><i class="lni lni-eye"></i></a></td>
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