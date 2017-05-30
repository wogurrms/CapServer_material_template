<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<div class="container-wrapper">
	<div class="container">
		<h2>It's a nicotine in your body</h2>
		<p class="lead">체내 니코틴양!</p>
		<div class="card-panel">
			<c:set var="a" value="${ (mynicotine / 8 ) * 100}" />
			<div class="progress">
				<div class="progress-bar progress-bar-striped active"
					role="progressbar" aria-valuemin="0" aria-valuemax="80"
					style="width: ${a}%">
					<fmt:formatNumber value="${mynicotine}" pattern=".00" />
					mg
				</div>
			</div>
		</div>
	</div>
</div>
