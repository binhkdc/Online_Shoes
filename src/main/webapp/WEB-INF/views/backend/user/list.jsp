<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                                    <a href="#">Người dùng</a>
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
                                    <th><h6>Tên Đầy Đủ</h6></th>
                                    <th><h6>Địa Chỉ</h6></th>
                                    <th><h6>Email</h6></th>
                                    <th><h6>Quyền</h6></th>
                                    <th><h6>Trạng Thái</h6></th>
                                    <th><h6>Chức Năng</h6></th>
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
                                        <c:set var="status" value="${user.STATUS}"/>
                                        <c:choose>
                                            <c:when test="${status == 1}">
                                                <td class="min-width">
                                                    <span class="status-btn active-btn">Hoạt Động</span>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <td class="min-width">
                                                    <span class="status-btn close-btn">Tạm Dừng</span>
                                                </td>
                                            </c:otherwise>
                                        </c:choose>
                                        <sec:authorize access="isAuthenticated()">
                                            <c:set var="idlogin">
                                                <sec:authentication property="principal.id"></sec:authentication>
                                            </c:set>
                                        </sec:authorize>

                                            <c:set var="id" value="${user.ID}"/>
                                            <c:choose>

                                                <c:when test="${id == idlogin }">

                                                </c:when>
                                                <c:otherwise>
                                                    <td>
                                                        <div class="action">
                                                            <a class="text-danger" href="/backend/user/edit/${user.ID}">
                                                                <i class="lni lni-pencil"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </c:otherwise>
                                            </c:choose>

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

    </div>
    <!-- end container -->
</section>


<%@include file="/WEB-INF/views/layout/footer.jsp"%>