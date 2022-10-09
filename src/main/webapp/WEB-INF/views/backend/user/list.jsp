<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th class="cell">UserId</th>
            <th class="cell">Full_Name</th>
            <th class="cell">Address</th>
            <th class="cell">Email</th>
            <th class="cell">Role</th>
            <th class="cell">STATUS</th>
            <th class="cell">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.ID}</td>
                <td>${user.FULL_NAME}</td>
                <td>${user.ADDRESS}</td>
                <td>${user.EMAIL}</td>
                <td>${user.ROLE}</td>
                <td>${user.STATUS}</td>
                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/user/edit/${user.ID}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/user/delete/${user.ID}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/user/details/${user.ID}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>