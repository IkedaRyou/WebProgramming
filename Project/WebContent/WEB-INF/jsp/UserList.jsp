<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
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
		$("#test2").datepicker();
	});
</script>
<title>User List</title>
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
			<span class="navbar-text"><a href="LoginServlet">Logout</a>
			</span>
		</div>
	</nav>
	<div class="container">

	<div align="center"><h1>User List<span class="badge badge-secondary"></h1>
	<form action="NewRegistration" method="post">
	<div align="right" style="margin-right:20px;">
	<button type="button" class="btn btn-primary"value="次画面へ遷移" onClick="location.href='http://localhost:8080/Usermanagement/NewRegistration'">Create Account</button>
		</div>
		<div class="form-group">
			<label >LoginID</label> <input
				type="text" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" > <small
				id="emailHelp" class="form-text text-muted" placeholder="Login ID">
				</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Password</label> <input
				type="password" class="form-control" id="exampleInputPassword1"
				placeholder="Password">

		<div align="right" style="margin-right:50px;">
		<button type="submit" class="btn btn-primary">Search</button>
		</div>
	</form>
	</div>
<p>Birthday</p>
<div align="left">
<input type="text" size="155" id="test1" class="form-control"/>
　　～　　<br>
<input type="text" size="155" id="test2" class="form-control"/>
</div>


	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Login ID</th>
				<th scope="col">Name</th>
				<th scope="col">BirthDay</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>

             <table class="table table-striped">
               <thead>
                 <tr>
                   <th>ログインID</th>
                   <th>ユーザ名</th>
                   <th>生年月日</th>
                   <th></th>
                 </tr>
               </thead>
               <tbody>
                 <c:forEach var="user" items="${userList}" >
                   <tr>
                     <td>${user.loginId}</td>
                     <td>${user.name}</td>
                     <td>${user.birthDate}</td>
                     <!-- TODO 未実装；ログインボタンの表示制御を行う -->
                     <td >
                       <a class="btn btn-primary" type="submit" href="UserDetailServlet?id=${user.id}">Detail</a>
                       <a class="btn btn-success" type="submit" href="Update?id=${user.id}">Update</a>
                       <a class="btn btn-danger" type="submit" href ="UserDeleteServlet?id=${user.id}">Delete</a>
                     </td>
                   </tr>
                 </c:forEach>
               </tbody>
             </table>





		</tbody>
		</div>
</body>
</html>