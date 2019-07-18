<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String ename= request.getAttribute("empname")!=null?(String)request.getAttribute("empname"):"";
%>
<body>
<script type="text/javascript" src="resources/jsFiles/jquery-3.3.1.min.js"></script>
<script>

function clreaForm()
{
	document.getElementById("ename").value ="";
	document.getElementById("sal").value ="";
	document.getElementById("job").value ="";
	$('#ename').val ="";
	
}
$( document ).ready(function() {
	document.getElementById("ename").value ="";
	document.getElementById("sal").value ="";
	document.getElementById("job").value ="";
});
</script>
<form action="asset" onclick="clreaForm()">
		<fieldset><legend>Project Details</legend>
			<table>
				<tr>
					<td>Employee name:</td>
					<td><input type="text" id="ename" name="ename" value='<%=ename %>' placeholder="emp name"></td>
				</tr>
				<tr>
					<td>Employee Sal:</td>
					<td><input type="text" id="sal" name="sal" value='<%=request.getAttribute("salary")%>'></td>
				</tr>
				<tr>
					<td>Job:</td>
					<td><input type="text" id="job" name="job" value='<%=request.getAttribute("job1")%>'></td>
				</tr>
			</table>
		</fieldset>
		<fieldset>
		<table>
			<tr>
				<td><input type="reset" name="clear"></td>
				<td><input type="button" name="clear" onclick="clreaForm()" ></td>
				<td><input type="submit" value="Submit form"></td>
			</tr>	
		</table>
	</fieldset>
	
</form>

</body>
</html>