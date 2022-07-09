<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body  >
    

    <table border="1 " >



        <tr>
            <th>id</th>
            <th>username</th>
            <th>password</th>
            <th>email</th>
            <th>date</th>
            <th>admin</th>
        </tr>
        <c:forEach var="user" items="${user}">
        <tr>
            <td>${user.id}</td> 
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.email}</td>
            <td> ${user.date}</td>    
            <td>${user.admin}</td>
            <td > <a href="/edit?id=${user.id}"> edit</a></td>
        </tr>
    </c:forEach>
    </table>
   
<form action="/index/search" >
    <input type="text" name="keywords" >
    <button>tim kiem</button>
</form>
<br>
<form action="/crud" method="post"  modelAttribute="item">
    <input type="text" name="id"  placeholder="id" value="${userr.id}"><br>
    <input type="text" name="username"  placeholder="username" value="${userr.username}"><br>
    <input type="text" name="password" placeholder="password" value="${userr.password}"><br>
    <input type="text" name="email" id="" placeholder="email" value="${userr.email}"><br>
    <input type="text" name="date" placeholder="dd//mm//yyyy" value="${userr.date}"><br>
    <input type="radio" value="true" name ="nhanvien"  ${nam} > nam
    <input type="radio" value="false" name ="nhanvien"  ${nu} > nu 
 <button formaction="/crud/create"> create </button>
 <button formaction="/crud/update"> update </button>    
 <a href="/crud/delete/${userr.id}">delete</a>
<input type="reset" value="reset">

</form>

</body>

</html>