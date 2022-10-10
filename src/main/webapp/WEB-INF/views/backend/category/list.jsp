<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>

            <th class="cell">Mã Loại Giày</th>
            <th class="cell">Loại Giày</th>
            <th class="cell">Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="category" items="${list}">
            <tr>
                <td>${category.maloaigiay}</td>
                <td>${category.loaigiay}</td>

                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/backend/category/edit/${category.maloaigiay}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/category/delete/${category.maloaigiay}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/backend/category/details/${category.maloaigiay}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>