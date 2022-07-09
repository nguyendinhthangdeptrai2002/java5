<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
  body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-image: linear-gradient(to right, #D500F9, #FFD54F);
    background-repeat: no-repeat;
}

input, textarea {
    background-color: #F3E5F5;
    border-radius: 50px !important;a
    padding: 12px 15px 12px 15px !important;
    width: 100%;
    box-sizing: border-box;
    border: none !important;
    border: 1px solid #F3E5F5 !important;
    font-size: 16px !important;
    color: #000 !important;
    font-weight: 400;
}

input:focus, textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #D500F9 !important;
    outline-width: 0;
    font-weight: 400;
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0;
}

.card {
    border-radius: 0;
    border: none;
}

.card1 {
    width: 50%;
    padding: 40px 30px 10px 30px;
}

.card2 {
    width: 50%;
    background-image: linear-gradient(to right, #FFD54F, #D500F9);
}

#logo {
    width: 70px;
    height: 60px;
}

.heading {
    margin-bottom: 60px !important;
}

::placeholder {
    color: #000 !important;
    opacity: 1;
}

:-ms-input-placeholder {
    color: #000 !important;
}

::-ms-input-placeholder {
    color: #000 !important;
}

.form-control-label {
    font-size: 12px;
    margin-left: 15px;
}

.msg-info {
    padding-left: 15px;
    margin-bottom: 30px;
}

.btn-color {
    border-radius: 50px;
    color: #fff;
    background-image: linear-gradient(to right, #FFD54F, #D500F9);
    padding: 15px;
    cursor: pointer;
    border: none !important;
    margin-top: 40px;
}

.btn-color:hover {
    color: #fff;
    background-image: linear-gradient(to right, #D500F9, #FFD54F);
}

.btn-white {
    border-radius: 50px;
    color: #D500F9;
    background-color: #fff;
    padding: 8px 40px;
    cursor: pointer;
    border: 2px solid #D500F9 !important;
}

.btn-white:hover {
    color: #fff;
    background-image: linear-gradient(to right, #FFD54F, #D500F9);
}

a {
    color: #000;
}

a:hover {
    color: #000;
}

.bottom {
    width: 100%;
    margin-top: 50px !important;
}

.sm-text {
    font-size: 15px;
}

@media screen and (max-width: 992px) {
    .card1 {
        width: 100%;
        padding: 40px 30px 10px 30px;
    }

    .card2 {
        width: 100%;
    }

    .right {
        margin-top: 100px !important;
        margin-bottom: 100px !important;
    }
}

@media screen and (max-width: 768px) {
    .container {
        padding: 10px !important;
    }

    .card2 {
        padding: 50px;
    }

    .right {
        margin-top: 50px !important;
        margin-bottom: 50px !important;
    }
}
</style>

</head>
<body>
    <!-- Default form login -->
<form class="text-center border border-light p-5" action="/account/login" method="post">
  <div class="container px-4 py-5 mx-auto">
    <div class="card card0">
        <div class="d-flex flex-lg-row flex-column-reverse">
            <div class="card card1">
                <div class="row justify-content-center my-auto">
                    <div class="col-md-8 col-10 my-5">
                        <div class="row justify-content-center px-3 mb-3">
                            <img id="logo" src="https://i.imgur.com/PSXxjNY.png">
                        </div>
                        <h3 class="mb-5 text-center heading">Dang Nhap</h3>

                        <h6 class="msg-info">Please login to your account</h6>

                        <div class="form-group">
                            <label class="form-control-label text-muted">Username</label>
                            <input type="text" placeholder="nhập tài khoản" class="form-control" name="username">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label text-muted">Password</label>
                            <input type="password"  placeholder="nhập mật khẩu" class="form-control" name="password">
                        </div>

                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="remember" value="true">
                          <label class="form-check-label" for="defaultCheck1">
                           remember
                          </label>
                        </div>
                        
                        <i >${message}</i>

                        <div class="row justify-content-center my-3 px-3">
                            <button class="btn-block btn-color">login</button>
                        </div>

            </div>
       
        </div>
    </div>
</div>
  </form>
  <!-- Default form login -->
</body>
</html>