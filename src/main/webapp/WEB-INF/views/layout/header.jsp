<!DOCTYPE html>
<html>
<head>
    <title>Online_Shoes</title>
    <%@page pageEncoding="UTF-8" %>
    <link href="/bootstrap5/css/bootstrap.css" rel="stylesheet">
    <link href="/bootstrap5/css/style.css" rel="stylesheet">
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/backend/user/list">User</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/backend/product/list">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/backend/producer/list">Producer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/backend/category/list">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/backend/supplier/list">Supplier</a>
                </li>
<%--                <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        Dropdown--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                        <li><a class="dropdown-item" href="#">Action</a></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Another action</a></li>--%>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
            </ul>
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Login</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <span class="navbar-text">Xin Chao:<sec:authentication property="principal.fullName"></sec:authentication></span>
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="/logout" tabindex="-1" aria-disabled="true">logout</a>
                    </li>
                </sec:authorize>

            </ul>
        </div>
    </div>
</nav>