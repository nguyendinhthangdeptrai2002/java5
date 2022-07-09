
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <base href="${pageContext.servletContext.contextPath}/"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</head>

<body>
 
<form:form action="student/save" modelAttribute="sv" method="post">
  <form:input path="name"/><br>
 
  <form:input path="email"/><br>
  <form:input path="marks"/><br>
  
  <form:radiobuttons items="${genders}" path="gender"/><br>
  <form:checkboxes items="${hobbies}" path="hobbies"/><br>
   
	<form:select path="faculty" >
			<form:options items="${faculty }" itemValue="id" itemLabel="name"/>
		</form:select>  

<button >Save</button>
<i class="text-danger">${message}</i>
</form:form>

<table border="1">
  <tr>
  <th>name</th>
  <th>email</th>
  <th>diem</th>
  <th>gioi tinh</th>
  <th>so thich</th>
  <th>nganh</th>
  </tr>
  <c:forEach  items="${student}" var ="stu">
    <tr>
      <td>${stu.name}</td>
        <td>${stu.email}</td>
        <td>${stu.marks}</td>
        <td>${stu.gender}</td>
        <td>${stu.hobbies}</td>
        <td>${stu.faculty}</td>
        
        <td><a href="staff/detail/${staf.id}?lnkEdit">Sửa</a></td>
    </tr>
    </c:forEach>        
</table>




</body>
</html>