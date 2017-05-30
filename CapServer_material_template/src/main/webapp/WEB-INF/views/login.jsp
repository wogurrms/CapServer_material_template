<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="login-container-wrapper">
	<div class="login-container">
		<div class="card-panel">
			<img src="<c:url value="/resources/material/images/icon.png"/>"
				width="110px" height="100px" style="margin: 0px 40px">

			<c:if test="${not empty logout}">
				<div>
					<h3 style="color: #80cbc4">${logout}</h3>
				</div>
			</c:if>

			<c:if test="${not empty error}">
				<div>
					<h3 style="color: #ef9a9a">${error}</h3>
				</div>
			</c:if>

			<form action=<c:url value="/login"/> method="post">
				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i> <input
						type="text" id="username" class="validate" name="username"
						placeholder="username" style="width: 30%">
				</div>
				<div class="input-field col s6">
					<i class="material-icons prefix">lock</i> <input type="password"
						id="password" class="validate" name="password"
						placeholder="password" style="width: 30%">
				</div>

				<br> <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<button class="btn waves-effect waves-light" type="submit">
					확인<i class="material-icons right">done</i>
				</button>

			</form>
		</div>
	</div>
</div>
