<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th class="cell">Mã Giày</th>
            <th class="cell">Tên Giày</th>
            <th class="cell">Mã Nhà Sản Xuất</th>
            <th class="cell">Số Lượng</th>
            <th class="cell">Kích cỡ</th>
            <th class="cell">Màu</th>
            <th class="cell">Giá</th>
            <th class="cell">Hình Ảnh</th>
            <th class="cell">Mô Tả</th>
            <th class="cell">Mã Loại Giày</th>
            <th class="cell">Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.magiay}</td>
                <td>${user.tengiay}</td>
                <td>${user.mansx}</td>
                <td>${user.soluong}</td>
                <td>${user.size}</td>
                <td>${user.mausac}</td>
                <td>${user.gia}</td>
                <td>${user.hinhanh}</td>
                <td>${user.mota}</td>
                <td>${user.maloaigiay}</td>
                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/backend/product/edit/${user.ID}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/product/delete/${user.ID}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/product/details/${user.ID}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>