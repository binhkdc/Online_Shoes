<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bootstrap 5 404 page with image</title>
    <link href="/assets/bootstrap5/css/bootstrap.css" rel="stylesheet">
</head>

<body>
<div class="d-flex align-items-center justify-content-center vh-100">
    <div class="text-center row">
        <div class=" col-md-6">
            <img src="https://cdn.pixabay.com/photo/2017/03/09/12/31/error-2129569__340.jpg" alt=""
                 class="img-fluid">
        </div>
        <div class=" col-md-6 mt-5">
            <p class="fs-3"> <span class="text-danger">Opps!</span> Page not found.</p>
            <p class="lead">
                Bạn đéo có quyền để vào đây!
            </p>
            <a href="/" class="btn btn-primary">Go Home</a>
        </div>

    </div>
</div>
</body>

</html>