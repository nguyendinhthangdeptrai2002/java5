<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<base href="${pageContext.servletContext.contextPath}/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@ page pageEncoding="utf-8"%>
  
</head>
<style>
    form{
        border: ridge;
        width: 500px;
        height: 500px;
        text-align: center;
        margin: auto;
        background-color: aqua;
        border-radius: 10px;
        box-shadow: 5px gray;
    }
    .img{
        width: 500px;
        height: 300px;
    }
    .img img{
        width: 100%;
        height: 300px;
        
    }
    ul{
        bottom: 0px;
    }
    .thongbao{
        color: blue;
        text-align: center;
        font-weight: bold;
        font-family:Verdana, Geneva, Tahoma, sans-serif;
        font-size: 30px;
    }
</style>
<body>
    <div class="thongbao">${message}</div>
    <form action="" >
        <div class="img">    
              <img  src="images/${name}" alt="">
        </div>
  
    <ul>
        
        <li>File Name: ${name}</li>
            <li>File Type: ${type}</li>
            <li>File Size: ${size}</li>
    </ul>
</form>

</body>
</html>