<%-- 
    Document   : index
    Created on : Jun 6, 2024, 5:44:45 p.m.
    Author     : gurdeepsingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page import="com.tech.blog.helper.ConnectionProvider" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%--css for bootstrap--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 78% 0, 100% 0, 100% 100%, 75% 93%, 50% 100%, 25% 93%, 0 100%, 0 0, 20% 0);
            }
            ;
        </style>
    </head>   

    <body>
        <!--NavBar-->
        <%@include file = "navBar.jsp" %>

        <!--banner-->
        <div class="container-fluid p-0 m-0 banner-background ">
            <div class="jumbotron primary-background text-white">
                <div class="container" >
                    <h3>Welcome Coders,</h3>
                    <p>This is the place of technology, where you can learn and teach technology</p>
                    <button class="btn btn-outline-light btn-lg"><span class="fa fa fa-user-plus"></span> Start, It's Free !</button>
                    <a href="loginPage.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span> Sign in </a>

                </div>
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card" ">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more <span class="fa fa-book"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" ">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more <span class="fa fa-book"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" ">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more <span class="fa fa-book"></span></a>
                        </div>
                    </div>
                </div>

            </div>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <div class="card" ">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more <span class="fa fa-book"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" ">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more <span class="fa fa-book"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" ">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more <span class="fa fa-book"></span></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <%--JS for bootstrap--%>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script> 
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/javascript.js" type="text/javascript"></script>
    </body>
</html>
