<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <H1>${message}</H1>
    <form action="/upload/upload" method="post" enctype="multipart/form-data">
      <div>file</div>
      <input type="file" name="image">
      <button>upload</button>
    </form>
</body>
</html>