<%@page pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<div class="container">
    <form class="form-signin" method="post" action="/login">
        <h2 class="form-signin-heading">Please sign in</h2>
        <div class="alert alert-success" role="alert">${message}</div>        <p>
        <label for="email" class="sr-only">Username</label>
        <input type="email" id="email" name="email" class="form-control" placeholder="email" required="" autofocus="">
    </p>
        <p>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
        </p>
        <input name="_csrf" type="hidden" value="04a7eb30-8b6e-48cd-b854-68d5b17a9058">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>