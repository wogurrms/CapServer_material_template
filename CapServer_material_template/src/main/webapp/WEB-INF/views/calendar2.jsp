<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container-wrapper">
	<div class="container">
		<h2>My Calendar Page</h2>
		<p class="lead">당신의 흡연 달력입니다.</p>

		<div id="calendar">
			<div id="calendar_header">
				<i class="icon-chevron-left"></i>
				<h1></h1>
				<i class="icon-chevron-right"></i>
			</div>
			<div id="calendar_weekdays"></div>
			<div id="calendar_content"></div>
		</div>

	</div>
</div>
