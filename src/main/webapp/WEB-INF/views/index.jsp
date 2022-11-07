<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<%@page pageEncoding="UTF-8" %>

<section class="table-components">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title mb-30">
                        <h2>Biểu đồ sản phẩm</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-30">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Chart
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

        <!-- ========== tables-wrapper start ========== -->
        <div class="tables-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card-style mb-30">
                        <%@page import="com.google.gson.Gson"%>
                        <%@page import="com.google.gson.JsonObject"%>
                        <%
                            String getSoluong = new Gson().toJson(request.getAttribute("getSoluong"));
                            String getTengiay = new Gson().toJson(request.getAttribute("getTengiay"));
                            String jsonMax_score = new Gson().toJson(request.getAttribute("DataMax"));
                            String jsonMin_score = new Gson().toJson(request.getAttribute("DataMin"));
                        %>
                        <!--//container-fluid-->
                        <div class="row g-4 mb-4">
                            <div class="col-12">
                                <div class="app-card app-card-chart h-100 shadow-sm">
                                    <!--//app-card-header-->
                                    <div class="app-card-body p-4">
                                        <div class="chart-container">
                                            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                                            <canvas id="myChart" width="400" height="200"></canvas>
                                            <script>

                                                const ctx = document.getElementById('myChart');
                                                const data1 = {
                                                    label : 'Số Lượng đã bán ',
                                                    data : <%out.print(getSoluong);%>,
                                                    backgroundColor : [
                                                        'rgba(255, 99, 132, 0.2)',
                                                        'rgba(54, 162, 235, 0.2)',
                                                        'rgba(255, 206, 86, 0.2)',
                                                        'rgba(75, 192, 192, 0.2)',
                                                        'rgba(153, 102, 255, 0.2)',
                                                        'rgba(255, 159, 64, 0.2)' ],
                                                    borderColor : [ 'rgba(255, 99, 132, 1)',
                                                        'rgba(54, 162, 235, 1)',
                                                        'rgba(255, 206, 86, 1)',
                                                        'rgba(75, 192, 192, 1)',
                                                        'rgba(153, 102, 255, 1)',
                                                        'rgba(255, 159, 64, 1)' ],
                                                    borderWidth : 1
                                                }

                                                const myChart = new Chart(ctx, {
                                                    type : 'bar',
                                                    data : {
                                                        labels : <%out.print(getTengiay);%>,
                                                        datasets : [data1]
                                                    },
                                                    options : {
                                                        scales : {
                                                            y : {
                                                                beginAtZero : true
                                                            }
                                                        }
                                                    }
                                                });
                                            </script>

                                        </div>
                                    </div>
                                    <!--//app-card-body-->
                                </div>
                                <!--//app-card-->
                            </div>
                            <!--//col-->
                        </div>
                        <!--//row-->
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

        </div>
        <!-- ========== tables-wrapper end ========== -->
    </div>
    <!-- end container -->
</section>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>
