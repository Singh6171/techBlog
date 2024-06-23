<%-- 
    Document   : registrationPage
    Created on : Jun 15, 2024, 10:56:11 a.m.
    Author     : gurdeepsingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp</title>
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
        <%@include file = "navBar.jsp" %>


        <main class="d-flex align-items-center " style="height: 75vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header text-center primary-background text-white">
                                <span class=" 	fa fa-user-plus"></span>
                                <br>
                                <p>Registration Form</p>
                            </div>
                            <div class="card-body">
                                <form id="registrationForm" action="Registration" method="POST">
                                    <div class="form-group">
                                        <label for="userName">Name</label>
                                        <input name="userName" type="text" class="form-control" id="userName" aria-describedby="emailHelp" placeholder="Enter name">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="userEmail" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="userPassword" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>


                                    <div class="form-group">
                                        <label for="gender">Select Gender</label><br>
                                        <input type="radio"  id="gender" name="userGender" value="Male">Male 
                                        <input type="radio"  id="gender" name="userGender" value="Female">Female 
                                        <input type="radio"  id="gender" name="userGender" value="Other">Other
                                    </div>

                                    <div class="form-check">
                                        <input name="checkBox" type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">I agree to Terms and Conditions</label>
                                    </div><br>
                                    <div class="container text-center" id ="loader" style="display: none">
                                        <span class="fa fa-refresh fa-spin fa-2x"></span>
                                        <h4>Please Wait</h4>
                                    </div>

                                    <br>
                                    <button id="submitButton" type="submit" class="btn btn-primary btn-outline-light primary-background">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <%--JS for bootstrap--%>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script> 
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/javascript.js" type="text/javascript"></script>    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded...");

                $('#registrationForm').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);
                    $('#submitButton').hide();
                    $('#loader').show();
                    $.ajax({
                        url: "Registration",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $('#submitButton').show();
                            $('#loader').hide();
                            if(data.trim()==='Registration Successful'){
                                swal("Registration Successful, Now Redirecting To Login Page")
                                        .then((value) => {
                                            window.location = "loginPage.jsp";
                                        });
                            }else{
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $('#submitButton').show();
                            $('#loader').hide();
                            swal("Something Went Wrong, Please Try Again");
                        },
                        processData: false,
                        contentType: false


                    });


                });
            });
        </script>
    </body>
</html>
