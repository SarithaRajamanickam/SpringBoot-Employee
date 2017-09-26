<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Person
</h1>

<c:url var="/index/add" value="user/add" ></c:url>

<form:form action="${/index/add}" commandName="user">
<table>
	<c:if test="${!empty user.name}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="city">
				<spring:message text="city"/>
			</form:label>
		</td>
		<td>
			<form:input path="city" />
		</td>
		<td>
			<form:label path="phone">
				<spring:message text="phone"/>
			</form:label>
		</td>
		<td>
			<form:input path="phone" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty user.name}">
				<input type="submit"
					value="<spring:message text="Edit"/>" />
			</c:if>
			<c:if test="${empty user.name}">
				<input type="submit"
					value="<spring:message text="Register"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<h3>Persons List</h3>
<c:if test="${!empty listuser}">
	<table class="tg">
	<tr>
		<th width="80">userID</th>
		<th width="120">user Name</th>
		<th width="120">user city</th>
		<th width="120">user phone</th>	
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listuser}" var="user">
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.city}</td>
			<td>${user.phone}</td>
			<td><a href="<c:url value='/edit/${user.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${user.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>

-->