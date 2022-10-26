<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="/WEB-INF/views/layout/header.jsp" %>

<section class="table-components">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title mb-30">
                        <h2>Sửa người dùng</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/backend/product/list">User</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    edit
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
                        <c:forEach var="user" items="${user}">
                            <form method="post" class=" g-3 was-validated d-flex justify-content-center"
                                  action="/backend/user/update">
                                <div class="col-sm-12 p-3 ">
                                    <div class="col-md-12">
                                        <label for="id" class="form-label">Mã người dùng</label>
                                        <input type="text" placeholder="magiay" value="${user.ID}" class="form-control"
                                               id="id"
                                               name="id" readonly required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Mã người dùng</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="fullname" class="form-label">Tên đầy đủ</label>
                                        <input type="text" placeholder="fullname" value="${user.FULL_NAME}"
                                               class="form-control"
                                               id="fullname" name="fullName" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Tên đầy đủ</div>
                                    </div>


                                    <div class="col-md-12">
                                        <label for="address" class="form-label">Địa chỉ</label>
                                        <input type="text" placeholder="address" class="form-control"
                                               value="${user.ADDRESS}" id="address" name="address" required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Số lượng</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="text" placeholder="email" class="form-control"
                                               value="${user.EMAIL}" id="email" name="email" readonly required>
                                        <div class="valid-feedback">Vô cùng chính xác.</div>
                                        <div class="invalid-feedback">Vui lòng nhập vào trường Kích cỡ</div>
                                    </div>
                                    <label for="role">Đặc Quyền</label>


                                    <select class="form-select" aria-label="Default select example" id="role"
                                            name="role" required>
                                        <option value="ADMIN"> Admin</option>
                                        <option value="USER" selected> User</option>
                                    </select>


                                    <label for="status">Trạng thái</label>
                                    <select class="form-select" aria-label="Default select example" id="status"
                                            name="status" required>
                                        <c:set var="status" value="${user.STATUS}"/>

                                        <sec:authorize access="isAuthenticated()">


                                        </sec:authorize>
                                        <c:choose>
                                            <c:when test="${status == 1}">
                                                <option value="1" selected class="text-success"> Active</option>
                                                <option value="0" class="text-danger"> Close</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="1" class="text-success"> Active</option>
                                                <option value="0" selected class="text-danger"> Close</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </select>

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