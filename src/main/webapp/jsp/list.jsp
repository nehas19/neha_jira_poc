<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean  id="entity" class="com.sample.mvc.model.EmployeeCommand" scope="session"></jsp:useBean>
<jsp:setProperty name="entity" property="*"/> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>
<style type="text/css">
/* Reset body padding and margins */
body { margin:0; padding:0; }
 
/* Make Header Sticky */
#header_container { background:#8AC007;  height:50px; left:0; position:fixed; width:100%; top:0; }
#header{ line-height:40px; margin:0 auto; width:940px; text-align:center;font-weight: bolder;font-size: 30px;color:white;}
 
 .smart-green {
    width: 400px;
    margin-top:200px;
    margin-right: auto;
    margin-left: auto;
    background: #FFF;
    padding: 30px 30px 20px 30px;
    box-shadow: rgba(194, 194, 194, 0.7) 0 3px 10px -1px;
    -webkit-box-shadow: rgba(194, 194, 194, 0.7) 0 3px 10px -1px;
    font: 12px Arial, Helvetica, sans-serif;
    color: #666;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
}
.smart-green h1 {
    font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
    padding: 20px 0px 20px 40px;
    display: block;
    margin: -30px -30px 10px -30px;
    color: #FFF;
    background: #9DC45F;
    text-shadow: 1px 1px 1px #949494;
    border-radius: 5px 5px 0px 0px;
    -webkit-border-radius: 5px 5px 0px 0px;
    -moz-border-radius: 5px 5px 0px 0px;
    border-bottom:1px solid #89AF4C;

}
.smart-green h1>span {
    display: block;
    font-size: 11px;
    color: #FFF;
}

.smart-green label {
    display: block;
    margin: 0px 0px 5px;
}
.smart-green label>span {
    float: left;
    margin-top: 10px;
    color: #5E5E5E;
}
.smart-green td,tr {
    color: #555;
    height:24px;
    width: 96%;
    padding: 3px 3px 3px 10px;
    margin-top: 2px;
    margin-bottom: 16px;
    border: 1px solid #E5E5E5;
    background: #FBFBFB;
    outline: 0;
    -webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
    box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
    font: normal 14px/14px Arial, Helvetica, sans-serif;
}

a:link {color:#9DC45F;}    /* unvisited link */
a:hover {color:#80A24A;}   /* mouse over link */
</style>
</head>
<body>
<div id="header_container">
    <div id="header">
       Employee Management System
    </div>
</div>

<body>
<div class="smart-green" >
 	<h1>Emplyee Details</h1>
<c:if  test="${!empty contactList}">
<table class="data">
<tr>
    <th>Code</th>
    <th>Name</th>
    <th>City</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${contactList}" var="contact">
    <tr>
        <td>${contact.code} </td>
        <td>${contact.name}</td>
        <td>${contact.city}</td>
         <td><a href="edit/${contact.code}">edit</a></td>
        <td><a href="delete/${contact.code}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
<a href="<%=request.getContextPath()%>/home.htm">Back to Main</a>
</div>
</body>
</html>