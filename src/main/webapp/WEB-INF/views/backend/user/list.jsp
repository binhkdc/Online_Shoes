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
                        <h2>Danh sách người dùng</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/backend/user/list">User</a>
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
                                    <th><h6>Id</h6></th>
                                    <th><h6>Full_Name</h6></th>
                                    <th><h6>Address</h6></th>
                                    <th><h6>Email</h6></th>
                                    <th><h6>Role</h6></th>
                                    <th><h6>STATUS</h6></th>
                                    <th><h6>Actions</h6></th>
                                </tr>
                                <!-- end table row-->
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${list}">
                                    <tr>
                                        <td class="min-width"><p>${user.ID}</p></td>
                                        <td class="min-width"><p>${user.FULL_NAME}</p></td>
                                        <td class="min-width"><p>${user.ADDRESS}</p></td>
                                        <td class="min-width"><p>${user.EMAIL}</p></td>
                                        <td class="min-width"><p>${user.ROLE}</p></td>
                                        <td class="min-width"><p>${user.STATUS}</p></td>
                                        <td class="min-width"><a class="btn-sm app-btn-secondary"
                                                            href="/user/edit/${user.ID}">Edit</a> <a
                                                class="btn-sm app-btn-secondary"
                                                href="/user/delete/${user.ID}">Delete</a> <a
                                                class="btn-sm app-btn-secondary"
                                                href="/user/details/${user.ID}">View</a></td>
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