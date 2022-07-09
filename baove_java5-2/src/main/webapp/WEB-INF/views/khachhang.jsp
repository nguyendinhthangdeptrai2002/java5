
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
</head>
<body>
    
    <form action="/index/search">
        <label for="">nhap ten :</label>
        <input type="text" placeholder="tim kiem" name="keywords" >
        <button> timkiem</button>
    </form>
    <table border="1">
<thead>
    <tr>
        <th>username</th>
        <th>password</th>
        <th>hoten</th>
        <th>gioitinh</th>
        <th>email</th>
    </tr>
</thead>
<tbody>
<c:forEach var="khach" items="${khachhang}">
    <tr>
        <td>${khach.username}</td>
        <td>${khach.password}</td>
        <td>${khach.hoten}</td>
        <td>${khach.gioitinh}</td>

        <td>${khach.email}</td>
        <td><a href="/delete/${khach.username}">xoa</a></td>
    </tr>
</c:forEach>
</tbody>


    </table>

    <a href="/new" style="width: 100px; height: 100px;background-color: green; color: white; margin-top: 50px;"> new</a>
</body>
</html>