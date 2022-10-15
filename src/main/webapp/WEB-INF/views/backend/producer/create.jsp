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
                        <h2>Tạo mới nhà sản xuất</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Producer</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Create
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
                            <form method="post" class="row g-3 was-validated d-flex justify-content-center" oninput='rePassword.setCustomValidity(rePassword.value != Password.value ? "Mật khẩu 2 trường không giống nhau!!." : "")' action="save">
                                <div class="col-sm-12 p-3 ">
                                    <div class="col-md-12">
                                        <label for="tennsx" class="form-label">Tên Nhà Sản Xuất</label>
                                        <input type="text" placeholder="tennsx" class="form-control" id="tennsx" name="tennsx" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường tennsx</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="diachi" class="form-label">Địa Chỉ</label>
                                        <input type="text" placeholder="diachi" class="form-control" id="diachi" name="diachi" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường diachi</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" placeholder="email" class="form-control" id="email" name="email" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Email</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="sdt" class="form-label">Số Điện Thoại
                                        </label>
                                        <input type="number" placeholder="password" class="form-control" id="sdt" name="sdt" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Password</div>
                                    </div>


                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
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