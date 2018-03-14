<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ログイン画面</title>
<!-- BootstrapのCSS読み込み -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- オリジナルCSS読み込み -->
<link href="css/original/common.css" rel="stylesheet">
<!-- Jqeryの読み込み -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<!-- BootstrapのJS読み込み -->
	<script src="js/bootstrap.min.js">
</script>
<!-- レイアウトカスタマイズ用個別CSS -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<title>Login</title>
</head>
<body>
	<div class="container">
		<div align="center">
			<c:if test="${errMsg != null}">
				<div class="alert alert-danger" role="alert">${errMsg}</div>
			</c:if>
			<div class="row">
				<div class="col-sm"></div>
				<div class="col-sm">

					<h1>Login</h1>
					<form class="form-signin" action="LoginServlet" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="text" name="loginId" class="form-control"
								id="inputLoginId" aria-describedby="emailHelp"
								placeholder="Enter email"> <small id="emailHelp"
								class="form-text text-muted">We'll never share your
								email with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="password" class="form-control"
								id="inputPassword" placeholder="Password">
						</div>

						<button class="btn btn-lg btn-primary btn-block btn-signin"
							type="submit">Login</button>
					</form>
				</div>
				<div class="col-sm"></div>
			</div>
		</div>
</body>
</html>