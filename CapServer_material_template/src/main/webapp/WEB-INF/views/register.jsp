<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 객체와 form 의 데이터를 자동으로 맵핑 시켜주는 taglib --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="login-container-wrapper">
	<div class="login-container">
		<div class="card-panel">
			<img src="<c:url value="/resources/material/images/icon.png"/>"
				width="110px" height="100px" style="margin: 0px 40px">

			<%-- modelAttribute 의 이름과 controller 에서 넘겨준 model 로 넘기는 객체의 이름을 동일하게 해야 한다. --%>
			<sf:form action="<c:url value="/register"/>"
				method="post" modelAttribute="user">

				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i>
					<sf:input path="nick" id="nick" class="form-control"
						placeholder="username" style="width: 30%" />
					<sf:errors path="nick" cssStyle="color:#ff0000" />
				</div>


				<div class="input-field col s6">
					<i class="material-icons prefix">lock</i>
					<sf:password path="password" id="password" class="form-control"
						placeholder="password" style="width: 30%" />
					<sf:errors path="password" cssStyle="color:#ff0000" />
				</div>
				<div class="row" align="center">
					<div class="input-field" style="width: 30%">
						<select id="myselect">
							<option value="" disabled selected>Choose your Brand</option>
							<option value="말보로">말보로</option>
							<option value="메비우스">메비우스</option>
							<option value="디스">디스</option>
						</select> <label>담배 브랜드 선택</label>
					</div>
				</div>

				<div class="row" align="center">
					<div class="input-field" style="width: 30%">
						<select id="myselect">
							<option value="" disabled selected>Choose your Tobacco</option>
							<option value="레드">레드</option>
							<option value="미디움">미디움</option>
							<option value="라이트">라이트</option>
							<option value="실버">실버</option>
							<option value="맨솔">맨솔</option>
							<option value="아이스">아이스</option>
						</select> <label>담배 브랜드 선택</label>
					</div>
				</div>
				
				<br>
				<button class="btn" type="submit">
					확인<i class="material-icons right">done</i>
				</button>
				<button class="btn" type="reset">
					리셋<i class="material-icons right">replay</i>
				</button>


			</sf:form>
		</div>
	</div>
</div>