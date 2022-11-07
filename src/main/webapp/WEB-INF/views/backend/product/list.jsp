<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/layout/header.jsp" %>

<section class="table-components">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title mb-30">
                        <h2>Danh sách sản phẩm (${countsize.countsize} Sản Phẩm)</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Sản Phẩm</a>
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
                        <a class="" href="/backend/product/create"><h6 class="mb-10">Thêm sản phẩm</h6></a>
                        <p class="text-sm text-danger mb-20">
                            ${message}
                        </p>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th><h6>Mã Giày</h6></th>
                                    <th><h6>Tên Giày</h6></th>
                                    <th><h6>Mã Nhà Sản Xuất</h6></th>
                                    <th><h6>Số Lượng</h6></th>
                                    <th><h6>Kích cỡ</h6></th>
                                    <th><h6>Màu</h6></th>
                                    <th><h6>Mã Loại Giày</h6></th>
                                    <th><h6>Chức Năng</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="product" items="${list}">
                                    <tr>
                                        <td class="min-width"><p>${product.magiay}</p></td>
                                        <td class="min-width"><p>${product.tengiay}</p></td>
                                        <td class="min-width"><p><a href="/backend/product/detail_producer/${product.mansx}">${product.mansx}</a></p></td>
                                        <td class="min-width"><p>${product.soluong}</p></td>
                                        <td class="min-width"><p>${product.size}</p></td>
                                        <td class="min-width"><p>${product.mausac}</p></td>
                                        <td class="min-width"><p><a href="/backend/product/detail_category/${product.maloaigiay}">${product.maloaigiay}</a></p></td>
                                        <td class="min-width"><a class="text-success btn-lg"
                                                            href="/backend/product/edit/${product.magiay}"><i class="lni lni-pencil"></i></a> <a
                                                class="text-danger btn-lg"
                                                href="/backend/product/delete/${product.magiay}"><i class="lni lni-trash-can"></i></a> <a
                                                class="text-primary btn-lg"
                                                href="/backend/product/details/${product.magiay}"><i class="lni lni-eye"></i></a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <nav class="app-pagination">
                                <ul class="pagination justify-content-center">

                                        <c:set var="activepage" value="${pagination.activePage}" />
                                        <c:choose>
                                            <c:when test="${activepage == 1}">
                                                <li class="page-item disabled"><a class="page-link" href="#">&laquo;</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item"><a class="page-link"
                                                                         href="list?page=${pagination.prePage}">&laquo;</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:forEach var="Total" begin="1" end="${totalend+1}">
                                            <c:set var="activepage" value="${activepage}" />
                                            <c:set var="Page" value="${Total}" />
                                            <c:choose>
                                                <c:when test="${activepage == Page}">
                                                    <li class="page-item active" aria-current="page"><span
                                                            class="page-link">${Total}</span></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="page-item"><a class="page-link"
                                                                             href="/backend/product/list?page=${Total}">${Total}</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        <c:set var="activepage" value="${pagination.activePage}" />
                                        <c:set var="Page" value="${totalend}" />
                                        <c:choose>
                                            <c:when test="${activepage == Page+1}">
                                                <li class="page-item disabled"><a class="page-link" href="#">&raquo;</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item"><a class="page-link"
                                                                         href="list?page=${pagination.nextPage}">&raquo;</a></li>
                                            </c:otherwise>
                                        </c:choose>

                                </ul>
                            </nav>
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

<%@include file="/WEB-INF/views/layout/footer.jsp" %>