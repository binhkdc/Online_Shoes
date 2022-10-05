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
            <th class="cell">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.UserId}</td>
                <td>${user.Full_Name}</td>
                <td>${user.Address}</td>
                <td>${user.Email}</td>
                <td>${user.Role}</td>
                <td class="cell"><a class="btn-sm app-btn-secondary"
                                    href="/user/edit/${user.UserId}">Edit</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/user/delete/${user.UserId}">Delete</a> <a
                        class="btn-sm app-btn-secondary"
                        href="/user/details/${user.UserId}">View</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>