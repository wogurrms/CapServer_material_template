<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="login-container-wrapper">
	<div class="login-container">
		<h2>Login with Username and Password</h2>

		<c:if test="${not empty logout}">
			<div>
				<h3 style="color: #0000ff">${logout}</h3>
			</div>
		</c:if>

		<c:if test="${not empty error}">
			<div>
				<h3 style="color: #ff0000">${error}</h3>
			</div>
		</c:if>

		<form action=<c:url value="/login"/> method="post">
			<div class="form-group">
				<i class="material-icons prefix">account_circle</i> <input
					type="text" class="form-control" name="username"
					placeholder="username" style="width: 50%">
			</div>
			<div class="form-group">
				<i class="material-icons prefix">lock</i> <input type="password"
					class="form-control" name="password" placeholder="password"
					style="width: 50%">
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <input type="submit" value="확인"
				class="waves-effect waves-light btn">
		</form>
	</div>

	<div class="row">
		<form class="col s12">
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i> <input
						id="icon_prefix" type="text" class="validate"> <label
						for="icon_prefix">First Name</label>
				</div>
				<div class="input-field col s6">
					<i class="material-icons prefix">phone</i> <input
						id="icon_telephone" type="tel" class="validate"> <label
						for="icon_telephone">Telephone</label>
				</div>
			</div>
		</form>
	</div>


</div>
