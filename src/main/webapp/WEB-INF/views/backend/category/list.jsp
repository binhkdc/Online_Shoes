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
                        <h2>Danh sách loại sản phẩm</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Category</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    List
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
                        <h6 class="mb-10"></h6>
                        <p class="text-sm text-danger mb-20">
                            ${message}
                        </p>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th><h6>Mã Loại Giày</h6></th>
                                    <th><h6>Loại Giày</h6></th>
                                    <th><h6>Chức Năng</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="category" items="${list}">
                                    <tr>
                                        <td  class="min-width"><p>${category.maloaigiay}</p></td>
                                        <td  class="min-width"><p>${category.loaigiay}</p></td>

                                        <td class="cell"><a class="btn-sm app-btn-secondary"
                                                            href="/backend/category/edit/${category.maloaigiay}">Edit</a> <a
                                                class="btn-sm app-btn-secondary"
                                                href="/backend/category/delete/${category.maloaigiay}">Delete</a> <a
                                                class="btn-sm app-btn-secondary"
                                                href="/backend/category/details/${category.maloaigiay}">View</a></td>
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