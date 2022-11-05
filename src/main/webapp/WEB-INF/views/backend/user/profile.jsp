<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<section style="background-color: #eee;"><sec:authorize access="isAuthenticated()">

    <div class="container py-5">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title mb-30">
                        <h2>Profile</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/backend/user/list">User</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Profile
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>

        <div class="wrapper">
            <div class="profile-card js-profile-card">
                <div class="profile-card__img">
                    <img src="/assets/frontend/img/nike6.jpg"  alt="profile card">
                </div>

                <div class="profile-card__cnt js-profile-cnt">
                    <div class="profile-card__name"><sec:authentication property="principal.fullName"></sec:authentication></div>
                    <div class="profile-card__txt"><strong><sec:authentication property="principal.address"></sec:authentication></strong></div>


                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Full Name :</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0"><sec:authentication property="principal.fullName"></sec:authentication></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Email :</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0"><sec:authentication property="principal.email"></sec:authentication></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">ROLE :</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0"><sec:authentication property="principal.role"></sec:authentication></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Address :</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0"><sec:authentication property="principal.address"></sec:authentication></p>
                                    </div>
                                </div>


                    <div class="profile-card-ctr">
                        <a href="/backend/user/change-password" class="profile-card__button button--blue js-message-btn" type="button">Change password </a>

                    </div>
                </div>

            </div>

        </div>
    </div>

</sec:authorize>
</section>

<script>


    var card = document.querySelector('.js-profile-card');
    var closeBtn = document.querySelectorAll('.js-message-close');

    btn.addEventListener('click',function (e) {
        e.preventDefault();
        card.classList.add('active');
    });

    closeBtn.forEach(function (element, index) {
        console.log(element);
        element.addEventListener('click',function (e) {
            e.preventDefault();
            card.classList.remove('active');
        });
    });
</script>


<%@include file="/WEB-INF/views/layout/footer.jsp"%>