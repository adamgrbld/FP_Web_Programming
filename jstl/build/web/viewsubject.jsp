<!DOCTYPE html>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>View Subject Course</title>
	<link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,500,700,900" rel="stylesheet">

	<!-- Additional CSS Files -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

	<link rel="stylesheet" href="assets/css/templatemo-softy-pinko.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css">

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js"></script>
</head>
<style>
	@import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,900);

	* {
		padding: 0;
		margin: 0;
	}

	html,
	body {
		height: 100%;
	}

	body {
		font-family: 'Roboto', sans-serif;
		background: -webkit-linear-gradient(45deg, rgba(4, 2, 96, 0.7), rgba(180, 49, 183, 0.9)), -webkit-linear-gradient(0deg, rgba(51, 136, 140, 0.3), rgba(87, 240, 240, 0.1));
		background: -moz-linear-gradient(45deg, rgba(4, 2, 96, 0.7), rgba(180, 49, 183, 0.9)), -moz-linear-gradient(0deg, rgba(51, 136, 140, 0.3), rgba(87, 240, 240, 0.1));
		background: -o-linear-gradient(45deg, rgba(4, 2, 96, 0.7), rgba(180, 49, 183, 0.9)), -o-linear-gradient(0deg, rgba(51, 136, 140, 0.3), rgba(87, 240, 240, 0.1));
		background: linear-gradient(45deg, rgba(4, 2, 96, 0.7), rgba(180, 49, 183, 0.9)), linear-gradient(90deg, rgba(51, 136, 140, 0.3), rgba(87, 240, 240, 0.1));
		overflow: hidden;
	}

	h2 {
		text-align: center;
		padding: 20px 0;
	}

	table caption {
		padding: .5em 0;
	}

	table.dataTable th,
	table.dataTable td {
		white-space: nowrap;
	}

	.p {
		text-align: center;
		padding-top: 140px;
		font-size: 14px;
	}

	.page {
		margin-top: 100px;
		box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
		border-radius: 40px;
		min-height: 80px;
		background-color: #fff;
		text-align: center;
		padding: 10px 50px 50px 50px;
	}
</style>

<body>

	<%@page import="com.javatpoint.dao.SubjectDao,com.javatpoint.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- ***** Preloader Start ***** -->
	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->


	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="index.jsp" class="logo">
							<img src="assets/images/logo.png" alt="Softy Pinko" />
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="adduserform.jsp">Add User</a></li>
							<li><a href="viewusers.jsp">View Users</a></li>
							<li><a href="addsubjectform.jsp">Add Subject Course</a></li>
							<li><a href="viewsubject.jsp">View Subject Course</a></li>
						</ul>
						<a class='menu-trigger'>
							<span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<br>
	<br>
	<!-- ***** Header Area End ***** -->

	<div class="container">
		<div class="page">
			<h1>Subject Course List</h1>

			<div class="container">
				<div class="row">
					<div class="col-12">
						<table
							summary="This table shows how to create responsive tables using Datatables' extended functionality"
							class="table table-bordered table-hover dt-responsive">
							<thead>
								<tr>
									<th colspan="1">Id</th>
									<th>Name</th>
									<th>Lecturer</th>
									<th>Semester</th>
									<th>Description</th>
									<th colspan="1">Edit</th>
									<th colspan="1">Delete</th>
								</tr>
							</thead>
							<%
							List<Subject> list=SubjectDao.getAllRecords();
							request.setAttribute("list",list);
							%>
							<tbody>
								<c:forEach items="${list}" var="u">
									<tr>
										<td colspan="1">${u.getId()}</td>
										<td>${u.getName()}</td>
										<td>${u.getLecturer()}</td>
										<td>${u.getSemester()}</td>
										<td>${u.getDescription()}</td>
										<td colspan="1"><a href="editformsubject.jsp?id=${u.getId()}">Edit</a></td>
										<td colspan="1"><a href="deletesubject.jsp?id=${u.getId()}">Delete</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>

</script>
<!-- ***** Features Big Item End ***** -->


<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->

<!-- Plugins -->
<script src="assets/js/scrollreveal.min.js"></script>

<!-- Global Init -->
<script src="assets/js/custom.js"></script>

</html>