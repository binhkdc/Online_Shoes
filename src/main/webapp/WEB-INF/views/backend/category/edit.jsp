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
                        <h2>Sửa loại sản phẩm</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/backend/category/list">Category</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Edit
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
                        <c:forEach var="category" items="${category}">
                            <form method="post" class="row g-3 was-validated d-flex justify-content-center" action="/backend/category/update">
                                <div class="col-sm-12 p-3 ">
                                    <div class="col-md-12">
                                        <label for="maloaigiay" class="form-label">Mã Loại Giày</label>
                                        <input type="text" placeholder="maloaigiay" value="${category.maloaigiay}" class="form-control" id="maloaigiay"
                                               name="maloaigiay" readonly required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Mã Loại Giày</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="loaigiay" class="form-label">Loại Giày</label>
                                        <input type="text" placeholder="tengiay" value="${category.loaigiay}" class="form-control"
                                               id="loaigiay" name="loaigiay" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Loại Giày</div>
                                    </div>

                                    <button type="submit" class="mt-3 btn btn-primary">Submit</button>
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