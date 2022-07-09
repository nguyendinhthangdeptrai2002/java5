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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>
    
    <table class="table table-striped" border="1">
        <thead>
          <tr>
            <th scope="col">Loai hang</th>
            <th scope="col">Tong gia</th>
            <th scope="col">So San Pham</th>
            
          </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${items}">
         
          <tr>
            <th scope="row">${item.group.name}</th>
            <td>${item.sum}</td>
            <td>${item.count}</td>
            
          </tr>

        </c:forEach>
        </tbody>
      </table>

</body>
</html>