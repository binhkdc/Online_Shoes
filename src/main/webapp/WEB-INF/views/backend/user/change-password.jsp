<%@page pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<section class="table-components">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title mb-30">
                        <h2>Đổi mật khẩu</h2>
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
                                    Change Password
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- ========== title-wrapper end ========== -->

            <div class="row">
                <div class="col-lg-4">
                    <div class="card mb-4">
                        <div class="card-body text-center">
                            <img src="/assets/frontend/img/nike5.png" alt="Nike" class=" img-fluid" style="width: 250px;">



                        </div>
                    </div>

                </div>

                <div class="col-lg-8">
                    <div class="card mb-4">
                        <div class="card-body">
                            <p class="text-sm text-danger mb-20">
                            ${message}
                            </p>
                            <f:form method="post" action="/backend/user/change-password" modelAttribute="user" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>Mật khẩu cũ:</p>
                                </div>
                                <div class="col-sm-9">
                                    <f:input type="password" class="form-control" path="oldPassword" placeholder="Mật khẩu cũ" aria-label="Mật khẩu cũ"/>
                                    <f:errors path="oldPassword" cssClass="error"></f:errors>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>Mật khẩu:</p>
                                </div>
                                <div class="col-sm-9">
                                    <f:input type="password" class="form-control" path="password" placeholder="Mật khẩu" aria-label="Mật khẩu"/>
                                    <f:errors path="password" cssClass="error"></f:errors>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>Nhập lại mật khẩu:</p>
                                </div>
                                <div class="col-sm-9">
                                    <f:input type="password" path="rePassword" class="form-control" placeholder="Nhập lại mật khẩu" aria-label="Nhập lại mật khẩu" />
                                    <f:errors path="rePassword" cssClass="error"></f:errors>
                                </div>
                            </div>
                            <hr>
                                <div class="profile-card-ctr">
                                    <a href="#" class="profile-card__button button--blue js-message-btn" type="submit">Đổi mật khẩu </a>

                                </div>
                            </f:form>
                        </div>
                    </div>

                </div>
                <!-- end col -->
                </div>
            <!-- end row -->

            </div>

    <!-- end container -->
</section>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#fileImage').attr('src', e.target.result).width(100);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>