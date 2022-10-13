<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container">
    <span style="color: red">${message}</span>
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
        <c:forEach var="product" items="${list}">
            <tr>
                <td>${product.magiay}</td>
                <td>${product.tengiay}</td>
                <td>${product.mansx}</td>
                <td>${product.soluong}</td>
                <td>${product.size}</td>
                <td>${product.mausac}</td>
                <td>${product.gia}</td>
                <td>${product.hinhanh}</td>
                <td>${product.mota}</td>
                <td>${product.maloaigiay}</td>
                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/backend/product/edit/${product.magiay}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/product/delete/${product.magiay}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/product/details/${product.magiay}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp" %>