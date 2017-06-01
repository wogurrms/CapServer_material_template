<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="Introducing Lollipop, a sweet new take on Android.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Android</title>

<!-- Page styles -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"
	rel="stylesheet">
	
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="/resources/material/material.min.css"/>">


	
<link rel="stylesheet"
	href="<c:url value="/resources/material/materialize.css"/>">

<link rel="stylesheet"
	href="<c:url value="/resources/material/styles.css"/>">

<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script src="<c:url value="/resources/material/material.min.js"/>"></script>

<script src="<c:url value="/resources/js/materialize.min.js"/>"></script>

<script src="<c:url value="/resources/js/materialize.js"/>"></script>

<script>

$(document).ready(function() {
  $('select').material_select();
});
$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  

</script>


<style>
#view-source {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
}
</style>
</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

		<div
			class="android-header mdl-layout__header mdl-layout__header--waterfall">
			<div class="mdl-layout__drawer-button">
				<i class="material-icons">menu</i>
			</div>
			<div class="mdl-layout__header-row">
				<span class="android-title mdl-layout-title"> <a
					href="<c:url value="/"/>"><img class="android-logo-image"
						src="<c:url value="/resources/material/images/logo.png"/>"></a>
				</span>
				<!-- Add spacer, to align navigation to the right in desktop -->
				<div class="android-header-spacer mdl-layout-spacer"></div>
<!-- 				<div -->

<!-- 					class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width"> -->
<!-- 					<label class="mdl-button mdl-js-button mdl-button--icon" -->
<!-- 						for="search-field"> <i class="material-icons">search</i> -->
<!-- 					</label> -->
<!-- 					<div class="mdl-textfield__expandable-holder"> -->
<!-- 						<input class="mdl-textfield__input" type="text" id="search-field"> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<!-- Navigation -->
				<div class="android-navigation-container">
					<nav class="android-navigation mdl-navigation">
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/todayamount"/>">today</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/ranking"/>">ranking</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/chartFromRecord"/>">chart</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/mynicotine"/>">nicotine</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/spend"/>">spend</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/fagerstrom"/>">test</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/calendar"/>">calendar</a>
					</nav>
				</div>
				<span class="android-mobile-title mdl-layout-title"> <a
					href="<c:url value="/"/>"><img class="android-logo-image"
						src="<c:url value="/resources/material/images/logo.png"/>"></a>
				</span>
				<button
					class="android-more-button mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect"
					id="more-button">
					<i class="material-icons">person</i>
				</button>
				<ul
					class="mdl-menu mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect"
					for="more-button">
					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<li class="mdl-menu__item"><a href=<c:url value="/login"/>>Sign
								in</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<li class="mdl-menu__item"><a href=<c:url value="/logout"/>>Sign
								out</a></li>
					</c:if>
					<li class="mdl-menu__item"><a href=<c:url value="/register"/>>Sign
							up</a></li>
				</ul>
			</div>
		</div>



		<div class="android-drawer mdl-layout__drawer">
			<span class="mdl-layout-title"> <img
				class="android-logo-image"
				src="<c:url value="/resources/material/images/logo-white.png"/>">
			</span>
			<nav class="mdl-navigation">
				<a class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/todayamount"/>">today</a> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/ranking"/>">ranking</a> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/chartFromRecord"/>">chart</a> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/mynicotine"/>">nicotine</a> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/spend"/>">spend</a> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/fagerstrom"/>">test</a> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="<c:url value="/userpage/calendar"/>">calendar</a>
			</nav>
		</div>
		<div class="android-content mdl-layout__content">

			<a name="top" />
			<tiles:insertAttribute name="body" />

			<tiles:insertAttribute name="footer" />

		</div>
	</div>


	<a href="#top" id="view-source"
		class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--accent mdl-color-text--accent-contrast">Go
		to Top</a>

</body>
</html>
