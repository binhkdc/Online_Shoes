<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th class="cell">Mã Nhà Cung Cấp</th>
            <th class="cell">Tên Nhà Cung Cấp</th>
            <th class="cell">Địa Chỉ</th>
            <th class="cell">Email</th>
            <th class="cell">Số Điện Thoại</th>
            <th class="cell">Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="supplier" items="${list}">
            <tr>
                <td>${supplier.mancc}</td>
                <td>${supplier.tenncc}</td>
                <td>${supplier.diachi}</td>
                <td>${supplier.email}</td>
                <td>${supplier.sdt}</td>
                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/backend/supplier/edit/${supplier.mncc}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/supplier/delete/${supplier.mncc}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/supplier/details/${supplier.mncc}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>