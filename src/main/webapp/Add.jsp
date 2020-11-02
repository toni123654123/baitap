<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 1/11/2020
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>ADD</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h2 class="text-center">Add Customer</h2>
        </div>
        <div class="panel-body">
            <form method="post" action="/add">
                <div class="form-group">
                    <label>Name:</label>
                    <input required="true" type="text" class="form-control"  name="name">
                </div>
                <div class="form-group">
                    <label >Email:</label>
                    <input required="true" type="email" class="form-control"  name="email">
                </div>
                <div class="form-group">
                    <label >Birthday:</label>
                    <input type="date" class="form-control"  name="birthday">
                </div>
                <div class="form-group">
                    <label >Address:</label>
                    <input type="text" class="form-control"  name="address">
                </div>
                <button class="btn btn-success">Register</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>