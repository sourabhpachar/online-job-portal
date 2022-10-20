<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>OnlineJobportalAdmin</title>
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
			<a href="#" class="navbar-brand">Online Job portal</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/postjobpage">Post jobs</a></li>
					<li><a href="/show-alljobs">View Posted Jobs</a></li>
					<li><a href="/logout">Logout</a>
					
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
	
	<c:when test="${mode=='MODE_ADMINHOME' }">
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to Online Job portal</h1>
			<h3>Find your jobs</h3>
		</div>
	</div>
	</c:when>
	
	<c:when test="${mode=='MODE_POSTJOB'}">
		<div class="container text-center">
		<h3>Post New Jobs</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-postedjobs">
			<input type="hidden" name="jobid" value="${postjob.jobid }" />
			<div class="form-group">
				<label class="control-label col-md-3">Company Name</label>
				<div class="col-md-7"> //User story - 2 (Task 3) Making Required field
					<input type="text" class="form-control" name="companyname"
						value="${postjob.companyname }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Description</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobdescription"
						value="${postjob.jobdescription }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Skills</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobskills"
						value="${postjob.jobskills }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Experience </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="jobexp"
						value="${postjob.jobexp }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Qualification</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobqual"
						value="${postjob.jobqual }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Type</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobtype"
						value="${postjob.jobtype }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Salary</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobsal"
						value="${postjob.jobsal }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Location</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobloc"
						value="${postjob.jobloc }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Contact No</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="contactno"
						value="${postjob.contactno }" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Category</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="category"
						value="${postjob.category }" required/>
				</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Apply jobs" />
			</div>
		</form>
	</div>
	</c:when>
	<c:when test="${mode=='MODE_POSTEDJOB' }">
	
	
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
								<th>Edit</th>
								<th>Delete</th>
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
									<td><a href="/edit-job?jobid=${postjob.jobid }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="/delete-job?jobid=${postjob.jobid }"><span
											class="glyphicon glyphicon-trash"></span></a></td>		
										
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	
	</c:when>


<c:when test="${mode=='MODE_UPDATEJOB'}">
		<div class="container text-center">
		<h3>Update Job</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-postedjobs">
			<input type="hidden" name="jobid" value="${postjob.jobid }" />
			<div class="form-group">
				<label class="control-label col-md-3">Company Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="companyname"
						value="${postjob.companyname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Description</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobdescription"
						value="${postjob.jobdescription }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Skills</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobskills"
						value="${postjob.jobskills }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Experience </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="jobexp"
						value="${postjob.jobexp }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Qualification</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobqual"
						value="${postjob.jobqual }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Type</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobtype"
						value="${postjob.jobtype }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Salary</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobsal"
						value="${postjob.jobsal }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Job Location</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="jobloc"
						value="${postjob.jobloc }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Contact No</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="contactno"
						value="${postjob.contactno }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Category</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="category"
						value="${postjob.category }" />
				</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Update Job" />
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