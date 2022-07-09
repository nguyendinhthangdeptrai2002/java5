<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Validation & Interceptor</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-9 mx-auto bg-success">
				<div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
					<div class="card-body p-4 p-sm-5">
						<h5 class="card-title text-center mb-5 fw-light fs-5">Login</h5>
						${message}
						<form action="user/login" method="post">
							<div class="form-floating mb-3">
								<label>Username</label> 
								<input name="id" class="form-control" />
							</div>

							<div class="form-floating mb-3">
								<label>Password</label> 
								<input name="password" class="form-control" />
							</div>
							
							<div class="d-grid mb-2">
								<button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase">Login</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
