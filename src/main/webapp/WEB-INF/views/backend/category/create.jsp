<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<div class="container">
    <span style="color: red">${message}</span>
    <form method="post" class="row g-3 was-validated d-flex justify-content-center"  action="save">
        <div class="col-sm-4 border p-3 ">
            <h4>Tạo loại giày mới</h4>
            <div class="col-md-12">
                <label for="loaigiay" class="form-label">Loại Giày</label>
                <input type="text" placeholder="loaigiay" class="form-control" id="loaigiay" name="loaigiay" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường loaigiay</div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>