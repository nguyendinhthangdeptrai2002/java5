<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<base href="${pageContext.servletContext.contextPath}/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <img src="images/${name}" alt="">
    <ul>
        <li>File Name: ${name}</li>
            <li>File Type: ${type}</li>
            <li>File Size: ${size}</li>
    </ul>


</body>
</html>