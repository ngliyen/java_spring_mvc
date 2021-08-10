<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Books</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<!-- 	<link rel="stylesheet" href="/css/my_style.css"/> -->
	<!-- For any Bootstrap that uses JS or jQuery-->
	<!-- 	<script src="/webjars/jquery/jquery.min.js"></script> -->
	<!-- 	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script> -->
	<!-- YOUR own local JS -->
	<!-- 	<script src="/js/my_script.js"></script> -->
</head>
<body>
	<p class="text-danger"><c:out value="${error}"></c:out></p>
	<h1>All Books</h1>
	<table>
		<thead>
			<tr>
				<th>Book Id</th>
				<th>Title</th>
				<th>Description</th>
				<th>Language</th>
				<th>Number of Pages</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${books}">
				<tr>
					<td><c:out value="${book.id}"/></td>
					<td><c:out value="${book.title}"/></td>
					<td><c:out value="${book.description}"/></td>
					<td><c:out value="${book.language}"/></td>
					<td><c:out value="${book.numberOfPages}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/books/new">New Book</a>
</body>
</html>