<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% response.setHeader("Cache-Control","no-cache"); 
/*HTTP 1.1*/ response.setHeader("Pragma","no-cache"); 
/*HTTP 1.0*/ response.setDateHeader ("Expires", 0);
%> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width-device-width, initial-scale=1.0">
<title>SUST Archives</title>
<link href="<c:url value="/resources/css/topbar.css" />"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/jquery.dataTables.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/dataTables.bootstrap.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/thesis-list.css"/>"
	rel="stylesheet" type="text/css" />

<script
	src="<c:url value="/resources/javascript/jquery-1.11.3.min.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/javascript/bootstrap.min.js" />"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/javascript/jquery.dataTables.min.js" />"
	type="text/javascript"></script>
	
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
<div class="row topbar">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div
		class="
                 col-sm-4 col-sm-offset-1
                 col-xs-12">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/sign-in.html">SUST Archives<sup>beta</sup></a>
	</div>
	<div
		class="
                 col-sm-5 col-sm-offset-1
                 col-xs-12">
		<ul class="nav navbar-nav navbar-right">
<%-- 			<li><a href="#">${UserRole.getUserName()}</a></li> --%>
<!-- 			<li><a href="#">Settings</a></li> -->
<li><a href="<c:url value="/sign-in.html"/>">Login Page</a></li>
		</ul>
	</div>
</div>
</nav>
<div class="container">
	<input type="hidden" id="hidden_username" name="username" value=${username}></input>
	<!--  <form method="get" action="publicview">-->
		<!--  <select name="session">
  			<option value="2010">2010</option>
  			<option value="2011">2011</option>
  			<option value="2012">2012</option>
  			<option value="2013">2013</option>
		</select>-->
		<div class="row searchbar">
			<div class="col-xs-8">
			</div>
			<div class="col-xs-2">
				<select id="filter_session" class="form-control">
				
				<option value="2010">2010</option>
  			<option value="2011">2011</option>
  			<option value="2012">2012</option>
  			<option value="2013">2013</option>
				</select>
			</div>
			<div class="col-xs-2">
					<button onclick="go()" id="button_add_task" class="btn btn-success col-xs-12">

							<i class="glyphicon glyphicon-plus-sign"></i> Go
						</button>
			</div>
		</div>
		
		<!-- <input type="submit" value="go"> </input> -->
		
		
	<!-- </form> -->
	<p>Session : ${courseSession} </p>
	<div class="panel">
		<table id="courseTable"
			class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th class="col-md-1 col-sm-1 col-xs-1">ID</th>
					<th class="col-md-3 col-sm-3 col-xs-3">Course Code</th>
					<th class="col-md-2 col-sm-2 col-xs-2">Course Title</th>
					<th class="col-md-2 col-sm-2 col-xs-2">Course Credit</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${courses}" var="courses">
        <tr>
            <td> <c:out value="${courses.getCourseId()}"/></a></td>
            <td>  <a href="${pageContext.request.contextPath}/courseTaskViewReq?courseId=${courses.getCourseId()}"><c:out value="${courses.getCourseTitle()}"/></td><!-- <a href="${pageContext.request.contextPath}/courseTaskViewReq?courseId=${courses.getCourseId()}">-->
            <td><c:out value="${courses.getCredit()}"/></td>
            <td><c:out value="${courses.getCourseCode()}"/></td>
        </tr>
    </c:forEach>
			</tbody>
		</table>
	</div>

	
	</body>
	<script>
	$(document).ready(function(){
	    $('#courseTable').DataTable();
	});
	
	function go(){
		var t = document.getElementById('filter_session').value.toString();
		var jspcall = "publicview?session="+t;
		window.location.href = jspcall;
	}
	</script>
</html>