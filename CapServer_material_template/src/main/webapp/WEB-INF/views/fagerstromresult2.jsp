<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container-wrapper">
	<div class="container">
		<h2>FagerStrom Reult Page</h2>
		<p class="lead">파거스트롬 테스트!</p>
		<div class="card-panel">
			<table class="table centered highlight responsive-table">
				<thead class="success">
					<th style="text-align: center">Nicotine Dependence</th>
					<th style="text-align: center">User Status</th>
					<th style="text-align: center">Grade</th>
				</thead>
				<tr>
					<td align="center">${resultMap.nicotineDependence}</td>
					<td width="300px" align="center">${resultMap.userStatus}</td>
					<c:if test="${resultMap.grade == 1}">
						<td align="center"><img width="100px" height="100px" 
						src="<c:url value="/resources/material/images/emoticon-1.png"/>"></td>
					</c:if>
					<c:if test="${resultMap.grade == 2}">
						<td align="center"><img width="100px" height="100px" 
						src="<c:url value="/resources/material/images/emoticon-2.png"/>"></td>
					</c:if>
					<c:if test="${resultMap.grade == 3}">
						<td align="center"><img width="100px" height="100px"
						src="<c:url value="/resources/material/images/emoticon-3.png"/>"></td>
					</c:if>
					<c:if test="${resultMap.grade == 4}">
						<td align="center"><img width="100px" height="100px"
						src="<c:url value="/resources/material/images/emoticon-4.png"/>"></td>
					</c:if>
					<c:if test="${resultMap.grade == 5}">
						<td align="center"><img width="100px" height="100px"
						src="<c:url value="/resources/material/images/emoticon-5.png"/>"></td>
					</c:if>
				</tr>
			</table>
		</div>
	</div>
</div>

