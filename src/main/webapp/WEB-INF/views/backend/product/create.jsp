<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<div class="container">
    <span style="color: red">${message}</span>
    <form method="post" class="row g-3 was-validated d-flex justify-content-center" action="save">
        <div class="col-sm-4 border p-3 ">
            <h4>Tạo sản phẩm</h4>
            <div class="col-md-12">
                <label for="tengiay" class="form-label">Tên Giày</label>
                <input type="text" placeholder="tengiay" class="form-control" id="tengiay" name="tengiay" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Tên Giày</div>
            </div>
            <select class="form-select" aria-label="Default select example" name="mansx" required>
                <option>chọn để mở menu mã nhà sản xuất</option>
                <c:forEach var="list" items="${producer}">
                    <option value="${list.mansx}">${list.tennsx}</option>
                </c:forEach>
            </select>
            <div class="col-md-12">
                <label for="soluong" class="form-label">Số lượng</label>
                <input type="text" placeholder="soluong" class="form-control" id="soluong" name="soluong" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Số lượng</div>
            </div>
            <div class="col-md-12">
                <label for="size" class="form-label">Kích cỡ</label>
                <input type="text" placeholder="size" class="form-control" id="size" name="size" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Kích cỡ</div>
            </div>
            <div class="col-md-12">
                <label for="mausac" class="form-label">Màu sắc</label>
                <input type="text" placeholder="mausac" class="form-control" id="mausac" name="mausac" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Màu sắc</div>
            </div>
            <div class="col-md-12">
                <label for="gia" class="form-label">Giá</label>
                <input type="number" placeholder="gia" class="form-control" id="gia" name="gia" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Giá</div>
            </div>
            <div class="col-md-12">
                <label for="hinhanh" class="form-label">Hình ảnh</label>
                <input type="text" placeholder="hinhanh" class="form-control" id="hinhanh" name="hinhanh" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Hình ảnh</div>
            </div>
            <div class="col-md-12">
                <label for="mota" class="form-label">Mô tả</label>
                <input type="text" placeholder="mota" class="form-control" id="mota" name="mota" required>
                <div class="valid-feedback">Vô cùng chính xác.</div>
                <div class="invalid-feedback">Vui lòng nhập vào trường Mô tả</div>
            </div>
            <select class="form-select" aria-label="Default select example" name="maloaigiay" required>
                <option>chọn để mở menu mã nhà sản xuất</option>
                <c:forEach var="list" items="${category}">
                    <option value="${list.maloaigiay}">${list.loaigiay}</option>
                </c:forEach>
            </select>

            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>