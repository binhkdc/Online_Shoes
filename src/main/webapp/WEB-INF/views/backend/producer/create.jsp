<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<div class="container">
    <span style="color: red">${message}</span>
    <form method="post" class="row g-3 was-validated d-flex justify-content-center" oninput='rePassword.setCustomValidity(rePassword.value != Password.value ? "Mật khẩu 2 trường không giống nhau!!." : "")' action="save">
        <div class="col-sm-4 border p-3 ">
            <h4>tạo nhà sản xất mới</h4>
            <div class="col-md-12">
                <label for="tennsx" class="form-label">Tên Nhà Sản Xuất</label>
                <input type="text" placeholder="tennsx" class="form-control" id="tennsx" name="tennsx" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường tennsx</div>
            </div>
            <div class="col-md-12">
                <label for="diachi" class="form-label">Địa Chỉ</label>
                <input type="text" placeholder="diachi" class="form-control" id="diachi" name="diachi" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường diachi</div>
            </div>
            <div class="col-md-12">
                <label for="email" class="form-label">Email</label>
                <input type="email" placeholder="email" class="form-control" id="email" name="email" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Email</div>
            </div>
            <div class="col-md-12">
                <label for="sdt" class="form-label">Số Điện Thoại
                </label>
                <input type="number" placeholder="password" class="form-control" id="sdt" name="sdt" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Password</div>
            </div>


            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>