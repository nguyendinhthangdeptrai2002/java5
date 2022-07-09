<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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


</head>
<style>
	body {
  background: #007bff;
  background: linear-gradient(to right, #0062E6, #33AEFF);
}

.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem 10px;
  margin-right: 10px;
  padding-right: 10px;
}

.btn-google {
  color: white !important;
  background-color: #ea4335;
}

.btn-facebook {
  color: white !important;
  background-color: #3b5998;
}
.but{
	padding-right: 10px;
	

}
</style>
<body>
	<div class="container">
		<div class="row">
		  <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			<div class="card border-0 shadow rounded-3 my-5">
			  <div class="card-body p-4 p-sm-5">
				<h5 class="card-title text-center mb-5 fw-light fs-5">Sign In</h5>
				<form:form action="/category/index" modelAttribute="item">
				  <div class="form-floating mb-3">
					
					<form:input path="id" placeholder="Category Id?" type="text" class="form-control" id="floatingInput"/>
					<label for="floatingInput">category id</label>
				  </div>
				  <div class="form-floating mb-3">
				
					<form:input path="name" placeholder="Category Name?" type="text" class="form-control" id="floatingPassword"/>
					<label for="floatingPassword">categoryname</label>
				  </div>
	
			<div class="d-lg-flex but">
				  <div class="d-grid ">
					<button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit" formaction="/category/create">create  </button>
				  </div>
				  <div class="d-grid">
					<button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit" formaction="/category/update">Update </button>
				  </div>
				</div>
				<a href="/category/delete/${item.id}">Delete</a>
	            <a href="/category/index">Reset</a>
				</form:form>
			  </div>
			</div>
		  </div>
		</div>
	  </div>


</body>
</html>

