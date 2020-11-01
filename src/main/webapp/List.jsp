<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 1/11/2020
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>List</title>
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
            <h2 class="text-center">List Customer</h2>
        </div>
        <div class="panel-body">
            <table class="table table-bordered">
                <tr>
                    <td>No</td>
                    <td>Name</td>
                    <td>Email</td>
                    <td>Birthday</td>
                    <td>Address</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <c:forEach var="item" items="${customerList}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${item.name}</td>
                    <td>${item.email}</td>
                    <td>${item.birthday}</td>
                    <td>${item.address}</td>
                    <td>
                        <a href="add?id=${loop.index}">
                            <button class="btn btn-warning">Edit</button>
                        </a>

                    </td>
                    <td>
                        <form method="post">
                        <input name="index" value="${loop.index}" style="display: none">
                        <button class="btn btn-danger" name="action" value="Delete">Delete</button>
                        </form>
                    </td>
                </tr>
                </c:forEach>
                </tr>
            </table>

        </div>
    </div>
</div>
</body>
</html>