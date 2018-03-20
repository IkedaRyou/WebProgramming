<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head><!-- Required meta tags -->
<meta charset="utf-8">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<style>
</style>
<script>
	$(function() {
		$.datepicker.setDefaults($.datepicker.regional["ja"]);
		$("#test1").datepicker();
	});
</script>

<title>NewRegistration</title>
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
			<span class="navbar-text"> UserName
			<span class="navbar-text"><a href="http://localhost:8080/Usermanagement/LoginServlet">Logout</a>
			</span>
		</div>
	</nav>
<div align="center"><h1>NewRegistration<span class="badge badge-secondary"></h1>
<div class="container">
<c:if test="${errMsg != null}">
				<div class="alert alert-danger" role="alert">${errMsg}</div>
			</c:if>
<form action="NewRegistration" class="form-horizontal" method="post">
 <input  type="hidden" name="id" value="${user.id }" >
<div class="row">
     <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">LoginID</label>
    <div align="right" class="col-sm-10">
 <input  type="text" size="120" class="form-control-right form-control" name="loginId" id="exampleInputPassword1" >
    </div>
  </div><br>
   <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
     <input type="password" size="120" class="form-control-right form-control" name="password" id="exampleInputPassword1" >
    </div>
  </div>
   <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password<br>(Confirm)</label>
    <div class="col-sm-10">
<input type="password" size="120" class="form-control-right form-control" id="exampleInputPassword1" >
    </div>
  </div>
   <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">UserName</label>
    <div class="col-sm-10">
 <input type="text" size="120" class="form-control-right form-control" name="name" id="exampleInputPassword1" >
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label" name = "birthDate">BirthDay</label>
    <div class="col-sm-10">
<input type="text" size="120" name=birthDate id="test1" class="form-control" />
<button type="submit" class="btn btn-primary">Update</button>
    </div>
  </div>
</form>





  </div>
</div>
<form action="NewRegistration" class="form-horizontal" method="post">
</form>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div align="left"><h3>back</h3></div>


</body>
</html>