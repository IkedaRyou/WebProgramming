<!DOCTYPE html>
<html>
<head><!-- Required meta tags -->
<meta charset="utf-8">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="UTF-8">
<title>UserDetailReference</title>
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
<div align="center"><h1>UserDetailReference<span class="badge badge-secondary"></h1>
<div class="container">
<div class="row">
    <div class="col">
      <h3>LoginID</h3><br>
      <h3>UserName</h3><br>
      <h3>BirthDay</h3><br>
      <h3>Registered Date</h3><br>
      <h3>Last Modified</h3><br>
    </div>
    <div class="col">
<h3><small>>${user.loginId}</small></h3><br>
<h3><small>${user.name}</small></h3><br>
<h3><small>${user.birth_date}</small></h3><br>
<h3><small>${user.create_date}</small></h3><br>
<h3><small><span id="view_todayE"></span>

<script type="text/javascript">
document.getElementById("view_todayE").innerHTML = getTodayE();

function getTodayE() {
	var now = new Date();
	var year = now.getFullYear();
	var mon = now.getMonth(); //１足さない
	var day = now.getDate();
	var you = now.getDay(); //曜日(0～6=日～土)
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();

	//曜日の選択肢
	var youbi = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
	//月名の選択肢
	var month = new Array("January","February","March","April","May","June","July","August","September","October","November","December");

	//出力用
	var s = month[mon] + " " + day + ", " + year + " (" +youbi[you] + ")";
	return s;
}
</script>
</small></h3><br>
    </div>
  </div>
</div>
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
<form>
</form>

</body>
</html>