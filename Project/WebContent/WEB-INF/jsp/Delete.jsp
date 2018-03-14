<!DOCTYPE html>
<html>
<head><!-- Required meta tags -->
<meta charset="utf-8">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Delete User</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#"></a></li>
			</ul>
			<span class="navbar-text"> UserName</span>
			<span class="navbar-text"><a href="http://localhost:8080/Usermanagement/LoginServlet">Logout</a>
			</span>
		</div>
	</nav>
<div align="center">
<div class="container">
<h1 >Confirm Deleting the UserID</h1>
<br>
<h4>Rally do you delete your LoginID :id0001?</h4>
<br>
<br>
<br>
<label class="radio-inline">
<p style="display:inline-block; width:200px;">
		<input type="radio" name="radioName" value="checkboxA"> Yes
		</p>
	</label>
	<label class="checkbox-inline">
	<p style="display:inline-block; width:200px;">
		<input type="radio" name="radioName" value="checkboxB"> No
		</p>
	</label>
</div>
<input class="btn btn-primary" type="submit" value="Submit">
</div>
<form>
</form>

</body>
</html>