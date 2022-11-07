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
                        <h2>Danh sách nhà sản xuất</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Nhà sản xuất</a>
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
                        <a class="" href="/backend/producer/create"><h6 class="mb-10">Thêm nhà sản xuất</h6></a>
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
                                    <th><h6>Chức Năng</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="producer" items="${list}">
                                    <tr>
                                        <td><p>${producer.mansx}</p></td>
                                        <td><p>${producer.tennsx}</p></td>
                                        <td><p>${producer.diachi}</p></td>
                                        <td><p>${producer.email}</p></td>
                                        <td><p>${producer.sdt}</p></td>
                                        <td class="min-width"><a class="text-success btn-lg"
                                                                 href="/backend/producer/edit/${producer.mansx}"><i class="lni lni-pencil"></i></a> <a
                                                class="text-danger btn-lg"
                                                href="/backend/producer/delete/${producer.mansx}"><i class="lni lni-trash-can"></i></a> <a
                                                class="text-primary btn-lg"
                                                href="/backend/producer/details/${producer.mansx}"><i class="lni lni-eye"></i></a></td>
                                    </tr>
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