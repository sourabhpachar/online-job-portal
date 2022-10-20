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
  <div>
     <h3>Upload Multiple Files</h3>
     <form id="uploadFiles" name="uploadFiles" method="post" action="uploadFiles" encType="multipart/form-data">
       <input type="file" name="files" multiple required />
       <button type="submit">Submit</button>
     </form>
   </div>
   
   <div>
     <h3>List of Documents</h3>
     <table>
       <thead>
         <tr>
           <th>Id</th><br>
           <th>Name</th><br>
           <th>Download Link</th><br>
         </tr>
       </thead>
       <tbody>
       <c:forEach var="doc" items="${ docs }">
      
           <td >${doc.id}</td>
           <td >${doc.docName}</td>
           <td><a href="/downloadFile?doc.id=${doc.id}">Download</a></td>
		</c:forEach>        
       </tbody>
     </table>
   </div>

<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

</body>

</html>