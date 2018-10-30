<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login.css">
        <title>Login</title>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="text-center login-title">Sign in!</h1>
                    <div class="account-wall">
                        <form class="form-signin" method ="post" action = "LoginController">
                        <input type="text" class="form-control" placeholder="User Name" name="username" required autofocus>
                        <input type="password" class="form-control" placeholder="Password" name="password" required>
                        <span style="color: red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                        <a class="nav-link" href="signup.jsp">Sign up</a>
                        </form>
                    </div>
                    <p class="text-center new-account">Note: You can use default account</p>
                    <p class="text-center new-account">Username: admin</p>
                    <p class="text-center new-account">Password: admin</p>
                </div>
            </div>
        </div>

    </body>
</html>
