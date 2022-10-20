<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>OnlineJobportal</title>
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
			<a class="navbar-brand">Online Job portal</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/myprofile">My profile</a></li>
					<li><a href="/viewapply">View and Apply Jobs</a></li>
				   <!--   <li><a href="/appliedjobs">Applied Jobs</a></li> -->
					<li><a href="/uploadResume">Upload Resume</a></li>
					<li><a href="/logout">Logout</a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
	
	

	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to Online Job portal</h1>
			<h3>Find Your Jobs</h3>
		</div>
	</div>
	<c:choose>
	<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>My profile</h3>
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
									
									
										
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			
		</c:when>
	<c:when test="${mode=='MODE_VIEWAPPLY' }">
	
	
				<div class="container text-center" id="tasksDiv">
				<h3>Posted Jobs</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Job Id</th>
								<th>Company Name</th>
								<th>Job Description</th>
								<th>Skills</th>
								<th>Experience</th>
								<th>Job type</th>
								<th>Salary</th>
								<th>Location</th>
								<th>Contact No</th>
								<th>Category</th>
								<th>Apply Jobs</th>
						</tr>
						</thead>
						<tbody>
							<c:forEach var="postjob" items="${ alljobs }">
								<tr>
									<td>${postjob.jobid}</td>
									<td>${postjob.companyname}</td>
									<td>${postjob.jobdescription}</td>
									<td>${postjob.jobskills}</td>
									<td>${postjob.jobexp}</td>
									<td>${postjob.jobtype}</td>
									<td>${postjob.jobsal}</td>
									<td>${postjob.jobloc}</td>
									<td>${postjob.contactno}</td>
									<td>${postjob.category}</td>
									<td><a href="/apply-job?jobid=${postjob.jobid }"><span
											input type="submit" class="btn btn-primary" value="Apply Job" />Apply Job</span></a></td>		
										
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	
	</c:when>
	<c:when test="${mode=='MODE_APPLIEDJOBS' }">
	
	
				<div class="container text-center" id="tasksDiv">
				<h3>Posted Jobs</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								
								<th>Company Name</th>
								<th>Job Description</th>
								<th>Skills</th>
								<th>Experience</th>
								<th>Job type</th>
								<th>Salary</th>
								<th>Location</th>
								<th>Contact No</th>
								<th>Category</th>
								<th>Apply Jobs</th>
						</tr>
						</thead>
						<tbody>
							<c:forEach var="postjob" items="${ alljobs }">
								<tr>
									
									<td>${postjob.companyname}</td>
									<td>${postjob.jobdescription}</td>
									<td>${postjob.jobskills}</td>
									<td>${postjob.jobexp}</td>
									<td>${postjob.jobtype}</td>
									<td>${postjob.jobsal}</td>
									<td>${postjob.jobloc}</td>
									<td>${postjob.contactno}</td>
									<td>${postjob.category}</td>
									<td><span class="btn btn-success">Applied</span></td>		
										
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	
	</c:when>
	</c:choose>
	

	
	
	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>