<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container">
    <c:forEach var="product" items="${product}">
        <form method="post" class="row g-3 was-validated d-flex justify-content-center" action="update">
            <div class="col-sm-4 border p-3 ">
                <h4>Chi tiết sản phẩm</h4>
                <div class="col-md-12">
                    <label for="magiay" class="form-label">Mã Giày</label>
                    <input type="text" placeholder="magiay" value="${product.magiay}" class="form-control" id="magiay"
                           name="magiay" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Tên Giày</div>
                </div>
                <div class="col-md-12">
                    <label for="tengiay" class="form-label">Tên Giày</label>
                    <input type="text" placeholder="tengiay" value="${product.tengiay}" class="form-control"
                           id="tengiay" name="tengiay" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Tên Giày</div>
                </div>
                <label for="mansx">Nhà Sản Xuất</label>
                <select class="form-select" aria-label="Default select example" id="mansx" name="mansx" readonly required>

                    <c:set var="mansx" value="${product.mansx}"/>

                    <c:forEach var="producer" items="${producer}">
                        <c:set var="mansx1" value="${producer.mansx}"/>
                        <c:choose>
                            <c:when test="${mansx == mansx1}">
                                <option value="${producer.mansx}" selected>${producer.tennsx}</option>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                        </c:choose>
                    </c:forEach>


                </select>
                <div class="col-md-12">
                    <label for="soluong" class="form-label">Số lượng</label>
                    <input type="text" placeholder="soluong" class="form-control" value="${product.soluong}" id="soluong" readonly name="soluong" required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Số lượng</div>
                </div>
                <div class="col-md-12">
                    <label for="size" class="form-label">Kích cỡ</label>
                    <input type="text" placeholder="size" class="form-control" value="${product.size}" id="size" name="size" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Kích cỡ</div>
                </div>
                <div class="col-md-12">
                    <label for="mausac" class="form-label">Màu sắc</label>
                    <input type="text" placeholder="mausac" class="form-control" value="${product.mausac}" id="mausac" name="mausac" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Màu sắc</div>
                </div>
                <div class="col-md-12">
                    <label for="gia" class="form-label">Giá</label>
                    <input type="number" placeholder="gia" class="form-control" value="${product.gia}" id="gia" name="gia" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Giá</div>
                </div>
                <div class="col-md-12">
                    <label for="hinhanh" class="form-label">Hình ảnh</label>
                    <input type="text" placeholder="hinhanh" class="form-control" value="${product.hinhanh}" id="hinhanh" name="hinhanh" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Hình ảnh</div>
                </div>
                <div class="col-md-12">
                    <label for="mota" class="form-label">Mô tả</label>
                    <input type="text" placeholder="mota" class="form-control" value="${product.mota}" id="mota" name="mota" readonly required>
                    <div class="valid-feedback">Vô cùng chính xác.</div>
                    <div class="invalid-feedback">Vui lòng nhập vào trường Mô tả</div>
                </div>
                <label for="maloaigiay">Loại Giày</label>
                <select class="form-select" aria-label="Default select example" id="maloaigiay" name="maloaigiay" readonly required>

                    <c:set var="maloaigiay" value="${product.maloaigiay}"/>

                    <c:forEach var="category" items="${category}">
                        <c:set var="maloaigiay1" value="${category.maloaigiay}"/>
                        <c:choose>
                            <c:when test="${maloaigiay == maloaigiay1}">
                                <option value="${category.maloaigiay}" selected>${category.loaigiay}</option>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>

                <a type="submit" href="/backend/product/edit/${product.magiay}" class="mt-3 btn btn-primary">edit</a>
            </div>
        </form>

    </c:forEach>

</div>

<%@include file="/WEB-INF/views/layout/footer.jsp" %>