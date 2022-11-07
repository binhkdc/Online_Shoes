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
                        <h2>Chi Tiết Nhà Sản Xuất</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/backend/producer/list">Nhà Sản Xuất</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Chi tiết
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

                        <a class="form-label text-black" onclick="history.back()"><--- Quay lại</a>
                        <c:forEach var="producer" items="${producer}">
                            <form method="post" class="row g-3 was-validated d-flex justify-content-center">
                                <div class="col-sm-12 p-3 ">
                                    <div class="col-md-12">
                                        <label for="mansx" class="form-label">Mã Nhà Sản Xuất</label>
                                        <input type="text" placeholder="mã nhà sản xuât" value="${producer.mansx}" class="form-control" id="mansx"
                                               name="mansx" readonly required>
                                        <div class="valid-feedback">&#160;</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Mã Nhà Sản Xuất</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="tennsx" class="form-label">Tên Nhà Sản Xuất</label>
                                        <input type="text" placeholder="tên nhà sản xuât" value="${producer.tennsx}" class="form-control" id="tennsx"
                                               name="tennsx" readonly required>
                                        <div class="valid-feedback">&#160;</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Tên Nhà Sản Xuất</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="diachi" class="form-label">Địa Chỉ</label>
                                        <input type="text" placeholder="địa chỉ" value="${producer.diachi}" class="form-control" id="diachi"
                                               name="diachi" readonly required>
                                        <div class="valid-feedback">&#160;</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Địa Chỉ</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="text" placeholder="Email" value="${producer.email}" class="form-control" id="email"
                                               name="email" readonly required>
                                        <div class="valid-feedback">&#160;</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Mã Loại Giày</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="sdt" class="form-label">Số Điện thoại</label>
                                        <input type="text" placeholder="Số Điện thoại" value="${producer.sdt}" class="form-control" id="sdt"
                                               name="sdt" readonly required>
                                        <div class="valid-feedback">&#160;</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Số Điện thoại</div>
                                    </div>

                                    <a href="/backend/producer/edit/${producer.mansx}" class="mt-3 btn btn-primary">Sửa Nhà Sản Xuất</a>
                                </div>
                            </form>

                        </c:forEach>
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