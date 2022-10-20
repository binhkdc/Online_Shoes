<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online_Shoes</title>

    <link href="/bootstrap5/css/bootstrap.css" rel="stylesheet">
    <link href="/bootstrap5/css/style.css" rel="stylesheet">

</head>
<body>

<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active" aria-current="page" href="/backend/user/list">User</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/backend/product/list">Product</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/backend/producer/list">Producer</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/backend/category/list">Category</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/backend/supplier/list">Supplier</a>--%>
<%--                </li>--%>

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
                        class="collapsed"
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
                <ul id="ddmenu_1" class="collapse dropdown-nav">
                    <li>
                        <a href="index.html"> eCommerce </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item nav-item-has-children">
                <a
                        href="#0"
                        class="collapsed"
                        data-bs-toggle="collapse"
                        data-bs-target="#ddmenu_2"
                        aria-controls="ddmenu_2"
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
                          d="M12.8334 1.83325H5.50008C5.01385 1.83325 4.54754 2.02641 4.20372 2.37022C3.8599 2.71404 3.66675 3.18036 3.66675 3.66659V18.3333C3.66675 18.8195 3.8599 19.2858 4.20372 19.6296C4.54754 19.9734 5.01385 20.1666 5.50008 20.1666H16.5001C16.9863 20.1666 17.4526 19.9734 17.7964 19.6296C18.1403 19.2858 18.3334 18.8195 18.3334 18.3333V7.33325L12.8334 1.83325ZM16.5001 18.3333H5.50008V3.66659H11.9167V8.24992H16.5001V18.3333Z"
                  />
                </svg>
              </span>
                    <span class="text">Pages</span>
                </a>
                <ul id="ddmenu_2" class="collapse dropdown-nav">
                    <li>
                        <a href="settings.html"> Settings </a>
                    </li>
                    <li>
                        <a href="blank-page.html"> Blank Page </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="invoice.html">
              <span class="icon">
                <svg
                        width="22"
                        height="22"
                        viewBox="0 0 22 22"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                          d="M17.4166 7.33333C18.9383 7.33333 20.1666 8.56167 20.1666 10.0833V15.5833H16.4999V19.25H5.49992V15.5833H1.83325V10.0833C1.83325 8.56167 3.06159 7.33333 4.58325 7.33333H5.49992V2.75H16.4999V7.33333H17.4166ZM7.33325 4.58333V7.33333H14.6666V4.58333H7.33325ZM14.6666 17.4167V13.75H7.33325V17.4167H14.6666ZM16.4999 13.75H18.3333V10.0833C18.3333 9.57917 17.9208 9.16667 17.4166 9.16667H4.58325C4.07909 9.16667 3.66659 9.57917 3.66659 10.0833V13.75H5.49992V11.9167H16.4999V13.75ZM17.4166 10.5417C17.4166 11.0458 17.0041 11.4583 16.4999 11.4583C15.9958 11.4583 15.5833 11.0458 15.5833 10.5417C15.5833 10.0375 15.9958 9.625 16.4999 9.625C17.0041 9.625 17.4166 10.0375 17.4166 10.5417Z"
                  />
                </svg>
              </span>
                    <span class="text">Invoice</span>
                </a>
            </li>
            <li class="nav-item nav-item-has-children">
                <a
                        href="#0"
                        class="collapsed"
                        data-bs-toggle="collapse"
                        data-bs-target="#ddmenu_3"
                        aria-controls="ddmenu_3"
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
                          d="M12.9067 14.2908L15.2808 11.9167H6.41667V10.0833H15.2808L12.9067 7.70917L14.2083 6.41667L18.7917 11L14.2083 15.5833L12.9067 14.2908ZM17.4167 2.75C17.9029 2.75 18.3692 2.94315 18.713 3.28697C19.0568 3.63079 19.25 4.0971 19.25 4.58333V8.86417L17.4167 7.03083V4.58333H4.58333V17.4167H17.4167V14.9692L19.25 13.1358V17.4167C19.25 17.9029 19.0568 18.3692 18.713 18.713C18.3692 19.0568 17.9029 19.25 17.4167 19.25H4.58333C3.56583 19.25 2.75 18.425 2.75 17.4167V4.58333C2.75 3.56583 3.56583 2.75 4.58333 2.75H17.4167Z"
                  />
                </svg>
              </span>
                    <span class="text">Auth</span>
                </a>
                <ul id="ddmenu_3" class="collapse dropdown-nav">
                    <sec:authorize access="!isAuthenticated()">
                        <li>
                            <a href="/login"> Sign In </a>
                        </li>
                        <li>
                            <a href="signup.html"> Sign Up </a>
                        </li>

                    </sec:authorize>

                </ul>
            </li>
            <span class="divider"><hr/></span>
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
                        <a href="/backend/category/list"> Category </a>
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

            <li class="nav-item">
                <a href="notification.html">
              <span class="icon">
                <svg
                        width="22"
                        height="22"
                        viewBox="0 0 22 22"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                          d="M9.16667 19.25H12.8333C12.8333 20.2584 12.0083 21.0834 11 21.0834C9.99167 21.0834 9.16667 20.2584 9.16667 19.25ZM19.25 17.4167V18.3334H2.75V17.4167L4.58333 15.5834V10.0834C4.58333 7.24171 6.41667 4.76671 9.16667 3.94171V3.66671C9.16667 2.65837 9.99167 1.83337 11 1.83337C12.0083 1.83337 12.8333 2.65837 12.8333 3.66671V3.94171C15.5833 4.76671 17.4167 7.24171 17.4167 10.0834V15.5834L19.25 17.4167ZM15.5833 10.0834C15.5833 7.51671 13.5667 5.50004 11 5.50004C8.43333 5.50004 6.41667 7.51671 6.41667 10.0834V16.5H15.5833V10.0834Z"
                  />
                </svg>
              </span>
                    <span class="text">Notifications</span>
                </a>
            </li>
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
                            <form action="#">
                                <input type="text" placeholder="Search..." />
                                <button><i class="lni lni-search-alt"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-6">
                    <div class="header-right">
                        <!-- notification start -->
                        <div class="notification-box ml-15 d-none d-md-flex">
                            <button
                                    class="dropdown-toggle"
                                    type="button"
                                    id="notification"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                            >
                                <i class="lni lni-alarm"></i>
                                <span>2</span>
                            </button>
                            <ul
                                    class="dropdown-menu dropdown-menu-end"
                                    aria-labelledby="notification"
                            >
                                <li>
                                    <a href="#0">
                                        <div class="image">
                                            <img src="assets/images/lead/lead-6.png" alt="" />
                                        </div>
                                        <div class="content">
                                            <h6>
                                                John Doe
                                                <span class="text-regular">
                              comment on a product.
                            </span>
                                            </h6>
                                            <p>
                                                Lorem ipsum dolor sit amet, consect etur adipiscing
                                                elit Vivamus tortor.
                                            </p>
                                            <span>10 mins ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <div class="image">
                                            <img src="assets/images/lead/lead-1.png" alt="" />
                                        </div>
                                        <div class="content">
                                            <h6>
                                                Jonathon
                                                <span class="text-regular">
                              like on a product.
                            </span>
                                            </h6>
                                            <p>
                                                Lorem ipsum dolor sit amet, consect etur adipiscing
                                                elit Vivamus tortor.
                                            </p>
                                            <span>10 mins ago</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- notification end -->
                        <!-- message start -->
                        <div class="header-message-box ml-15 d-none d-md-flex">
                            <button
                                    class="dropdown-toggle"
                                    type="button"
                                    id="message"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                            >
                                <i class="lni lni-envelope"></i>
                                <span>3</span>
                            </button>
                            <ul
                                    class="dropdown-menu dropdown-menu-end"
                                    aria-labelledby="message"
                            >
                                <li>
                                    <a href="#0">
                                        <div class="image">
                                            <img src="assets/images/lead/lead-5.png" alt="" />
                                        </div>
                                        <div class="content">
                                            <h6>Jacob Jones</h6>
                                            <p>Hey!I can across your profile and ...</p>
                                            <span>10 mins ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <div class="image">
                                            <img src="assets/images/lead/lead-3.png" alt="" />
                                        </div>
                                        <div class="content">
                                            <h6>John Doe</h6>
                                            <p>Would you mind please checking out</p>
                                            <span>12 mins ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <div class="image">
                                            <img src="assets/images/lead/lead-2.png" alt="" />
                                        </div>
                                        <div class="content">
                                            <h6>Anee Lee</h6>
                                            <p>Hey! are you available for freelance?</p>
                                            <span>1h ago</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- message end -->
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
                                    <a href="#0">
                                        <i class="lni lni-user"></i> View Profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <i class="lni lni-alarm"></i> Notifications
                                    </a>
                                </li>
                                <li>
                                    <a href="#0"> <i class="lni lni-inbox"></i> Messages </a>
                                </li>
                                <li>
                                    <a href="#0"> <i class="lni lni-cog"></i> Settings </a>
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