<%-- 
    Document   : home
    Created on : Oct 29, 2018, 2:27:35 PM
    Author     : Leason
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="mvc.util.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login.css">
        <title>Home</title>
    </head>
    <body>
        
    <nav class="navbar navbar-toggleable-md fixed-top navbar-light bg-faded">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar" >
                <span class="fa fa-bars" ></span>
            </button>
            <a class="navbar-brand">Dashboard</a>
            <div class="collapse navbar-collapse" id="Navbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-right">
                        <a class="nav-link">
                            Welcome, <span style="font-weight: bold"><%=session.getAttribute("userName")%></span>
                        </a>
                    </li>
                    <li class="nav-item nav-right">
                        <a class="nav-link" href="LogoutController">
                            Log out
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br>
    <br>
    <br>
    </body>
</html>
