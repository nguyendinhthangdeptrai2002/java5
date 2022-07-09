<%@ page pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Send email</title>
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
						<h5 class="card-title text-center mb-5 fw-light fs-5">Mail</h5>
						${message}
						<form action="mailer/send.htm" method="post">
							<div class="form-floating mb-3">
								<label for="floatingInputUsername">From</label> <input name="from" placeholder="From" class="form-control">
							</div>

							<div class="form-floating mb-3">
								<label for="floatingPassword">To</label> <input name="to" placeholder="To" class="form-control">
							</div>

							<div class="form-floating mb-3">
								<label for="floatingPasswordConfirm">Subject</label> <input name="subject" placeholder="Subject"
									class="form-control">
							</div>

							<div class="form-floating mb-3">
								<label for="floatingPasswordConfirm">Body</label>
								<textarea name="body" placeholder="Body" rows="3" cols="30" class="form-control"></textarea>
							</div>

							<div class="d-grid mb-2">
								<button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase">Gửi</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
