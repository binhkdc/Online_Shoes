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
                        <h2>Tạo mới loại giày</h2>
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
                        <a class="form-label text-black" onclick="history.back()"><--- Go Back</a>
                        <p class="text-sm text-danger mb-20">
                            ${message}
                        </p>
                        <div class="table-wrapper table-responsive">
                            <form method="post" class="row g-3 was-validated d-flex justify-content-center"  action="save">
                                <div class="col-sm-12 p-3 ">
                                    <div class="col-md-12 pb-3">
                                        <label for="loaigiay" class="form-label">Loại Giày</label>
                                        <input type="text" placeholder="loaigiay" class="form-control" id="loaigiay" name="loaigiay" required>
                                        <div class="valid-feedback">&#160;</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường loaigiay</div>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Tạo mới</button>
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