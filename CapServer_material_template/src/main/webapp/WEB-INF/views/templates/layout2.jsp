<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<!--
  Material Design Lite
  Copyright 2015 Google Inc. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License
-->

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
	href="<c:url value="/resources/material/styles.css"/>">

<script src="<c:url value="/resources/material/material.min.js"/>"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<!-- funkRadio CSS -->
<link href="<c:url value="/resources/css/funkyRadio.css"/>"
	rel="stylesheet">

<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
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
				<span class="android-title mdl-layout-title"> <img
					class="android-logo-image"
					src="<c:url value="/resources/material/images/logo.png"/>">
				</span>
				<!-- Add spacer, to align navigation to the right in desktop -->
				<div class="android-header-spacer mdl-layout-spacer"></div>
				<div
					class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
					<label class="mdl-button mdl-js-button mdl-button--icon"
						for="search-field"> <i class="material-icons">search</i>
					</label>
					<div class="mdl-textfield__expandable-holder">
						<input class="mdl-textfield__input" type="text" id="search-field">
					</div>
				</div>
				<!-- Navigation -->
				<div class="android-navigation-container">
					<nav class="android-navigation mdl-navigation">
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="/resources/material/index.html">home</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="/resources/material/today.html">today</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="/resources/material/ranking.html">ranking</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="<c:url value="/userpage/chartFromRecord"/>">chart</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="/resources/material/nicotine.html">nicotine</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="/resources/material/spend.html">spend</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="/resources/material/calendar.html">calendar</a>
					</nav>
				</div>
				<span class="android-mobile-title mdl-layout-title"> <img
					class="android-logo-image"
					src="<c:url value="/resources/material/images/logo.png"/>">
				</span>
				<button
					class="android-more-button mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect"
					id="more-button">
					<i class="material-icons">person</i>
				</button>
				<ul
					class="mdl-menu mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect"
					for="more-button">
					<li class="mdl-menu__item">Sign in</li>
					<li class="mdl-menu__item">Sign out</li>
				</ul>
			</div>
		</div>

		<div class="android-drawer mdl-layout__drawer">
			<span class="mdl-layout-title"> <img
				class="android-logo-image" src="<c:url value="/resources/material/images/logo-white.png"/>">
			</span>
			<nav class="mdl-navigation">
				<a class="mdl-navigation__link" href="index.html">home</a> <a
					class="mdl-navigation__link" href="today.html">today</a> <a
					class="mdl-navigation__link" href="ranking.html">ranking</a> <a
					class="mdl-navigation__link" href="<c:url value="/userpage/chartFromRecord"/>">chart</a> <a
					class="mdl-navigation__link" href="nicotine.html">nicotine</a> <a
					class="mdl-navigation__link" href="spend.html">spend</a> <a
					class="mdl-navigation__link" href="calendar.html">calendar</a>
			</nav>
		</div>

		<tiles:insertAttribute name="body" />

	</div>


	<a href="#top" id="view-source"
		class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--accent mdl-color-text--accent-contrast">Go
		to Top</a>

</body>
</html>
