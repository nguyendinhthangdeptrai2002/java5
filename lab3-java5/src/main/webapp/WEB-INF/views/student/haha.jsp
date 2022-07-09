<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


    <style>
        body {
        background: #007bff;
        background: linear-gradient(to right, #0062E6, #33AEFF);
      }
      
      .card-img-left {
        width: 45%;
        /* Link to your background image using in the property below! */
        background: scroll center url('https://source.unsplash.com/WEQbe2jBg40/414x512');
        background-size: cover;
      }
      
      .btn-login {
        font-size: 0.9rem;
        letter-spacing: 0.05rem;
        padding: 0.75rem 1rem;
      }
      
      .btn-google {
        color: white !important;
        background-color: #ea4335;
      }
      
      .btn-facebook {
        color: white !important;
        background-color: #3b5998;
      }
      </style>
</head>
<body>
    <div class="container">
      <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
          <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
            <div class="card-img-left d-none d-md-flex">
              <!-- Background image for card set in CSS! -->
            </div>
            <div class="card-body p-4 p-sm-5">
              <h5 class="card-title text-center mb-5 fw-light fs-5">Register</h5>
              <form:form action="student/save" modelAttribute="sv" method="post">
  
                <div class="form-floating mb-3">             
                  <form:input path="name" type="text" class="form-control" id="floatingInputUsername" placeholder="myusername" required autofocus/>
                  <label for="floatingInputUsername">Username</label>
                </div>
  
                <div class="form-floating mb-3">
                  
                  <form:input path="email" type="email" class="form-control" id="floatingInputEmail" placeholder="name@example.com"/>
                  
                  <label for="floatingInputEmail">Email address</label>
                </div>
  
                <hr>
  
                <div class="form-floating mb-3">
                  <form:input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                  <label for="floatingPassword">Password</label>
                </div>
  
                <div class="form-floating mb-3">
                  <input type="password" class="form-control" id="floatingPasswordConfirm" placeholder="Confirm Password">
                  <label for="floatingPasswordConfirm">Confirm Password</label>
                </div>
  
                <div class="d-grid mb-2">
                  <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase" type="submit">Register</button>
                </div>
  
                <a class="d-block text-center mt-2 small" href="#">Have an account? Sign In</a>
  
                <hr class="my-4">
  
                <div class="d-grid mb-2">
                  <button class="btn btn-lg btn-google btn-login fw-bold text-uppercase" type="submit">
                    <i class="fab fa-google me-2"></i> Sign up with Google
                  </button>
                </div>
  
                <div class="d-grid">
                  <button class="btn btn-lg btn-facebook btn-login fw-bold text-uppercase" type="submit">
                    <i class="fab fa-facebook-f me-2"></i> Sign up with Facebook
                  </button>
                </div>
  
            </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>