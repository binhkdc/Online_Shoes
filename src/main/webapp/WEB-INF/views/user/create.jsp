<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<div class="container">
    <span style="color: red">${message}</span>
    <form method="post" class="row g-3 was-validated d-flex justify-content-center" novalidate action="save">
        <div class="col-sm-4 border p-3 ">
            <h4>Form đăng kí người dùng</h4>
            <div class="col-md-12">
                <label for="Full_Name" class="form-label">Full_Name</label>
                <input type="text" placeholder="Full_Name" class="form-control" id="Full_Name" name="full_Name" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Full_Name</div>
            </div>
            <div class="col-md-12">
                <label for="Address" class="form-label">Address</label>
                <input type="text" placeholder="Address" class="form-control" id="Address" name="address" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Address</div>
            </div>
            <div class="col-md-12">
                <label for="Email" class="form-label">Email</label>
                <input type="email" placeholder="Email" class="form-control" id="Email" name="email" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Email</div>
            </div>
            <div class="col-md-12">
                <label for="Password" class="form-label">Password</label>
                <input type="Password" placeholder="Password" class="form-control" id="Password" name="password" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Password</div>
            </div>
            <div class="col-md-12">
                <label for="rePassword" class="form-label">rePassword</label>
                <input type="Password" placeholder="rePassword" class="form-control" id="rePassword" name="rePassword" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường rePassword</div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>