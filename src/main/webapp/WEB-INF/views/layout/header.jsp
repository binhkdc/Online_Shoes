<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/assets/images/favicon.svg" type="image/x-icon"/>
    <title>Tables | PlainAdmin Demo</title>

    <!-- ========== All CSS files linkup ========= -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/assets/css/lineicons.css"/>
    <link rel="stylesheet" href="/assets/css/materialdesignicons.min.css"/>
    <link rel="stylesheet" href="/assets/css/fullcalendar.css"/>
    <link rel="stylesheet" href="/assets/css/main.css"/>
</head>
<body>
<!-- ======== sidebar-nav start =========== -->
<aside class="sidebar-nav-wrapper">
    <div class="navbar-logo">
        <a href="index.html">
            <img src="/assets/images/logo/logo.svg" alt="logo"/>
        </a>
    </div>
    <nav class="sidebar-nav">
        <ul>
            <li class="nav-item nav-item-has-children">
                <a
                        href="#0"
                        data-bs-toggle="collapse"
                        data-bs-target="#ddmenu_1"
                        aria-controls="ddmenu_1"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
              <span class="icon">
                <svg width="22" height="22" viewBox="0 0 22 22">
                  <path
                          d="M17.4167 4.58333V6.41667H13.75V4.58333H17.4167ZM8.25 4.58333V10.0833H4.58333V4.58333H8.25ZM17.4167 11.9167V17.4167H13.75V11.9167H17.4167ZM8.25 15.5833V17.4167H4.58333V15.5833H8.25ZM19.25 2.75H11.9167V8.25H19.25V2.75ZM10.0833 2.75H2.75V11.9167H10.0833V2.75ZM19.25 10.0833H11.9167V19.25H19.25V10.0833ZM10.0833 13.75H2.75V19.25H10.0833V13.75Z"
                  />
                </svg>
              </span>
                    <span class="text">Dashboard</span>
                </a>
                <ul id="ddmenu_1" class="collapse show dropdown-nav">
                    <li>
                        <a href="/backend/chart" class="active"> ChartJs </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item nav-item-has-children">
                <a
                        href="#0"
                        class="collapsed"
                        data-bs-toggle="collapse"
                        data-bs-target="#ddmenu_4"
                        aria-controls="ddmenu_4"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
              <span class="icon">
                <svg
                        width="22"
                        height="22"
                        viewBox="0 0 22 22"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                          d="M4.58333 3.66675H17.4167C17.9029 3.66675 18.3692 3.8599 18.713 4.20372C19.0568 4.54754 19.25 5.01385 19.25 5.50008V16.5001C19.25 16.9863 19.0568 17.4526 18.713 17.7964C18.3692 18.1403 17.9029 18.3334 17.4167 18.3334H4.58333C4.0971 18.3334 3.63079 18.1403 3.28697 17.7964C2.94315 17.4526 2.75 16.9863 2.75 16.5001V5.50008C2.75 5.01385 2.94315 4.54754 3.28697 4.20372C3.63079 3.8599 4.0971 3.66675 4.58333 3.66675ZM4.58333 7.33341V11.0001H10.0833V7.33341H4.58333ZM11.9167 7.33341V11.0001H17.4167V7.33341H11.9167ZM4.58333 12.8334V16.5001H10.0833V12.8334H4.58333ZM11.9167 12.8334V16.5001H17.4167V12.8334H11.9167Z"
                  />
                </svg>
              </span>
                    <span class="text">Tables </span>
                </a>
                <ul id="ddmenu_4" class="collapse dropdown-nav">
                    <li>
                        <a href="/backend/category/list"> Category</a>
                    </li>
                    <li>
                        <a href="/backend/producer/list"> Producer </a>
                    </li>
                    <li>
                        <a href="/backend/product/list"> Product </a>
                    </li>
                    <li>
                        <a href="/backend/supplier/list"> Supplier </a>
                    </li>
                    <li>
                        <a href="/backend/user/list"> User </a>
                    </li>
                </ul>
            </li>

            <span class="divider"><hr/></span>


        </ul>
    </nav>

</aside>
<div class="overlay"></div>
<main class="main-wrapper">

    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-6">
                    <div class="header-left d-flex align-items-center">
                        <div class="menu-toggle-btn mr-20">
                            <button
                                    id="menu-toggle"
                                    class="main-btn primary-btn btn-hover"
                            >
                                <i class="lni lni-chevron-left me-2"></i> Menu
                            </button>
                        </div>
                        <div class="header-search d-none d-md-flex">
                            <form action="" method="post">
                                <input type="text" placeholder="Search..." name="keywork" />
                                <button><i class="lni lni-search-alt"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-6">
                    <div class="header-right">

                        <!-- filter start -->
                        <div class="filter-box ml-15 d-none d-md-flex">
                            <button class="" type="button" id="filter">
                                <i class="lni lni-funnel"></i>
                            </button>
                        </div>
                        <!-- filter end -->
                        <!-- profile start -->
                        <sec:authorize access="!isAuthenticated()">

                                <a class="nav-link lni" href="/login">Sign In</a>

                        </sec:authorize>

                        <sec:authorize access="isAuthenticated()">
                        <div class="profile-box ml-15">
                            <button
                                    class="dropdown-toggle bg-transparent border-0"
                                    type="button"
                                    id="profile"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                            >
                                <div class="profile-info">
                                    <div class="info">
                                        <h6><sec:authentication property="principal.fullName"></sec:authentication></h6>
                                        <div class="image">
                                            <img
                                                    src="/assets/images/profile/profile-image.png"
                                                    alt=""
                                            />
                                            <span class="status"></span>
                                        </div>
                                    </div>
                                </div>
                                <i class="lni lni-chevron-down"></i>
                            </button>
                            <ul
                                    class="dropdown-menu dropdown-menu-end"
                                    aria-labelledby="profile"
                            >
                                <li>
                                    <a href="/backend/user/profile">
                                        <i class="lni lni-user"></i> View Profile
                                    </a>
                                </li>

                                <li>
                                    <a href="/logout"> <i class="lni lni-exit"></i> Sign Out </a>
                                </li>

                            </ul>
                        </div>
                        </sec:authorize>
                        <!-- profile end -->
                    </div>
                </div>
            </div>
        </div>
    </header>