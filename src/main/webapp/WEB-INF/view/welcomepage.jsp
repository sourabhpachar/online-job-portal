<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Jobportal</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">OnlineJobportal</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<!--  <li><a href="/show-users">All Users</a></li> -->
					<li><a href="/adlogin">Admin Login</a></li>
					<li class="text-align-right"><a href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	
	
	<c:choose>
	
	<c:when test="${mode=='MODE_HOME' }">
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to Online Job portal</h1>
			<h3>Find your jobs</h3>
		</div>
	</div>
	</c:when>
	
<c:when test="${mode=='MODE_REGISTER' }">

<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="username"
								value="${user.username }" placeholder="Enter Username" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" placeholder="Enter Firstname" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" placeholder="Enter LastName" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">E-mail </label>
						<div class="col-md-3">
							<input type="email" class="form-control" name="email"
								value="${user.email }" placeholder="abc@gmail.com" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-3">
							<input type="password" class="form-control" name="password"
								value="${user.password }" placeholder="Enter Password" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="mblnumber"
								value="${user.mblnumber }" placeholder="Enter Mobile Number" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Qualification </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="qualification"
								value="${user.qualification }" placeholder="Enter Qualification" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Experience </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="exp"
								value="${user.exp }" placeholder="Enter Your Yrs of Experience" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="age"
								value="${user.age }" placeholder="Enter Your Age" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="address"
								value="${user.address }" placeholder="Enter Your Address" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Country </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="country"
								value="${user.country }" placeholder="Enter Your Country" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">State </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="state"
								value="${user.state }" placeholder="Enter Your State" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Pincode </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="postcode"
								value="${user.postcode }" placeholder="Enter Pincode" required />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
</c:when>

<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Email</th>
								<th>Password</th>
								<th>Mobile Number</th>
								<th>Qualification</th>
								<th>Experience</th>
								<th>Age</th>
								<th>Address</th>
								<th>Country</th>
								<th>State</th>
								<th>Postal Code</th>
								<th>Edit Details</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.email}</td>
									<td>${user.password}</td>
									<td>${user.mblnumber}</td>
									<td>${user.qualification}</td>
									<td>${user.exp}</td>
									<td>${user.age}</td>
									<td>${user.address}</td>
									<td>${user.country}</td>
									<td>${user.state}</td>
									<td>${user.postcode}</td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="/delete-user?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									
										
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			
		</c:when>
<c:when test="${mode=='MODE_UPDATE' }">
			
<div class="container text-center">
				<h3>Update profile</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">E-mail </label>
						<div class="col-md-3">
							<input type="email" class="form-control" name="email"
								value="${user.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-3">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="moblnumber"
								value="${user.mblnumber }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Qualification </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="qualification"
								value="${user.qualification }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Experience </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="exp"
								value="${user.exp }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="age"
								value="${user.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="address"
								value="${user.address }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Country </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="country"
								value="${user.country }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">State </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="state"
								value="${user.state }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Pincode </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="postcode"
								value="${user.postcode }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
					
		<c:when test="${mode=='MODE_ADLOGIN' }">
			<div class="container text-center">
				<h3>Admin Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/admin-login">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${postjob.adminusername }" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${postjob.adminpassword }" required/>
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>			



</c:choose>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

</body>
</html>