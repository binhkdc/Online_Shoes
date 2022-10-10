<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th class="cell">Mã Nhà Sản Xuất</th>
            <th class="cell">Tên Nhà Sản Xuất</th>
            <th class="cell">Địa Chỉ</th>
            <th class="cell">Email</th>
            <th class="cell">Số Điện Thoại</th>
            <th class="cell">Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="producer" items="${list}">
            <tr>
                <td>${producer.mansx}</td>
                <td>${producer.tennsx}</td>
                <td>${producer.diachi}</td>
                <td>${producer.email}</td>
                <td>${producer.sdt}</td>
                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/backend/producer/edit/${producer.mnsx}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/producer/delete/${producer.mnsx}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/producer/details/${producer.mnsx}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>